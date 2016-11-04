package com.ychefapp.web.taglib

import org.grails.plugins.web.taglib.ApplicationTagLib


class UploadResourceTagLib {

    /**
     * Render an img tag with src set to a uploaded image
     * @attr src file path
     * @attr useDefaultPortrait
     */
    def picture = { attrs, body ->
        def src = attrs.src
        def excludes = ['src', 'useDefaultPortrait']
        def attrsAsString = ApplicationTagLib.attrsToString(attrs.findAll { !(it.key in excludes) })
        def imgSrc = (grailsApplication.config.app.default.imageServer ?: request.getContextPath()) + src.encodeAsHTML()
        if (src) {
            out << "<img src=\"${imgSrc}\" ${attrsAsString} />"
        } else {
            out << "<img src=\"\" ${attrsAsString} />"
        }
    }

    def portrait = { attrs, body ->
        String src = attrs.src
        def excludes = ['src', 'useDefaultPortrait']
        def attrsAsString = ApplicationTagLib.attrsToString(attrs.findAll { !(it.key in excludes) })
        if (src && !src.startsWith("http")) {
            def imgSrc = (grailsApplication.config.app.default.imageServer ?: request.getContextPath()) + src.encodeAsHTML()
            out << "<img src=\"${imgSrc}\" ${attrsAsString} />"
        } else {
            out << "<img src=\"\" ${attrsAsString} />"
        }
    }
}
