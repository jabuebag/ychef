import com.stripe.Stripe

class BootStrap {

    def grailsApplication

    def init = { servletContext ->
        Stripe.apiKey = grailsApplication.config.app.default.stripePrivateKey
    }
    def destroy = {
    }
}
