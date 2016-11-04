<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Ychef APP | Registration</title>
    <meta name="layout" content="portal"/>
</head>

<body class="hold-transition register-page">
<div class="register-box">
    <div class="register-logo">
        <a href="#"><img src="/assets/logo-253x50.png" alt=""></a>
    </div>

    <div class="register-box-body">
        <p class="login-box-msg">Register a new membership</p>

        <form id="formSignUp"
              action="${createLink(controller: 'user', action: 'newUser')}" method="post" enctype="multipart/form-data"
              role="form">
            <div class="form-group has-feedback">
                <input type="text" name="username" class="form-control" data-validation="required" placeholder="user name">
                <span class="glyphicon glyphicon-user form-control-feedback"></span>
            </div>

            <div class="form-group has-feedback">
                <input type="email" name="email" class="form-control" data-validation="email" placeholder="Email">
                <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
            </div>

            <div class="form-group has-feedback">
                <input type="password" name="password" class="form-control" data-validation="required" placeholder="Password">
                <span class="glyphicon glyphicon-lock form-control-feedback"></span>
            </div>
            %{--<div class="form-group has-feedback">--}%
            %{--<input type="password" class="form-control" placeholder="Retype password">--}%
            %{--<span class="glyphicon glyphicon-log-in form-control-feedback"></span>--}%
            %{--</div>--}%
            <div class="row">
                <div class="col-xs-8">
                    <div class="checkbox icheck">
                        <label>
                            <input type="checkbox" data-validation="required"> I agree to the <a href="#">terms</a>
                        </label>
                    </div>
                </div><!-- /.col -->
                <div class="col-xs-4">
                    <button type="submit" form="formSignUp"
                            class="btn btn-primary btn-block btn-flat">Register</button>
                </div><!-- /.col -->
            </div>
            <span class="msg-error small-text cRed fl-r hide"><i
                    class="ion-android-alert fz12em"></i></span>
        </form>

        <div class="social-auth-links text-center">
            <p>- OR -</p>
            <!-- <a href="#" class="btn btn-block btn-social btn-facebook btn-flat"><i class="fa fa-facebook"></i> Sign up using Facebook</a>
          <a href="#" class="btn btn-block btn-social btn-google btn-flat"><i class="fa fa-google-plus"></i> Sign up using Google+</a> -->
        </div>

        <a href="${createLink(controller: 'login')}" class="text-center">I already have a membership</a>
    </div><!-- /.form-box -->
</div><!-- /.register-box -->
</body>
</html>
