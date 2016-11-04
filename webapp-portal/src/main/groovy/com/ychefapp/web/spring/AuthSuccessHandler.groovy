package com.ychefapp.web.spring

import grails.plugin.springsecurity.SpringSecurityUtils
import grails.plugin.springsecurity.web.authentication.AjaxAwareAuthenticationSuccessHandler
import org.springframework.security.core.Authentication
import org.springframework.security.web.savedrequest.RequestCache

import javax.servlet.ServletException
import javax.servlet.http.HttpServletRequest
import javax.servlet.http.HttpServletResponse

class AuthSuccessHandler extends AjaxAwareAuthenticationSuccessHandler {

    protected RequestCache requestCache

    @Override
    void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
                                 Authentication authentication) throws ServletException, IOException {

        boolean ajax = SpringSecurityUtils.isAjax(request)

        // GPSPRINGSECURITYCORE-240
        if (ajax) {
            requestCache.removeRequest request, response
        }

        try {
            request.getSession() // create session here if no current session, before any request commit
            if (ajax) {
                clearAuthenticationAttributes request
                request.getRequestDispatcher(ajaxSuccessUrl).forward(request, response)
                //redirectStrategy.sendRedirect request, response, ajaxSuccessUrl
            }
            else {
                super.onAuthenticationSuccess request, response, authentication
            }
        }
        finally {
            // always remove the saved request
            requestCache.removeRequest request, response
        }
    }

    @Override
    void setRequestCache(RequestCache cache) {
        super.setRequestCache cache
        requestCache = cache
    }

}
