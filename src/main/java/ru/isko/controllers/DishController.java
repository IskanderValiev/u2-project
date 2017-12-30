package ru.isko.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import ru.isko.forms.AddingDishForm;
import ru.isko.services.AuthenticationService;
import ru.isko.services.DishService;

/**
 * created by Iskander Valiev
 * on 12/9/17
 *
 * @author Iskander Valiev (Kazan Federal University Higher School of Information Technologies and Information Systems)
 * @version 1.0
 */
@Controller
@Deprecated
public class DishController {
    @Autowired
    private DishService dishService;

    @Autowired
    private AuthenticationService authenticationService;

    @PostMapping("/admin/menu/add/dish")
    private String addNewDish(@ModelAttribute("model")ModelMap model, @RequestParam("image")MultipartFile file, AddingDishForm addingDishForm, Authentication authentication) {
        if (authentication != null) {
            model.addAttribute("user", authenticationService.getUserByAuthentication(authentication));
        }
        dishService.addDish(file, addingDishForm);
        return "redirect:/menu";
    }
}
