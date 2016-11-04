/**
 * Created by Kris on 2016-03-23.
 */
$(function () {

    // jquery form validation
    $.validate({
        modules : 'file',
        form: '#ListingCreateForm'
    });

    if (document.getElementById('description')) {
        CKEDITOR.replace('description', {
            // fullPage: true,
            // allowedContent: true,
            filebrowserUploadUrl: '/image/ckUpload',
            height: 500
        });
    }

    function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            $('#file-upload-show').removeClass("hide");
            reader.onload = function (e) {
                $('#file-upload-show').attr('src', e.target.result);
            }

            reader.readAsDataURL(input.files[0]);
        }
    }

    $('input[name="file"]').change(function(){
        var fileName = $(this).val();
        readURL(this);
        $('#file-upload-span').text(fileName);
    });
});