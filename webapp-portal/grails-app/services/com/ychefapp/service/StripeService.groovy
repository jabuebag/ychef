package com.ychefapp.service

import com.stripe.model.Card
import com.stripe.model.Charge
import com.stripe.model.Customer
import com.stripe.model.Refund
import com.stripe.net.RequestOptions
import com.ychefapp.domain.Booking
import com.ychefapp.domain.User
import grails.transaction.Transactional

@Transactional
class StripeService {

    def bookingService
    def gst

    def createCustomer(Booking booking, Object source){
        Customer customer = null
        Card card = null

        User user = booking.owner
        if (user.stripeCustomerId) {
            customer = Customer.retrieve(user.stripeCustomerId)
            card = customer.createCard([source: source]);
        } else {
            customer = Customer.create([
                    source     : source,
                    description: "${user.username}",
                    email      : "${booking.email}"
            ])
            card = customer.sources.data.get(0)
        }

        if (customer && card) {
            user.stripeCustomerId = customer.id
            if (user.telephone == null) {
                user.telephone = booking.phoneNo
            }
            user.save()
            bookingService.migrateToAuthorized(booking, card)
        }
    }

    def chargeBooking(Booking booking) {
        User bookingOwner = booking.owner
        Integer chargeAmountInCents = 100 * booking.price * booking.quantity * gst
        RequestOptions options = RequestOptions.builder().setIdempotencyKey("" + booking.code).build()

        Charge charge = Charge.create([
                "amount"     : chargeAmountInCents,
                "currency"   : "cad",
                "source"     : booking.cardId,
                "customer"   : bookingOwner.stripeCustomerId,
                "description": booking.code
        ], options)

        if (!"succeeded".equals(charge.status)) {
            throw new Exception("Failed to charge for booking: ${booking.id}")
        }

        return charge
    }

    def refundBooking(Booking booking) {
        Refund refund = Refund.create([
                "charge": booking.chargeId
        ])

        if (!refund) {
            throw new Exception("Failed to refund for booking: ${booking.id}")
        }

        return refund
    }
}
