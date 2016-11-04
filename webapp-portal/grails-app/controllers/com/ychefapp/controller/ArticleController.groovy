package com.ychefapp.controller

import com.ychefapp.controller.command.ArticleCommand
import com.ychefapp.domain.Article
import com.ychefapp.domain.ArticleImage
import com.ychefapp.domain.Image
import com.ychefapp.domain.User
import grails.converters.JSON
import grails.plugin.springsecurity.SpringSecurityService

class ArticleController {

    def articleService
    SpringSecurityService springSecurityService

    def portal() {
        def articles = Article.findAll([sort: "dateUpdated",order: "desc"])
        render view: 'portal/articles', model: [articles: articles]
    }

    def articles() {
        def articles = Article.findAll()
        render view: 'dash/articles', model: [articles: articles]
    }

    def create() {
        render view: 'dash/create'
    }

    def edit() {
        def article = Article.findById(params.id)
        render view: 'dash/create', model: [article: article]
    }

    def save(ArticleCommand command) {
        def response = [success: false]
        def article = command.toArticle()
        User user = springSecurityService.currentUser
        if (user) {
            article.owner = user
            if (articleService.updateImages(article, command.imageId)) {
                response = [success: true]
            }
        }
        render response as JSON
    }
}
