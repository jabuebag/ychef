package com.ychefapp.controller.command

import com.ychefapp.domain.Article
import com.ychefapp.domain.Event
import grails.validation.Validateable
import groovy.json.JsonSlurper

/**
 * Created by jabue on 16-03-07.
 */
class ArticleCommand extends AbstractCommand implements Validateable {

    Long id
    String title
    List<Long> imageId

    String sort = "dateUpdated"
    String order = "desc"

    Article toArticle() {
        if (hasErrors()) {
            return null
        }

        Article article
        if (id) {
            article = Article.findById(id)
        } else {
            article = new Article()
        }

        article.title = title

        return article
    }

    static constraints = {
        id nullable: true
        title nullable: true
    }
}
