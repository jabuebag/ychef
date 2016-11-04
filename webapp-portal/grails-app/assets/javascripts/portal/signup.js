/**
 * Created by jabue on 16-03-23.
 */
$(function () {

    $.validate({
        form: '#formSignUp'
    });

    $("#formSignUp").submit(function (event) {
        event.preventDefault();

        var errorMsg = $('.msg-error');
        var form = $(this);

        if( $(this).isValid() ) {
            $.ajax({
                type: "POST",
                url: form.attr('action'),
                data: form.serialize(),
                success: function (response) {
                    if (response.success) {
                        window.location.href = response.targetUrl;
                    }
                    else {
                        errorMsg.text(response.errorMsg);
                        errorMsg.removeClass('hide');
                    }
                }
            });
        }

        return false;
    });
});