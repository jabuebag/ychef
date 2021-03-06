<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Ychef APP| 404 Error</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.5 -->
    <link rel="stylesheet" href="/assets/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- jvectormap -->
    <link rel="stylesheet" href="/static/plugins/jvectormap/jquery-jvectormap-1.2.2.css">

    <!-- fullCalendar 2.2.5-->
    <link rel="stylesheet" href="/static/plugins/fullcalendar/fullcalendar.min.css">
    <link rel="stylesheet" href="/static/plugins/fullcalendar/fullcalendar.print.css" media="print">

    <!-- Custom CSS -->
    <link href="/assets/main.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body style="background-color:#ffb481;">
<!-- Navigation -->
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/"><img src="/assets/logo-253x50.png" height="25px" alt=""></a>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">菜单 <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">私人菜单</a></li>
                        <li><a href="#">美食活动</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#">成为主厨</a>
                </li>
                %{--<li>--}%
                    %{--<a href="#">EN｜中文</a>--}%
                %{--</li>--}%
                <li>
                    <a href="${createLink(controller: 'login')}"><i class="glyphicon glyphicon-user"></i></a>
                </li>
                <li>
                    <a href="#"><i class="glyphicon glyphicon-shopping-cart"></i></a>
                </li>
                <li>
                    <a href="#"><i class="glyphicon glyphicon-heart"></i></a>
                </li>
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container -->
</nav>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="error-template">
                <h1>404</h1>
                <h2>亲，遇到错误啦，请返回.</h2>
                <p>Oops! Page Not Found</p>
                <br>
                <div class="error-actions">
                    <a href="index2.html" class="btn btn-ghost-r btn-lg"><span class="glyphicon glyphicon-home"></span>
                        返回主页 </a>
                    <a href="contact-us.html" class="btn btn-ghost-r btn-lg"><span class="glyphicon glyphicon-envelope"></span> 联系我们</a>
                </div>
            </div>

        </div>

    </div>
</div>
<img class="img-responsive right" src="/assets/404.gif" style="margin-top:-145px;" alt="">

<!-- jQuery 2.1.4 -->
<script src="/static/plugins/jQuery/jQuery-2.1.4.min.js"></script>
<!-- Bootstrap 3.3.5 -->
<script src="/assets/bootstrap.min.js"></script>
<!-- fullCalendar 2.2.5 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.2/moment.min.js"></script>
<script src="/static/plugins/fullcalendar/fullcalendar.min.js"></script>
<script type="text/javascript">
</script>
</body>
</html>
