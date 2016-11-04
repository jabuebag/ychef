import com.ychefapp.service.BookingService
import com.ychefapp.service.ImageService
import com.ychefapp.service.StripeService
import com.ychefapp.service.UserService
import com.ychefapp.web.spring.*

// Place your Spring DSL code here
beans = {

    bookingService(BookingService)

    stripeService(StripeService) {
        bookingService = ref('bookingService')
        gst = grailsApplication.config.app.default.gst
    }

    imageService(ImageService) {
        uploadDir = grailsApplication.config.app.default.uploadDir
        uploadFullDir = grailsApplication.config.app.default.uploadFullDir
    }

    authenticationEntryPoint(ExtendLoginEntryPoint, '/login') {
        forceHttps = false
        useForward = true
        portMapper = ref('portMapper')
        portResolver = ref('portResolver')

    }

    authenticationSuccessHandler(AuthSuccessHandler) {
        requestCache = ref('requestCache')
        ajaxSuccessUrl = "/login/ajaxSuccess"
        targetUrlParameter = "targetUrl"
    }

    authenticationFailureHandler(AuthFailureHandler) {
        ajaxAuthenticationFailureUrl = "/login/ajaxFail"
        defaultFailureUrl = "/login"
    }

}
