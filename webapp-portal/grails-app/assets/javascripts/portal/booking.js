/**
 * Created by jabue on 16-03-21.
 */
$(function () {

    // jquery form validation
    $.validate({
        modules : 'security',
        form: '#formCheckout'
    });

    function tokenResponseHandler(status, response) {
        if (response.error) {
            alert("非常抱歉，我们无法确认您的信用卡。");
            //$formCheckout.find('.errors').text('非常抱歉，我们无法确认您的信用卡。');
            //$formCheckout.find('button').prop('disabled', false);
        } else {
            var token = response.id;
            $("#stripe-token").val(token);
            $("#formCheckout").get(0).submit();
            //$formCheckout.append($('<input type="hidden" name="token" />').val(token));
            //$formCheckout.append($('<input type="hidden" name="phoneNo" />').val(unformatPhoneNo($phoneNo.val())));
            //$formCheckout.get(0).submit();
        }
    }

    function getToken() {
        Stripe.card.createToken({
            number: $("#card-number").val(),
            cvc: $("#cvc-code").val(),
            exp_month: $("#exp-month").val(),
            exp_year: $("#exp-year").val()
        }, tokenResponseHandler);
    }

    $("#btn-payment").click(function(event){
        event.preventDefault();
        if( $("#formCheckout").isValid() ) {
            getToken();
        }
    });

});

