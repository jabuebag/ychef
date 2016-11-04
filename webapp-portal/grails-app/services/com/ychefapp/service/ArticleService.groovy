package com.ychefapp.service

import com.ychefapp.controller.command.CalendarCommand
import com.ychefapp.domain.Article
import com.ychefapp.domain.ArticleImage
import com.ychefapp.domain.Event
import com.ychefapp.domain.Image
import com.ychefapp.domain.Listing
import grails.transaction.Transactional

/**
 * Created by jabue on 16-03-09.
 */
@Transactional
class ArticleService {

    def updateImages(Article article, List<Long> imageIds) {

        def imagesToDelete = []

        if (article.images.size() == 0) {
            imageIds.each {
                def image = Image.findById(it)
                article.addToImages(new ArticleImage(article, image))
            }
        } else {
            imageIds.each {
                if (!article.images.image.id.contains(it)) {
                    def image = Image.findById(it)
                    article.addToImages(new ArticleImage(article, image))
                }
            }

            article.images.image.id.each { id ->
                if (!imageIds.contains(id)) {
                    def imgToDelete = article.images.find {ai -> ai.image.id == id}
                    imagesToDelete.add(imgToDelete)
                }
            }

            if (!imagesToDelete.isEmpty()) {
                imagesToDelete.each {
                    article.images.remove(it)
                    it.delete()
                }

            }
        }

        return article.save()
    }

}
