package com.ychefapp.web.spring

import org.springframework.security.web.authentication.LoginUrlAuthenticationEntryPoint

import javax.servlet.ServletException
import javax.servlet.http.HttpServletRequest
import javax.servlet.http.HttpServletResponse
import org.springframework.security.core.AuthenticationException

/**
 * Created by Kris on 2016-03-22.
 */
class ExtendLoginEntryPoint extends LoginUrlAuthenticationEntryPoint {

    ExtendLoginEntryPoint(String loginFormUrl) {
        super(loginFormUrl)
    }

    @Override
    protected String determineUrlToUseForThisRequest(HttpServletRequest request, HttpServletResponse response, AuthenticationException e) {
        String forward = request.getForwardURI()
        return loginFormUrl
    }

    @Override
    void commence(HttpServletRequest req, HttpServletResponse res, AuthenticationException e) throws IOException, ServletException {
        if ('true'.equalsIgnoreCase(req.getHeader('nopage'))) {
            res.sendError HttpServletResponse.SC_UNAUTHORIZED
            return
        }

        super.commence req, res, e
    }
}
