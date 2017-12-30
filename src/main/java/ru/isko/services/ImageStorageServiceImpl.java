package ru.isko.services;

import lombok.SneakyThrows;
import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import ru.isko.models.Image;
import ru.isko.repositories.ImageRepository;
import ru.isko.utils.ImageStorageUtil;

import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;

/**
 * created by Iskander Valiev
 * on 12/1/17
 *
 * @author Iskander Valiev (Kazan Federal University Higher School of Information Technologies and Information Systems)
 * @version 1.0
 */
@Service
public class ImageStorageServiceImpl implements ImageStorageService {

    @Autowired
    private ImageRepository imageRepository;

    @Autowired
    private ImageStorageUtil imageStorageUtil;

    @Override
    public String saveFile(MultipartFile file) {
        //convert into database object
        Image fileInfo = imageStorageUtil.convertFromMultipart(file);
        //save information about file
        imageRepository.save(fileInfo);
        //move to our disk
        imageStorageUtil.copyToStorage(file, fileInfo.getStorageFileName());
        //return new file name
        return fileInfo.getStorageFileName();
    }

    @SneakyThrows
    @Override
    public void writeFileToResponse(String fileName, HttpServletResponse response) {
        Image file = imageRepository.findOneByStorageFileName(fileName);
        response.setContentType(file.getType());
        //get file input stream
        InputStream inputStream = new FileInputStream(new File(file.getUrl()));
        //copy file to response
        IOUtils.copy(inputStream, response.getOutputStream());
        //flush to buffer
        response.flushBuffer();
    }
}