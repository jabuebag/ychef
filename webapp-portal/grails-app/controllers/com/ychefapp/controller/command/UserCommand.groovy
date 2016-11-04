package com.ychefapp.controller.command

import com.ychefapp.domain.User
import grails.validation.Validateable

/**
 * Created by jabue on 16-03-07.
 */
class UserCommand extends AbstractCommand implements Validateable {

    Long id
    String email
    String username
    String password
    String firstName
    String lastName
    String telephone
    String bio

    User toUser() {
        if (hasErrors()) {
            return null
        }

        User user
        if (id) {
            user = user.findById(id)
        } else {
            user = new User()
        }

        user.email = email
        user.username = username
        user.password = password
        user.firstName = firstName
        user.lastName = lastName
        user.telephone = telephone

        return user
    }

    static constraints = {
        id nullable: true
        email nullable: false
        password nullable: true
        firstName nullable: true
        lastName nullable: true
        telephone nullable: true
        username nullable: true
        bio nullable: true
    }
}
