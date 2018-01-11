package ru.isko.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import ru.isko.models.Category;
import ru.isko.repositories.CategoryRepository;
import ru.isko.repositories.DishRepository;
import ru.isko.services.AuthenticationService;

/**
 * created by Iskander Valiev
 * on 12/6/17
 *
 * @author Iskander Valiev (Kazan Federal University Higher School of Information Technologies and Information Systems)
 * @version 1.0
 */
@Controller
public class MenuController {

    @Autowired
    private DishRepository dishRepository;

    @Autowired
    private CategoryRepository categoryRepository;

    @Autowired
    private AuthenticationService authenticationService;

    @GetMapping("/menu")
    public String openMenu(@ModelAttribute("model")ModelMap model, Authentication authentication) {
        if (authentication != null) {
            model.addAttribute("user", authenticationService.getUserByAuthentication(authentication));
        }
        return "menu";
    }

    @GetMapping("/menu/{category}")
    public String getDishesByCategory(@ModelAttribute("model")ModelMap model, @PathVariable("category")String category) {
        Category selectedCategory = categoryRepository.findByTitle(category);
        model.addAttribute("dishes", categoryRepository.findByTitle(category));
        return "redirect:/files/"+selectedCategory.getImage().get(0).getStorageFileName();
    }

    @GetMapping("/admin/menu/add")
    public String openAddingDishPage(@ModelAttribute("model")ModelMap model, Authentication authentication) {
        model.addAttribute("user", authenticationService.getUserByAuthentication(authentication));
        return "new_dish";
    }
}
