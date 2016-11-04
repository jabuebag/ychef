package com.ychefapp.domain

class Article implements Serializable {

    String title
    String introduction
    Date dateCreated = new Date()
    Date dateUpdated = new Date()
    User owner;
    Set<ArticleImage> images = new HashSet<>()

    static mapping = {
        table 'articles'
    }

    static belongsTo = [
            owner : User
    ]

    static hasMany = [
            images: ArticleImage
    ]

    static constraints = {
        title nullable: true
        introduction nullable: true
        dateCreated nullable: true
        dateUpdated nullable: true
        owner nullable: true
    }

}
