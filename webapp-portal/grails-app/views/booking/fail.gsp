<%--
  Created by IntelliJ IDEA.
  User: jabue
  Date: 16-03-24
  Time: 3:56 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Ychef APP| payment fail</title>
    <meta name="layout" content="portal"/>
</head>
<body>

<!-- Page Content -->
<div class="container">
    <div class="row">
        <div class="col-xs-12 col-md-6 col-md-offset-3">
            <div class="panel panel-danger">
                <div class="panel-heading text-center pd20">
                    <span><i class="glyphicon glyphicon-remove-circle fz60 cRed"></i></span>
                    <h2>系统支付失败.<br><small>Payment Fail</small></h2>
                </div>
                <div class="panel-body">
                    <form role="form" id="payment-form">
                        <div class="row">
                            <div class="col-xs-12">
                                <img class="col-xs-12" src="/assets/testing.png" alt="">
                                <br>
                                <h4 class="text-center">${command.listing.title}</h4>
                                <div class="table-responsive col-xs-12">
                                    <br>
                                    <table class="table">
                                        <tbody>
                                        <tr>
                                            <th scope="row"><i class="glyphicon glyphicon-usd"></i></th>
                                            <td><span>单价: $${command.listing.price}</span></td>
                                        </tr>
                                        <tr>
                                            <th scope="row"><i class="glyphicon glyphicon-user"></i></th>
                                            <td><span>数量:${command.quantity}</span></td>
                                        </tr>
                                        <tr>
                                            <th scope="row"><i class="glyphicon glyphicon-calendar"></i></th>
                                            <td><span>GST:5%</span></td>
                                        </tr>
                                        <tr>
                                            <td colspan="2"><h1 class="cLightRed">TOTAL: $${listing.price * command.quantity.toInteger() * grailsApplication.config.app.default.gst}</h1></td>
                                        </tr>
                                        </tbody>
                                    </table>
                                    <hr>
                                    <a href="${createLink(controller: 'listing', action: 'detailPortal', id: command.listing.id)}" class="btn btn-ghost-r left">重新支付</a> <a href="/" class="btn btn-ghost-r right">返回</a>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
