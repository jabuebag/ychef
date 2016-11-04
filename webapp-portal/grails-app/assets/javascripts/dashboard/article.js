/**
 * Created by jabue on 16-05-10.
 */
$(function () {

    $.validate({
        modules: 'file',
        form: '#ArticleCreateForm'
    });

    $("#btn-img-upload").on('click', function () {
        var fileSelector = $("#article-img-selector");
        var imgdata = new FormData();
        var file_data = fileSelector.prop("files")[0];
        if (!file_data) {
            $("#article-image-error-msg").removeClass('hide');
        } else {
            $("#article-image-error-msg").addClass('hide');
            imgdata.append('file', file_data);

            $.ajax({
                type: 'POST',
                processData: false, // important
                contentType: false, // important
                data: imgdata,
                url: "/image/ajaxUpload",
                dataType: 'json',
                success: function (data) {
                    fileSelector.replaceWith(fileSelector.val('').clone(true));
                    $('#article-file-upload-span').text("");
                    if (data.success) {
                        $('#img-show-area').append(data.html);
                        $(".btn-click-remove").on('click', function () {
                            $(this).closest('li').remove();
                        });
                    }
                }
            });
        }
    });

    $(".btn-click-remove").on('click', function () {
        $(this).closest('li').remove();
    });

    $("#btn-article-form-submit").on('click', function (e) {
        e.preventDefault();
        var imageElement = $(".btn-click-remove");
        if (imageElement.length == 0) {
            $("#article-image-error-msg").removeClass('hide');
        } else {
            if ($("#ArticleCreateForm").isValid()) {
                $("#ArticleCreateForm").submit(function (e) {
                    var postData = $(this).serializeArray();
                    var formURL = $(this).attr("action");
                    $.ajax(
                        {
                            url: formURL,
                            type: "POST",
                            data: postData,
                            success: function (data, textStatus, jqXHR) {
                                if(data.success) {
                                    $('#add-article-success-modal').modal('show')
                                } else {
                                    $("#add-article-fail").modal("show");
                                }
                            },
                            error: function (jqXHR, textStatus, errorThrown) {
                                $("#add-article-fail").modal("show");
                            }
                        });
                    e.preventDefault(); //STOP default action
                });
                $("#ArticleCreateForm").submit();
            }
        }
    });

    $('input[name="file"]').change(function () {
        var fileName = $(this).val();
        $('#article-file-upload-span').text(fileName);
    });
});