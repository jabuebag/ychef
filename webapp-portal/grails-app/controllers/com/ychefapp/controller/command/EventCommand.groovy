package com.ychefapp.controller.command

import com.ychefapp.domain.Event
import grails.validation.Validateable
import groovy.json.JsonSlurper

/**
 * Created by jabue on 16-03-07.
 */
class EventCommand extends AbstractCommand implements Validateable {

    Long id
    String events

    Set<Event> toEvents() {
        Set<Event> eventObjs = new HashSet<Event>();
        def eventList = new JsonSlurper().parseText(events)
        eventList.each {
            Event event = new Event()
            event.token = it.token
            event.title = it.title
            event.startDate = it.startDate ? (new Date(it.startDate)) : it.startDate
            event.endDate = it.endDate ? (new Date(it.endDate)) : it.endDate
            eventObjs.add(event)
        }
        return eventObjs
    }

    static constraints = {
        events nullable: true
    }
}
