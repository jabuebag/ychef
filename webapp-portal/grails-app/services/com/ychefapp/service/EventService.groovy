package com.ychefapp.service

import com.ychefapp.controller.command.CalendarCommand
import com.ychefapp.domain.Event
import com.ychefapp.domain.Group
import com.ychefapp.domain.Listing
import grails.transaction.Transactional

/**
 * Created by jabue on 16-03-09.
 */
@Transactional
class EventService {

    def addEvents(Set<Event> events, Listing listing) {

        def eventsToDelete = []

        events.each {
            if (!listing.events.token.contains(it.token)) {
                listing.addToEvents(it)
            }
        }

        listing.events.each {
            if (!events.token.contains(it.token)) {
                Event event = Event.findByTokenAndListing(it.token, listing)
                eventsToDelete.add(event)
            }
        }

        if (!eventsToDelete.isEmpty()) {
            eventsToDelete.each {
                listing.events.remove(it)
                it.delete()
            }

        }

        return listing.save()
    }

    def getEventsCalendar(Listing listing) {
        def now = new Date()
        def events = []
        if (!listing) {
            return
        }
        listing.events.each {
            if (it.startDate > now) {
                CalendarCommand command = new CalendarCommand()
                command._id = it.token
                command.title = it.title
                command.start = it.startDate.getTime()
                if (it.endDate) {
                    command.end = it.endDate.getTime()
                }
                events.add(command)
            }
        }
        return events
    }

}
