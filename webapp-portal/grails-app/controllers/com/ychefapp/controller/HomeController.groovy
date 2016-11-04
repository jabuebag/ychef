package com.ychefapp.controller

import com.ychefapp.domain.Listing

class HomeController {

    def index() {
        def listings = Listing.findAll([max: 10, order: "desc"])
        render view: 'home', model: [listings: listings]
    }

}
