package com.ychefapp.domain

class User implements Serializable {

    transient springSecurityService

    final static Long ONE_DAY_IN_MILLS = 24 * 60 * 60 * 1000

    public enum CreationMethod {
        NATIVE, FACEBOOK, WECHAT
    }

    public enum Gender {
        UNKNOWN, MALE, FEMALE
    }

    String creationMethod = CreationMethod.NATIVE.toString()
    String email
    String username
    String password
    Boolean autoPassword = false
    String firstName
    String lastName
    String gender = Gender.UNKNOWN.toString()
    String telephone
    String occupation
    String introduction
    Date dateCreated = new Date()
    Date dateLastLogin
    Date lastUpdated
    boolean enabled = true
    boolean accountExpired = false
    boolean accountLocked = false
    boolean passwordExpired = false
    String facebookId
    String wechatId
    Boolean emailVerified = false
    Boolean telephoneVerified = false
    Boolean idVerified = false
    Date pwdResetDate
    String pwdResetHash
    String stripeCustomerId

    Group group

    Set<Authority> authorities
    Set<Booking> bookings
    Image portraitImage

    static hasMany = [
            authorities: Authority,
            bookings:   Booking
    ]

    static mapping = {
        table 'users'
        group column: 'group_id', lazy: false
        authorities joinTable: [
                name  : 'users_authorities',
                key   : 'user_id',
                column: 'authority_id'
        ], lazy: false
        portraitImage column: 'portrait_image_id', lazy: false
    }

    static mappedBy = [
            bookings: 'owner'
    ]

    static constraints = {
        creationMethod nullable: true
        email nullable: true
        username nullable: true
        password nullable: true
        autoPassword blank: false
        firstName nullable: true
        lastName nullable: true
        telephone nullable: true
        occupation nullable: true
        introduction nullable: true
        dateCreated nullable: true
        dateLastLogin nullable: true
        lastUpdated nullable: true
        facebookId nullable: true
        wechatId nullable: true
        portraitImage nullable: true
        pwdResetDate nullable: true
        pwdResetHash nullable: true
        gender nullable: true
        stripeCustomerId nullable: true
    }

    def beforeInsert() {
        encodePassword()
    }

    def beforeUpdate() {
        if (isDirty('password')) {
            encodePassword()
        }
    }


    protected void encodePassword() {
        password = springSecurityService?.passwordEncoder ? springSecurityService.encodePassword(password) : password
    }
}
