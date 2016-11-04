<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Ychef APP | Registration</title>
    <meta name="layout" content="portal"/>
</head>

<body class="hold-transition register-page">

<div class="jumbotron jumbotron-sm text-center"
     style="background:url('/assets/become-chef-header.jpg'); background-repeat:no-repeat;background-size:cover;">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-lg-12">
                <h2>Become A Chef <br><small>成为主厨</small></h2>
            </div>
        </div>
    </div>
</div>
<!-- Page Content -->
<div class="container">

    <div class="row">
        <div class="col-md-12">
            <div class="well well-sm pd20">
                <img class="img-responsive" src="/assets/logo-253x50.png" alt=""><br>

                <p class="lead">Send us a message if you are interested in becoming a chef.</p>
                <br>

                <form id="UserBecomeChefForm"
                      action="${createLink(controller: 'user', action: 'sendChefMsg')}" method="post"
                      enctype="multipart/form-data" role="form">
                    <div class="row">
                        <div class="col-md-6">

                            <div class="form-group ">
                                <label for="Firstname">First Name :</label>
                                <input type="text" name="firstName" class="form-control" data-validation="required" id="Firstname" placeholder="First Name"/>
                            </div>

                            <div class="form-group">
                                <label for="Lastname">Last Name :</label>
                                <input type="text" name="lastName" class="form-control" data-validation="required" id="Lastname" placeholder="Last Name"/>
                            </div>

                            <div class="form-group">
                                <label for="email">Email Address :</label>

                                <div class="input-group">
                                    <span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span>
                                    </span>
                                    <input type="email" name="email" class="form-control" data-validation="email" id="email" placeholder="Email"/></div>
                            </div>

                            <div class="form-group">
                                <label for="phone">Phone Number :</label>

                                <div class="input-group">
                                    <span class="input-group-addon"><span class="glyphicon glyphicon-phone"></span>
                                    </span>
                                    <input type="phone" name="telephone" class="form-control" data-validation="custom" data-validation-regexp="^[0-9]{10}$" id="phone" placeholder="123-123-1234"/></div>
                            </div>

                        </div>

                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="name">
                                    Bio :</label>
                                <textarea name="bio" id="message" class="form-control" rows="9" cols="25"
                                          placeholder="Personl Bio"></textarea>
                            </div>

                        </div>

                        <div class="col-md-12">
                            <button type="submit" form="UserBecomeChefForm" class="btn btn-success pull-right" style="margin-left:5px;"
                                    id="btnContactUs">Send</button>
                            <button type="reset" class="btn btn-danger pull-right">Reset</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <div id="send-success-alert" class="alert alert-success hide" role="alert">Send successfully, we will contact you soon!</div>
    <div id="send-fail-alert" class="alert alert-danger hide" role="alert">Something goes wrong, please send again.</div>
    <hr class="featurette-divider">
</div>

</body>
</html>
