package com.ychefapp.controller

class CompanyController {

    def terms() {
        render view: '/terms'
    }

    def aboutUs() {
        render view: '/aboutUs'
    }

    def contactUs() {
        render view: '/contactUs'
    }

    def qanda() {
        render view: '/qanda'
    }

    def qa() {
        render view: '/q&a'
    }

    def howUse() {
        render view: '/how2use'
    }
}
