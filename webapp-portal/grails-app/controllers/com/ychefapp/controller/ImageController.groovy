package com.ychefapp.controller

import com.ychefapp.domain.Image
import grails.converters.JSON
import org.apache.tomcat.util.http.fileupload.FileUploadException

import javax.servlet.http.Part

class ImageController {

    def imageService

    def ckUpload() {
        String callback = params.int("CKEditorFuncNum")
        Part filePart = request.getPart("upload")
        StringBuilder builder = new StringBuilder();
        builder.append("<script type=\"text/javascript\">").
                append("window.parent.CKEDITOR.tools.callFunction(").
                append(callback).append(",'");


        try {
            Image image = imageService.makeImageFromFileUploaded(filePart)

            if (image) {
                builder.append(image.path).
                        append("','").
                        append("')").
                        append("</script>")
            } else {
                builder.append(",'").
                        append("图片上传错误").
                        append("','')").
                        append("</script>")
            }
        } catch (IOException io) {
            io.printStackTrace()
        } catch (FileUploadException fue) {
            fue.printStackTrace()
        } catch (Exception e) {
            e.printStackTrace()
        }

        render builder.toString()
    }

    def ajaxUpload() {
        def image
        def response = [success: false]
        def imgFile = params.file
        if (imgFile && !imgFile.empty) {
            image = imageService.makeImageFromFileUploaded(imgFile.part)
            response = [success: true, html: g.render(template: '/article/templates/img', model: [image: image])]
        }
        render response as JSON
    }

    def test() {
        render "Sorry, here is test page"
    }

}
