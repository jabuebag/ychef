/**
 * Created by jabue on 16-03-23.
 */

$(function () {

    // jquery form validation
    $.validate({
        form: '#formSignin'
    });

    $("#formSignin").submit(function (event) {
        event.preventDefault();

        var errorMsg = $('#formSignin .msg-error');
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
                        //alert(response.error);
                        errorMsg.text(response.errorMsg);
                        errorMsg.removeClass('hide');
                    }
                }
            });
        }

        return false;
    });
});
