<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Ychef APP| contact us</title>
    <meta name="layout" content="portal"/>
</head>
<body>

<div class="jumbotron jumbotron-sm text-center" style="background:url('/assets/contact-us-header.jpg'); background-repeat:no-repeat;background-size:cover;">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-lg-12">
                <h2>联系我们 <br><small>Feel free to contact us</small></h2>
            </div>
        </div>
    </div>
</div>
<!-- Page Content -->
<div class="container">

    <div class="row">
        <div class="col-md-8">
            <div class="well well-sm pd20">
                <img class="img-responsive" src="/assets/logo-253x50.png"  alt=""><br>
                <form>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="name">
                                    您的名字</label>
                                <div class="input-group">
                                    <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span>
                                    </span>
                                    <input type="text" class="form-control" id="name" placeholder="您的名字" required="required" /></div>

                            </div>
                            <div class="form-group">
                                <label for="email">
                                    邮箱地址</label>
                                <div class="input-group">
                                    <span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span>
                                    </span>
                                    <input type="email" class="form-control" id="email" placeholder="邮箱地址" required="required" /></div>
                            </div>
                            <div class="form-group">
                                <label for="subject">主题</label>
                                <select id="subject" name="subject" class="form-control" required="required">
                                    <option value="na" selected="">选择服务:</option>
                                    <option value="service">客服服务</option>
                                    <option value="suggestions">产品建议</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="name">
                                    其他信息</label>
                                <textarea name="message" id="message" class="form-control" rows="9" cols="25" required="required"
                                          placeholder="其他信息"></textarea>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <button type="submit" class="btn btn-primary pull-right" id="btnContactUs">
                                提交信息</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <div class="col-md-4">
            <form>
                <legend><span class="glyphicon glyphicon-globe"></span> 办公地点</legend>
                <div>
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2604.1315335244403!2d-123.01094568431154!3d49.254952779328356!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x548676df623d5ff7%3A0xdee0094a04e61c90!2s4299+Canada+Way+%23134%2C+Burnaby%2C+BC+V5G!5e0!3m2!1sen!2sca!4v1458860173917" width=100% height="150" frameborder="0" style="border:0" allowfullscreen></iframe>
                </div>
                <br>
                <address>
                    <strong>Ychef, 厨说.</strong><br>
                    #134 – 4299 Canada Way<br>
                    Burnaby, BC, V5G 4Y2<br>
                    <abbr title="Phone">
                        P:</abbr>
                    (855)688-5777
                </address>
                <address>
                    <strong>Ychef 团队</strong><br>
                    <a href="mailto:#">Ychef@ybagapp.com</a>
                </address>
            </form>

        </div>
    </div>
    <hr class="featurette-divider">
</div>
</body>
</html>
