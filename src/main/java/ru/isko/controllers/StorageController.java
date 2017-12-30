package ru.isko.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import ru.isko.models.Image;
import ru.isko.repositories.DishRepository;
import ru.isko.repositories.ImageRepository;
import ru.isko.services.ImageStorageService;

import javax.servlet.http.HttpServletResponse;

/**
 * created by Iskander Valiev
 * on 12/10/17
 *
 * @author Iskander Valiev (Kazan Federal University Higher School of Information Technologies and Information Systems)
 * @version 1.0
 */
@Controller
public class StorageController {

    @Autowired
    private ImageStorageService imageStorageService;

    @Autowired
    private ImageRepository imageRepository;

    @Autowired
    private DishRepository dishRepository;

    @PostMapping("/files")
    public ResponseEntity<String> imageUploadHandler(@RequestParam("file")MultipartFile file) {
        String filePath = imageStorageService.saveFile(file);
        return ResponseEntity.ok().body(filePath);
    }

    @GetMapping("/files/{file-name:.+}")
    public void getFile(@PathVariable("file-name") String fileName, HttpServletResponse response) {
        imageStorageService.writeFileToResponse(fileName, response);
    }
}
