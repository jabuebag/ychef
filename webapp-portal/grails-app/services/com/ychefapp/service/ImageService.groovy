package com.ychefapp.service

import com.ychefapp.domain.Image
import grails.transaction.Transactional

import javax.servlet.http.Part

/**
 * Created by jabue on 16-03-08.
 */
@Transactional
class ImageService {

    String uploadDir
    String uploadFullDir

//    def RELATIVE_PATH = "/static"

    def makeImageFromFileUploaded(Part part) {
        Date now = new Date()
        String imageDir = uploadDir + File.separator + now.getTime() + "." + part.getContentType().split("/")[1]
        String imageFullDir = uploadFullDir + imageDir

        OutputStream imageStream = null
        InputStream inputStream = part.getInputStream();
        imageStream = new FileOutputStream(new File(imageFullDir));


        int read = 0;
        byte[] bytes = new byte[1024]


        try {
            while ((read = inputStream.read(bytes)) != -1) {
                imageStream.write(bytes, 0, read)
            }

            Image image = new Image()
            image.dateUpdated = new Date()
            image.path = imageDir
            return image.save(failOnErrors: true)
        } finally {
            if (imageStream) {
                inputStream.close()
                imageStream.close()
            }
        }
    }
}
