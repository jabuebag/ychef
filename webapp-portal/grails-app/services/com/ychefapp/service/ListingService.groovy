package com.ychefapp.service

import com.ychefapp.controller.command.ListingCommand
import com.ychefapp.domain.Event
import com.ychefapp.domain.Image
import com.ychefapp.domain.Listing
import com.ychefapp.domain.User
import grails.plugin.springsecurity.SpringSecurityService
import grails.transaction.Transactional

/**
 * Created by jabue on 16-03-09.
 */
@Transactional
class ListingService {

    SpringSecurityService springSecurityService

    def saveListing(Listing listing) {
        // here is used to test, get the current user
        User user = springSecurityService.currentUser
        if (user)
            listing.owner = user
        else
            return null
        return listing.save(flush: true)
    }

    def updateListing(ListingCommand command, Image coverImg) {
        Listing listing = Listing.findById(command.id)
        listing.title = command.title
        listing.introduction = command.introduction
        listing.description = command.description
        listing.price = command.price
        listing.quantity = command.quantity
        listing.revDays = command.revDays
        listing.dineService = command.dineService
        listing.cleanService = command.cleanService
        listing.beverageService = command.beverageService
        if (coverImg) {
            listing.coverImage = coverImg
        }

        return listing.save(flush: true)
    }

}
