package com.ychefapp.controller.command

import com.ychefapp.domain.Event
import grails.validation.Validateable
import groovy.json.JsonSlurper

/**
 * Created by jabue on 16-03-07.
 */
class CalendarCommand {
    String _id
    String title
    long start
    long end
}
