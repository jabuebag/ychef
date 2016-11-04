/**
 * Created by jabue on 16-04-27.
 */
$(function () {

    $.validate({
        form: '#UserBecomeChefForm'
    });

    $("#UserBecomeChefForm").submit(function (event) {
        event.preventDefault();

        var errorAlert = $('#send-fail-alert');
        var successAlert = $('#send-success-alert');
        var form = $(this);

        if( $(this).isValid() ) {
            $.ajax({
                type: "POST",
                url: form.attr('action'),
                data: form.serialize(),
                success: function (response) {
                    if (response.success) {
                        successAlert.removeClass('hide');
                        form[0].reset();
                    }
                    else {
                        errorAlert.removeClass('hide');
                    }
                }
            });
        }

        return false;
    });

});