

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(controller: "home")
        "/about-us"(controller: 'company', action: 'aboutUs')
        "/contact-us"(controller: 'company', action: 'contactUs')
        "/terms"(controller: 'company', action: 'terms')
        "/qa"(controller: 'company', action: 'qa')
        "/how2use"(controller: 'company', action: 'howUse')
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
