package com.ychefapp.controller

import com.stripe.exception.CardException
import com.stripe.model.Charge
import com.ychefapp.controller.command.BookingCommand
import com.ychefapp.controller.command.ChargeCommand
import com.ychefapp.domain.Booking
import com.ychefapp.domain.Event
import com.ychefapp.domain.Listing
import com.ychefapp.domain.User
import grails.converters.JSON
import grails.plugin.springsecurity.SpringSecurityService
import org.apache.commons.lang.StringUtils

class BookingController {

    def stripeService
    def bookingService
    SpringSecurityService springSecurityService

    def book(BookingCommand command) {
        def response
        if (springSecurityService.isLoggedIn()) {
            response = [success: true, targetUrl: g.createLink(controller: "booking", action: "pay", params: [id: command.id, eventId: command.eventId, quantity: command.quantity])]
        } else {
            response = [success: false, targetUrl: g.createLink(controller: "login")]
        }

        render response as JSON
    }

    def pay(BookingCommand command) {
        // used to test
        User user = springSecurityService.currentUser
        Listing listing = Listing.findById(params.id)
        render view: "payment", model: [listing: listing, user: user, command: command]
    }

    def charge(ChargeCommand command) {
        if (command.hasErrors()) {
            def response
            response = [success: false, message: "遇到了错误，请检查支付信息，谢谢"]
            render response as JSON
            return
        }

        withForm {
            // used to test, before set up spring security.
            User user = springSecurityService.currentUser
            chargePayment(command, user)
            if (command.success) {
                render view: 'confirm', model: [command: command]
            } else {
                render view: 'fail', model: [command: command]
            }
        }.invalidToken {
            render "Something is wrong with stripe!"
        }
    }

    private def chargePayment(ChargeCommand command, User user) {
        Listing listing = Listing.findById(command.id)
        command.listing = listing
        Event event = Event.findById(Long.parseLong(command.eventId))

        Booking booking = bookingService.createBooking(event, listing, user, command.quantity, command.phoneNo, command.email)
        command.booking = booking
        try {
            stripeService.createCustomer(booking, command.token)
            Charge charge = stripeService.chargeBooking(booking)
            bookingService.migrateToCharged(booking, charge)
        }
        catch (CardException cardException) {
            command.success = false
            command.message = "Your Card was Declined"

            StringBuilder errorMessage = new StringBuilder()
            errorMessage.append(cardException.code)
            if (StringUtils.isNotEmpty(cardException.declineCode)) {
                errorMessage.append(": ").append(cardException.declineCode)
            }

            bookingService.migrateToDeclined(booking, errorMessage.toString())
            log.error("Checkout exception: ", cardException)
        }
        catch (Exception e) {
            command.success = false
            command.message = "非常抱歉，在处理您的预订时，我们遇到了错误，不会有任何费用发生。"

            bookingService.migrateToDeclined(booking, e.message)
            log.error("Checkout exception: ", e)
        }

        return command
    }

}