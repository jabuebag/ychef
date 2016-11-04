package com.ychefapp.service

import com.stripe.model.Card
import com.stripe.model.Charge
import com.ychefapp.controller.command.CalendarCommand
import com.ychefapp.domain.Booking
import com.ychefapp.domain.Event
import com.ychefapp.domain.Listing
import com.ychefapp.domain.User
import grails.transaction.Transactional

/**
 * Created by jabue on 16-03-09.
 */
@Transactional
class BookingService {

    def createBooking(Event event, Listing listing, User user, String quantity, String phoneNo, String email) {

        Booking booking = new Booking()
        booking.event = event
        booking.price = listing.price
        booking.quantity = Integer.parseInt(quantity)
        booking.owner = user
        booking.phoneNo = phoneNo
        booking.email = email
        booking.save(flush: true, failOnErrors: true)
        return booking
    }

    def migrateToAuthorized(Booking booking, Card card) {
        booking.status = Booking.Status.AUTHORIZED.toString()
        booking.cardId = card.id
        //booking.creditNoLast4 = card.last4
        return booking.save(flush: true)
    }

    def migrateToCharged(Booking booking, Charge charge) {
        booking.status = Booking.Status.CHARGED.toString()
        booking.chargeId = charge.id
        booking.dateCharged = charge.created * 1000L
        return booking.save(flush: true)
    }

    def migrateToDeclined(Booking booking, String declinedMessage) {
        booking.status = Booking.Status.DECLINED.toString()
        booking.message = declinedMessage

        booking.dateDeclined = new Date()
        return booking.save(flush: true)
    }

}
