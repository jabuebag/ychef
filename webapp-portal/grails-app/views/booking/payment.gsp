<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Ychef APP| payment</title>
    <meta name="layout" content="portal"/>
</head>
<body>

<!-- Page Content -->
<div class="container">
    <div class="row">
        <div class="col-xs-12 col-md-7">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">支付细节 <small>PAYMENT DETAILS</small></h3>

                </div>
                <div class="panel-body">
                    <g:form controller="booking" action="charge" useToken="true" name="formCheckout">
                        <input name="id" value="${command.id}" type="hidden"/>
                        <input name="eventId" value="${command.eventId}" type="hidden"/>
                        <input name="quantity" value="${command.quantity}" type="hidden"/>
                        <input id="stripe-token" name="token" value="" type="hidden"/>
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="form-group">
                                    <label for="cardNumber">信用卡号 <small>Card Number</small></label>
                                    <div class="input-group">
                                        <input type="text" id="card-number" class="form-control" name="cardNumber" placeholder="1234 5678 1234 5678" data-validation="creditcard" data-validation-allowing="visa, mastercard, amex" autofocus data-stripe="number" />
                                        <span class="input-group-addon"><i class="fa fa-credit-card"></i></span>
                                    </div>
                                    <div><img class="col-xs-6" src="http://i76.imgup.net/accepted_c22e0.png"></div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-7 col-md-7">
                                <div class="form-group">
                                    <label for="expMonth">有效时间 <small>Expiration Date</small></label>
                                    <br>
                                    <div class="col-xs-6 col-lg-6 pl-ziro">
                                        <input id="exp-month" type="text" class="form-control" name="expMonth" placeholder="MM" data-validation="custom" data-validation-regexp="^[0-9]{2}$" data-stripe="exp_month" />
                                    </div>
                                    <div class="col-xs-6 col-lg-6 pl-ziro">
                                        <input id="exp-year" type="text" class="form-control" name="expYear" placeholder="YY" data-validation="custom" data-validation-regexp="^[0-9]{2}$" data-stripe="exp_year" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-5 col-md-5 pull-right">
                                <div class="form-group">
                                    <label for="cvCode">安全码 <small>CVV Code</small></label>
                                    <input id="cvc-code" type="password" class="form-control" name="cvCode" placeholder="CV" data-validation="cvv" data-stripe="cvc" />
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="form-group">
                                    <label for="couponCode">邮件地址 <small>Email Address</small></label>
                                    <input type="email" class="form-control" name="email" data-validation="email" value="${user.email}" placeholder="123@123.com"/>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="form-group">
                                    <label id="phoneNo">Phone Number <small>联系电话</small></label>
                                    <input type="phone" class="form-control" name="phoneNo" value="${user.telephone}" placeholder="(123)-123-1234"/>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <button id="btn-payment" class="btn btn-success btn-lg btn-block" type="submit">Submit Payment</button>
                            </div>
                        </div>
                        <div class="row" style="display:none;">
                            <div class="col-xs-12">
                                <p class="payment-errors"></p>
                            </div>
                        </div>
                    </g:form>
                </div>
            </div>
        </div>

        <div class="col-xs-12 col-md-5">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">MENU DETAILS <small>菜单细节</small></h3>
                </div>
                <div class="panel-body">
                    <form role="form" id="payment-form">
                        <div class="row">
                            <div class="col-xs-12">
                                <g:picture class="col-xs-12" src="${listing.coverImage.path}" alt="" />
                                <br>
                                <h4 class="text-center">${listing.title}</h4>
                                <div class="table-responsive col-xs-12">
                                    <br>
                                    <table class="table">
                                        <tbody>
                                        <tr>
                                            <th scope="row"><i class="glyphicon glyphicon-usd"></i></th>
                                            <td><span>单价: $${listing.price} </span></td>
                                        </tr>
                                        <tr>
                                            <th scope="row"><i class="glyphicon glyphicon-user"></i></th>
                                            <td><span>预定人数:${command.quantity}</span></td>
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
