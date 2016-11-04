package com.ychefapp.controller

import com.ychefapp.domain.User
import grails.converters.JSON
import grails.plugin.springsecurity.SpringSecurityService
import grails.plugin.springsecurity.SpringSecurityUtils

class LoginController {

    SpringSecurityService springSecurityService

    def index() {
        render view: 'login'
    }

    def ajaxSuccess() {
        def response
        def targetUrl
        if (springSecurityService.isLoggedIn()) {
            User user = springSecurityService.currentUser
            if (SpringSecurityUtils.ifAnyGranted("ROLE_ROOT")) {
                targetUrl = g.createLink(controller: 'listing', action: 'listings')
            } else {
                targetUrl = g.createLink(controller: 'home')
            }
        }
        response = [success: true, targetUrl: targetUrl]
        render response as JSON
    }

    def ajaxFail() {
        def response
        response = [errorMsg: "Wrong username or password, try again！"]
        render response as JSON
    }

}
