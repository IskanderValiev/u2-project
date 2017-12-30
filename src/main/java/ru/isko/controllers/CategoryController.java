package ru.isko.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import ru.isko.forms.CategoryForm;
import ru.isko.services.AuthenticationService;
import ru.isko.services.CategoryService;

/**
 * created by Iskander Valiev
 * on 12/19/17
 *
 * @author Iskander Valiev (Kazan Federal University Higher School of Information Technologies and Information Systems)
 * @version 1.0
 */
@Controller
public class CategoryController {

    @Autowired
    private AuthenticationService authenticationService;

    @Autowired
    private CategoryService categoryService;

    @PostMapping("/admin/menu/add/category")
    public String addCategory(@ModelAttribute("model")ModelMap model, Authentication authentication, CategoryForm categoryForm, @RequestParam("image")MultipartFile[] files) {
        if (authentication != null) {
            model.addAttribute("user", authenticationService.getUserByAuthentication(authentication));
        }
        categoryService.addCategory(categoryForm, files);
        return "/menu";
    }
}
