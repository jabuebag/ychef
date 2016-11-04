package com.ychefapp.domain

class ArticleImage implements Serializable {

    Article article
    Image image

    ArticleImage(Article article, Image image) {
        this.article = article
        this.image = image
    }

    static mapping = {
        table 'articles_images'
        image column: 'image_id', lazy: false
        version false
    }

    static belongsTo = [
            article: Article
    ]

    static constraints = {
        article nullable: false
        image nullable: false
    }

}
