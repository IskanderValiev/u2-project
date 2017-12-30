package ru.isko.services;

import org.springframework.security.core.Authentication;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletResponse;

public interface ImageStorageService {
    String saveFile(MultipartFile multipartFile);
    void writeFileToResponse(String filename, HttpServletResponse response);
}
