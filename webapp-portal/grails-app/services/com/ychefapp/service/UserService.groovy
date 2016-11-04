package com.ychefapp.service

import com.ychefapp.domain.Group
import com.ychefapp.domain.User
import com.stripe.model.Customer
import grails.transaction.Transactional

/**
 * Created by jabue on 16-03-09.
 */
@Transactional
class UserService {

    def registerUser(User user) {
        addUser(user, Group.GroupName.GROUP_GUEST)
    }

    boolean isEmailAddressUnique(String email) {
        return User.findByEmail(email) == null
    }

    private User addUser(User user, Group.GroupName groupName) {
        Group group = Group.findByName(groupName)
        user.group = group
        user.authorities = new HashSet<>()
        user.authorities.addAll(group.authorities)
        return user.save(failOnError: true)
    }
}
