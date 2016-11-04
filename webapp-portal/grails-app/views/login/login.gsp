<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Ychef APP | Log in</title>
    <meta name="layout" content="portal"/>
    <style>
        body { 
            padding-top: 0; 
        }
    </style>
</head>
<body class="hold-transition login-page">
<div style="padding: 100px 0 100px 0; background:url('/assets/login-bg-1920x1280.jpg'); background-repeat:no-repeat;background-size:cover; background-position: center; width: 100%;height: 100%;" >

<div class="login-box bgcWhite" style="border-top: 8px solid #68C7C6;">
    <div class="login-logo mt20 ">
        <a href="#"><img class="center-block img-responsive" width="200px" src="/assets/logo-253x50.png" alt=""></a>
    </div><!-- /.login-logo -->
    <div class="login-box-body">
        <p class="login-box-msg">～ 开始你的厨说之旅 ～</p>
        <form id="formSignin" action="${request.contextPath}/auth/login" class="form form-signin pos-r" name="formSignin"
                method="post" id="formSignin">
            <div class="form-group has-feedback">
                <input type="email" name="username" class="form-control" data-validation="email" placeholder="邮箱">
                <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
                <input type="password" name="password" class="form-control" data-validation="required" placeholder="密码">
                <span class="glyphicon glyphicon-lock form-control-feedback"></span>
            </div>
            <div class="row">
                <div class="col-xs-12">
                            <a class="pull-left" href="${createLink(controller: 'user', action: 'register')}" class="text-center cGreen">注册成为新成员</a>
                            <a href="#" class="pull-right clearfix"><i class="glyphicon glyphicon-question-sign"></i> 忘记密码了</a><br>
                    %{-- <div class="checkbox icheck">
                        <label>
                            <input name="rm" type="checkbox"> 记住我
                        </label>
                    </div> ---}%
                </div><!-- /.col -->
                <div class="space"></div>
                <div class="col-xs-12">
                    <button type="submit" form="formSignin" class="btn btn-success  btn-block">登录</button>
                </div><!-- /.col -->
            </div>
            <span class="msg-error small-text cRed fl-r hide"><i
                    class="ion-android-alert fz12em"></i></span>
        </form>

        <div class="social-auth-links text-center">
            %{--<p>- OR -</p>--}%
            <!-- <a href="#" class="btn btn-block btn-social btn-facebook btn-flat"><i class="fa fa-facebook"></i> Sign in using Facebook</a>
          <a href="#" class="btn btn-block btn-social btn-google btn-flat"><i class="fa fa-google-plus"></i> Sign in using Google+</a> -->
        </div><!-- /.social-auth-links -->

    </div><!-- /.login-box-body -->
</div><!-- /.login-box -->

</div>
</body>
</html>
