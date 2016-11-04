package com.ychefapp.domain

class Event implements Serializable {

    public enum Status {
        PENDING, SCHEDULED, EXECUTED, CANCELLED, FINISHED;
    }

    String status = Status.PENDING.toString()
    String token
    String title
    Date startDate
    Date endDate
    Date lastUpdated = new Date()
    Date dateCreated = new Date()
    Set<Booking> bookings = new HashSet<>()

    Listing listing

    static mapping = {
        table 'events'
    }

    static belongsTo = [
            listing: Listing
    ]

    static hasMany = [
            bookings: Booking
    ]

    static constraints = {
        title nullable: true
        startDate nullable: true
        endDate nullable: true
        token nullable: true
    }

}
