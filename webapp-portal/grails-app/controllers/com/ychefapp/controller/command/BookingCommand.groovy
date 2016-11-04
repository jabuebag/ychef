package com.ychefapp.controller.command

import grails.validation.Validateable

/**
 * Created by jabue on 16-03-07.
 */
class BookingCommand extends AbstractCommand implements Validateable {
    Long id
    String eventId
    String quantity

    static constraints = {
        id nullable: true
        eventId nullable: false
        quantity nullable: true
    }
}
