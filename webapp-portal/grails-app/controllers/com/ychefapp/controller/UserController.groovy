package com.ychefapp.controller

import com.ychefapp.controller.command.UserCommand
import com.ychefapp.domain.Group
import com.ychefapp.domain.Image
import com.ychefapp.domain.User
import grails.converters.JSON
import grails.core.GrailsApplication

class UserController {

    def imageService
    def mailService
    def userService
    GrailsApplication grailsApplication

    def becomeChef() {
        render view: 'becomeChef'
    }

    def register() {
        render view: 'register'
    }

    def login() {
        render view: 'login'
    }

    def sendChefMsg(UserCommand command) {
        def response
        mailService.sendMail {
            async true
            from command.email
            to grailsApplication.config.app.default.email.admin
            replyTo command.email
            subject "I want to be a Chef"
            html g.render(template: "/email/becomeChefTemp", model: [command: command])
        }

        response = [success: true]

        render response as JSON
    }

    def newUser(UserCommand command) {
        def response
        if (!userService.isEmailAddressUnique(command.email)) {
            response = [errorMsg: "Email has been registered, change another one please!"]
            render response as JSON
            return
        }

        def user = userService.registerUser(command.toUser())
        if (user) {
            forward controller: 'auth', action: 'login', params: [username: command.email, password: command.password]
        } else {
            response = [errorMsg: "Wrong username or password, try again！"]
            render response as JSON
        }
    }

    def emailValidate() {
        def email = params.email
        def response
        response = [valid: false, message: "Email has been registered, change another one please."]
        render response as JSON
    }

    def test(UserCommand command) {
        render "test"
    }

}
