/**
 * Created by jabue on 16-03-17.
 */
$(function () {

    /**
     * init listing detail fullcalendar events data
     */
    var eventSource
    $.ajax({
        type: "GET",
        url: "/event/fetchEvents/" + $("#btn-reserve-event").attr("listingId"),
        success: function (data) {
            eventSource = data.events;
            $("#calendar-portal").fullCalendar( 'addEventSource', eventSource );
        }
    });

    /**
     * reserve button click events
     */
    $("#btn-reserve-event").click(function(){
        var peopleQuantity = $("#people-quantity").val();
        var eventId = $("#btn-reserve-event").attr("eventId");
        if (!eventId) {
            $("#calendar-reserve-error-msg").removeClass("hide");
            return;
        }
        $.ajax({
            type: "POST",
            data: {"eventId": eventId, "quantity": peopleQuantity},
            url: "/booking/book/" + $("#btn-reserve-event").attr("listingId"),
            success: function(data){
                window.location.href = data.targetUrl;
            }
        });
    });
});