package com.ychefapp.controller.command

import com.stripe.model.Card
import com.stripe.model.Customer
import com.ychefapp.domain.Booking
import com.ychefapp.domain.Listing
import grails.validation.Validateable

class ChargeCommand extends BookingCommand implements Validateable {

    String phoneNo
    String email
    String token
    boolean success = true

    Customer customer
    Card card
    Booking booking
    String message
    Listing listing

    static constraints = {
        phoneNo nullable: true
        email nullable: false
        token nullable: false
        customer nullable: true
        card nullable: true
        booking nullable: true
        message nullable: true
        listing nullable: true
    }
}
