/**
 * Created by jabue on 16-03-10.
 */

$(function () {
    /**
     * fetch calendar data and fill calendar form
     * only fetch when calendar area is ready
     */
    if ($("#calendar-section").is(':visible')) {
        var eventSource
        $.ajax({
            type: "GET",
            url: "/event/fetchEvents/" + $("#btn-calendar").attr("listingId"),
            success: function (data) {
                eventSource = data.events;
                $("#calendar").fullCalendar( 'addEventSource', eventSource )
            }
        });
    }

    /**
     * calendar event submit function
     */
    $("#btn-calendar").click(function () {
        var events = [];
        var caEvents = $('#calendar').fullCalendar('clientEvents');
        if (caEvents&& caEvents.length == 0) {
            $("#calendar-error-msg").removeClass("hide");
            return;
        }
        for (var i = 0; i < caEvents.length; i++) {
            var event = new Object()
            event.token = caEvents[i]._id;
            event.title = caEvents[i].title;
            event.startDate = caEvents[i].start ? (new Date(caEvents[i].start)).getTime() : caEvents[i].start;
            event.endDate = caEvents[i].end ? (new Date(caEvents[i].end)).getTime() : caEvents[i].end;
            events.push(event)
        }

        $.ajax({
            type: "POST",
            data: {"events": JSON.stringify(events)},
            url: "/event/save/" + $("#btn-calendar").attr("listingId"),
            success: function (data) {
                $("#btn-calendar").attr("disabled", true);
                if(data.success) {
                    $('#add-event-success-modal').modal('show')
                    $("#calendar-error-msg").addClass("hide");
                } else {
                    $("#add-event-fail").removeClass("hide");
                }
            }
        });
    });
});