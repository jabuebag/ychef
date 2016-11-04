package com.ychefapp.web.spring

import grails.plugin.springsecurity.SpringSecurityUtils
import grails.plugin.springsecurity.web.authentication.AjaxAwareAuthenticationFailureHandler
import org.springframework.security.core.AuthenticationException

import javax.servlet.ServletException
import javax.servlet.http.HttpServletRequest
import javax.servlet.http.HttpServletResponse

class AuthFailureHandler extends AjaxAwareAuthenticationFailureHandler {

    @Override
    void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response,
                                 AuthenticationException exception) throws IOException, ServletException {

        if (SpringSecurityUtils.isAjax(request)) {
            saveException request, exception
            request.getRequestDispatcher(ajaxAuthenticationFailureUrl).forward(request, response)
//            redirectStrategy.sendRedirect request, response, ajaxAuthenticationFailureUrl
        }
        else {
            super.onAuthenticationFailure request, response, exception
        }
    }

}
