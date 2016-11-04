package com.ychefapp.controller

import com.ychefapp.controller.command.CalendarCommand
import com.ychefapp.controller.command.EventCommand
import com.ychefapp.domain.Event
import com.ychefapp.domain.Listing
import grails.converters.JSON
import org.grails.web.json.JSONObject

class EventController {

    def eventService

    def save(EventCommand command) {
        def response
        Listing listing = Listing.findById(params.long('id'))
        def events = command.toEvents()
        if (eventService.addEvents(events, listing)) {
            response = [success: true]
        } else {
            response = [success: false]
        }

        render response as JSON
    }

    def fetchEvents() {
        Listing listing = Listing.findById(params.long('id'))
        def events = eventService.getEventsCalendar(listing)

        JSONObject eventsData = new JSONObject();
        eventsData.put("events", events);
        render eventsData as JSON
    }

    def test() {
        Event event = Event.findById(2)

        render "event save successfully!"
    }

}
