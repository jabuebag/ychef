/**
 * Created by jabue on 16-03-18.
 */
/**
 * Created by jabue on 16-03-17.
 */
$(function () {

    var cal_event = null;

    //function sticky_relocate() {
    //    var window_top = $(window).scrollTop();
    //    var div_top = $('#sticky-anchor').offset().top;
    //    if (window_top > div_top) {
    //        $('#sticky').addClass('stick');
    //    } else {
    //        $('#sticky').removeClass('stick');
    //    }
    //}

    //$(window).scroll(sticky_relocate);
    //sticky_relocate();

    /* initialize the external events
     -----------------------------------------------------------------*/
    function ini_events(ele) {
        ele.each(function () {

            // create an Event Object (http://arshaw.com/fullcalendar/docs/event_data/Event_Object/)
            // it doesn't need to have a start or end
            var eventObject = {
                title: $.trim($(this).text()) // use the element's text as the Event title
            };

            // store the Event Object in the DOM element so we can get to it later
            $(this).data('eventObject', eventObject);

            // make the Event draggable using jQuery UI
            $(this).draggable({
                zIndex: 1070,
                revert: true, // will cause the Event to go back to its
                revertDuration: 0  //  original position after the drag
            });

        });
    }
    ini_events($('#external-events div.external-event'));

    /* initialize the calendar
     -----------------------------------------------------------------*/
    //Date for the calendar events (dummy data)
    var date = new Date();
    var d = date.getDate(),
        m = date.getMonth(),
        y = date.getFullYear();
    $('#calendar-portal').fullCalendar({

        height: 450,

        timeFormat: {
            // for agendaWeek and agendaDay do not display time in title
            // time already displayed in the view
            agenda: '',

            // for all other views (19:00 - 20:30)
            '': 'H:mm{ - H:mm}'
        },

        buttonText: {
            today: 'today',
            month: 'month',
            week: 'week',
            day: 'day'
        },
        //Random default events
        events: [
        ],
        editable: false,

        eventRender: function(event, element) {
            if (!event.editable) {
                element.css('cursor', 'pointer');
            }
            $(element).tooltip({title: event.title});
        },

        eventClick: function(event, element) {
            if (cal_event) {
                cal_event.backgroundColor = null;
                cal_event.borderColor = null;
                $("#calendar-portal").fullCalendar('updateEvent', cal_event);
            }
            cal_event = event;
            cal_event.backgroundColor = "#f56954";
            cal_event.borderColor = "#f56954";
            $("#btn-reserve-event").attr("eventId", cal_event._id);
            $("#calendar-portal").fullCalendar('updateEvent', cal_event);
        }
    });

    /* ADDING EVENTS */
    var currColor = "#3c8dbc"; //Red by default
    //Color chooser button
    var colorChooser = $("#color-chooser-btn");
    $("#color-chooser > li > a").click(function (e) {
        e.preventDefault();
        //Save color
        currColor = $(this).css("color");
        //Add color effect to button
        $('#add-new-event').css({"background-color": currColor, "border-color": currColor});
    });
    $("#add-new-event").click(function (e) {
        e.preventDefault();
        //Get value and make sure it is not null
        var val = $("#new-event").val();
        if (val.length == 0) {
            return;
        }

        //Create events
        var event = $("<div />");
        event.css({"background-color": currColor, "border-color": currColor, "color": "#fff"}).addClass("external-event");
        event.html(val);
        $('#external-events').prepend(event);

        //Add draggable funtionality
        ini_events(event);

        //Remove Event from text input
        $("#new-event").val("");
    });
});