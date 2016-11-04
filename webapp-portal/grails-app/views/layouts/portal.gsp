<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="icon" href="/assets/favicon.png">
    %{--<title><g:layoutTitle default="Grails"/></title>--}%
    <title>Ychef厨说</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.5 -->
    <link rel="stylesheet" href="/assets/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- ekko-lightbox -->
    <link rel="stylesheet" href="/static/plugins/ekko-lightbox/ekko-lightbox.css" >
    <link rel="stylesheet" href="/static/plugins/ekko-lightbox/ekko-dark-theme.css" >
    <!-- jvectormap -->
    <link rel="stylesheet" href="/static/plugins/jvectormap/jquery-jvectormap-1.2.2.css">

    <!-- fullCalendar 2.2.5-->
    <link rel="stylesheet" href="/static/plugins/fullcalendar/fullcalendar.min.css">
    <link rel="stylesheet" href="/static/plugins/fullcalendar/fullcalendar.print.css" media="print">
    <!-- iCheck -->
    <link rel="stylesheet" href="/static/plugins/iCheck/square/blue.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="/assets/AdminLTE.min.css">
    <!-- odometer -->
    <link rel="stylesheet" href="/assets/animate.css" />
    <!-- Custom CSS -->
    <link href="/assets/main.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <g:layoutHead/>
</head>
<body>
<g:render template="/layouts/templates/portalheader"/>

<g:layoutBody/>

<g:render template="/layouts/templates/portalfooter" />

<!-- jQuery 2.1.4 -->
<script src="/static/plugins/jQuery/jQuery-2.1.4.min.js"></script>
<!-- jquery form validation -->
<script src="/static/plugins/form-validator/jquery.form-validator.min.js"></script>
<!-- Bootstrap 3.3.5 -->
<script src="/assets/bootstrap.min.js"></script>
<!-- fullCalendar 2.2.5 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.2/moment.min.js"></script>
<script src="/static/plugins/fullcalendar/fullcalendar.min.js"></script>
<!-- iCheck -->
<script src="/static/plugins/iCheck/icheck.min.js"></script>
<script type="text/javascript" src="https://js.stripe.com/v2/"></script>
<!-- countTo.js -->
<script src="/static/plugins/effects/jquery.countTo.js"></script>
<!-- inview.js -->
<script src="/static/plugins/effects/jquery.inview.min.js"></script>
<!-- wow.js -->
<script src="/static/plugins/effects/wow.min.js"></script>
<script src="/static/plugins/ekko-lightbox/ekko-lightbox.js"></script>
<script type="text/javascript">
    $(document).ready(function ($) {
        // Delegate calls to data-toggle="lightbox"
        $(document).delegate('*[data-toggle="lightbox"]', 'click', function(event) {
            event.preventDefault();
            return $(this).ekkoLightbox({
                scale_height:true,
                always_show_close: true
            });
        });

        var lightboxOnResize = function lightboxOnResize() {
            if ($(window).width() < 960) {
                $('a[rel=lightbox]').attr('data-toggle', '');
                $('a[rel=lightbox]').attr('disabled', 'disabled').on("click", function() {
                    return false;
                });
            } else {
                $('a[rel="lightbox"]').attr('data-toggle', 'lightbox');
                $('a[rel=lightbox]').removeAttr("disabled").off("click");
            }
        }

        $(document).ready(lightboxOnResize);
        $(window).resize(lightboxOnResize);

    });
</script>
<g:javascript>
    Stripe.setPublishableKey("${grailsApplication.config.app.default.stripePublicKey}");
</g:javascript>
<script>
    $(function () {
        $('input').iCheck({
            checkboxClass: 'icheckbox_square-blue',
            radioClass: 'iradio_square-blue',
            increaseArea: '20%' // optional
        });
    });

    // WOW.js initialise
    // WOW.js uses animate.css to animate/reveal elements.
    // Browse the list of animation effects available here-> https://daneden.github.io/animate.css/
    $(function() {
        wow = new WOW(
                {
                    boxClass:     'wow',      // default
                    animateClass: 'animated', // default
                    offset:       0,          // default
                    mobile:       true,       // default
                    live:         true        // default
                }
        )
        wow.init();
    });

    $('.counter-section').on('inview', function(event, visible, visiblePartX, visiblePartY) {
        if (visible) {
            $(this).find('.timer').each(function() {
                var $this = $(this);
                $({
                    Counter: 0
                }).animate({
                    Counter: $this.text()
                }, {
                    duration: 2000,
                    easing: 'swing',
                    step: function() {
                        $this.text(Math.ceil(this.Counter));
                    }
                });
            });
            $(this).off('inview');
        }
    });

    $('.carousel').carousel({
        interval: 5000 //changes the speed
    });

    $('#custom_carousel').on('slide.bs.carousel', function (evt) {
        $('#custom_carousel .controls li.active').removeClass('active');
        $('#custom_carousel .controls li:eq('+$(evt.relatedTarget).index()+')').addClass('active');
    })
    
</script>
<asset:javascript src="portal.js"/>
</body>
</html>

