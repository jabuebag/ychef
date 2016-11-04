package com.ychefapp.domain

class Booking implements Serializable {

    public enum Status {
        CREATED(8),
        AUTHORIZED(1),
        CHARGED(2),
        DECLINED(3),
        REJECTED(4),
        CANCELLED(5),
        REFUNDED(6),
        EXPIRED(7);

        Integer displayOrder

        Status(Integer displayOrder) {
            this.displayOrder = displayOrder
        }
    }

    String status = Status.CREATED.toString();
    Double price
    Integer quantity
    Long code
    String message
    String phoneNo
    String cardId
    Date dateCreated
    Date dateUpdated
    Long dateCharged
    Date dateCancelled
    Date dateRefunded
    Date dateDeclined
    String chargeId
    String refundId
    String email

    Event event
    User owner
    User updatedBy

    Booking() {
        UUID uuid = UUID.randomUUID()
        code = Math.abs(uuid.leastSignificantBits)
    }

    static mapping = {
        table 'bookings'
        updatedBy column: 'updated_by'
    }

    static belongsTo = [
            event    : Event,
            owner    : User,
            updatedBy: User
    ]

    static constraints = {
        updatedBy nullable: true
        dateUpdated nullable: true
        message nullable: true
        cardId nullable: true
        dateCharged nullable: true
        chargeId nullable: true
        dateCancelled nullable: true
        dateRefunded nullable: true
        dateDeclined nullable: true
        refundId nullable: true
        phoneNo nullable: true
    }

}
