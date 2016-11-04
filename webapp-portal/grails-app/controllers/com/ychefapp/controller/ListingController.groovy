package com.ychefapp.controller

import com.ychefapp.controller.command.ListingCommand
import com.ychefapp.domain.Listing
import com.ychefapp.domain.User
import grails.plugin.springsecurity.SpringSecurityService

class ListingController {

    def imageService
    def listingService
    SpringSecurityService springSecurityService

    def create() {
        render view: 'dash/create'
    }

    def save(ListingCommand command) {
        Listing listing = command.toListing()
        def imgFile = params.file
        if (!imgFile.empty) {
            listing.coverImage = imageService.makeImageFromFileUploaded(imgFile.part)
        }

        if (!listingService.saveListing(listing))
            flash.message = "fail"

        render view: 'dash/calendar', model: [listing: listing]
    }

    def edit() {
        Listing listing = Listing.findById(params.long('id'))
        render view: 'dash/create', model: [listing: listing]
    }

    def update(ListingCommand command) {
        def imgFile = params.file
        def coverImg
        if (!imgFile.empty) {
            coverImg = imageService.makeImageFromFileUploaded(imgFile.part)
        }
        Listing listing = listingService.updateListing(command, coverImg)
        if (!listing) {
            flash.message = "fail"
        }
        render view: 'dash/calendar', model: [listing: listing]
    }

    def preview() {
        def disabled = true
        User user = springSecurityService.currentUser
        Listing listing = Listing.findById(params.long('id'))
        if (user && user.id == listing.owner.id) {
            render view: 'portal/detail-portal', model: [listing: listing, disabled:disabled]
        } else {
            render view: '/notFound'
        }

    }

    def listings(ListingCommand command) {
        def listings = Listing.findAll([max: command.max, offset: command.offset])
        render view: 'dash/listings', model: [listings: listings]
    }

    def detailDash() {
        Listing listing = Listing.findById(params.long('id'))
        render view: 'dash/detail-dash', model: [listing: listing]
    }

    def detailPortal() {
        Listing listing = Listing.findById(params.long('id'))
        render view: 'portal/detail-portal', model: [listing: listing]
    }

    def delete() {
        Listing listing = Listing.findById(params.long('id'))
        listing.delete(flush: true)
        redirect action: 'listings'
    }

    def search() {
        def listings = Listing.findAll([order: "desc"])
        render view: 'portal/searchResult', model: [listings: listings]
    }

    def test() {
        render view: 'dash/calendar'
    }

}
