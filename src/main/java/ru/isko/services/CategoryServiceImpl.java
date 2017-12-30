package ru.isko.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import ru.isko.forms.CategoryForm;
import ru.isko.models.Category;
import ru.isko.models.Image;
import ru.isko.repositories.CategoryRepository;
import ru.isko.repositories.ImageRepository;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * created by Iskander Valiev
 * on 12/19/17
 *
 * @author Iskander Valiev (Kazan Federal University Higher School of Information Technologies and Information Systems)
 * @version 1.0
 */
@Service
public class CategoryServiceImpl implements CategoryService {
    @Autowired
    private CategoryRepository categoryRepository;

    @Autowired
    private ImageRepository imageRepository;

    @Autowired
    private ImageStorageService imageStorageService;

    @Override
    public void addCategory(CategoryForm categoryForm, MultipartFile[] files) {
        Category category = Category.builder()
                .title(categoryForm.getCategoryTitle())
                .build();

        List<String> imagesPath = new ArrayList<>();
        for (MultipartFile file: files) {
            imagesPath.add(imageStorageService.saveFile(file));
        }

        List<Image> images = new ArrayList<>();
        for (String imagePath: imagesPath ) {
            Image image = imageRepository.findOneByStorageFileName(imagePath);
            image.setCategory(category);
            images.add(image);
        }

        category.setImage(images);
        categoryRepository.save(category);
    }
}
