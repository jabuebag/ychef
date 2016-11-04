package com.ychefapp.controller.command

import com.ychefapp.domain.Listing
import grails.validation.Validateable

/**
 * Created by jabue on 16-03-07.
 */
class ListingCommand extends AbstractCommand implements Validateable {

    Long id
    String title
    String introduction
    String description
    Double price
    Integer quantity
    Integer revDays
    Integer dineService
    Integer cleanService
    Integer beverageService

    Integer max = 20
    Integer offset = 0

    Listing toListing() {
        if (hasErrors()) {
            return null
        }

        Listing listing
        if (id) {
            listing = Listing.findById(id)
        } else {
            listing = new Listing()
        }

        listing.title = title
        listing.introduction = introduction
        listing.description = description
        listing.price = price
        listing.quantity = quantity
        listing.revDays = revDays
        listing.dineService = dineService
        listing.cleanService = cleanService
        listing.beverageService = beverageService

        return listing
    }

    static constraints = {
        id nullable: true
        title nullable: false
        price nullable: true
        description nullable: true
        quantity nullable: true
        revDays nullable: true
    }
}
