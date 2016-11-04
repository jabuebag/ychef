<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title><g:layoutTitle default="Grails"/></title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <g:set var="pluginDir" value="/static"/>
    <!-- Bootstrap 3.3.5 -->
    <link rel="stylesheet" href="/assets/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- fullCalendar 2.2.5-->
    <link rel="stylesheet" href="${pluginDir}/plugins/fullcalendar/fullcalendar.min.css">
    <link rel="stylesheet" href="${pluginDir}/plugins/fullcalendar/fullcalendar.print.css" media="print">
    <!-- daterange picker -->
    <link rel="stylesheet" href="${pluginDir}/plugins/daterangepicker/daterangepicker-bs3.css">
    <!-- Bootstrap time Picker -->
    <link rel="stylesheet" href="${pluginDir}/plugins/timepicker/bootstrap-timepicker.min.css">
    <!-- jvectormap -->
    <link rel="stylesheet" href="${pluginDir}/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="/assets/AdminLTE.min.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="/assets/skins/_all-skins.min.css">
    <!-- bootstrap wysihtml5 - text editor -->
    <link rel="stylesheet" href="${pluginDir}/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <g:layoutHead/>
</head>
<body class="hold-transition skin-black-light sidebar-mini">
<div class="wrapper">

    <g:render template="/layouts/templates/dashheader"/>
    <!-- Left side column. contains the logo and sidebar -->
    <g:render template="/layouts/templates/sidebar" />

    <g:layoutBody/>

    <g:render template="/layouts/templates/dashfooter" />

</div><!-- ./wrapper -->

<!-- jQuery 2.1.4 -->
<script src="${pluginDir}/plugins/jQuery/jQuery-2.1.4.min.js"></script>
<!-- Bootstrap 3.3.5 -->
<script src="/assets/bootstrap.min.js"></script>
<!-- InputMask -->
<script src="${pluginDir}/plugins/input-mask/jquery.inputmask.js"></script>
<script src="${pluginDir}/plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
<script src="${pluginDir}/plugins/input-mask/jquery.inputmask.extensions.js"></script>
<!-- jquery form validation -->
<script src="${pluginDir}/plugins/form-validator/jquery.form-validator.min.js"></script>
<!-- date-range-picker -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.2/moment.min.js"></script>
<script src="${pluginDir}/plugins/daterangepicker/daterangepicker.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
<!-- FastClick -->
<script src="${pluginDir}/plugins/fastclick/fastclick.min.js"></script>
<!-- AdminLTE App -->
<script src="/assets/app.min.js"></script>
<!-- Sparkline -->
<script src="${pluginDir}/plugins/sparkline/jquery.sparkline.min.js"></script>
<!-- jvectormap -->
<script src="${pluginDir}/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="${pluginDir}/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<!-- SlimScroll 1.3.0 -->
<script src="${pluginDir}/plugins/slimScroll/jquery.slimscroll.min.js"></script>
<!-- ChartJS 1.0.1 -->
<script src="${pluginDir}/plugins/chartjs/Chart.min.js"></script>
<!-- fullCalendar 2.2.5 -->
<script src="${pluginDir}/plugins/fullcalendar/fullcalendar.min.js"></script>
<!-- bootstrap time picker -->
<script src="${pluginDir}/plugins/timepicker/bootstrap-timepicker.min.js"></script>
<!-- Bootstrap WYSIHTML5 -->
<script src="${pluginDir}/plugins/ckeditor/ckeditor.js"></script>
<asset:javascript src="dashboard.js"/>
</body>
</html>