package ru.isko.services;

import org.springframework.web.multipart.MultipartFile;
import ru.isko.forms.CategoryForm;

import java.util.List;

public interface CategoryService {
    void addCategory(CategoryForm categoryForm, MultipartFile[] files);
}
