package ru.isko.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import ru.isko.forms.PromotionForm;
import ru.isko.repositories.PromotionRepository;
import ru.isko.services.AuthenticationService;
import ru.isko.services.PromotionService;

/**
 * created by Iskander Valiev
 * on 12/12/17
 *
 * @author Iskander Valiev (Kazan Federal University Higher School of Information Technologies and Information Systems)
 * @version 1.0
 */
@Controller
public class PromotionController {

    @Autowired
    private PromotionRepository promotionRepository;

    @Autowired
    private AuthenticationService authenticationService;

    @Autowired
    private PromotionService promotionService;

    @GetMapping("/promotions")
    public String openPromotionsPage(@ModelAttribute("model")ModelMap model, Authentication authentication) {
        if (authentication != null) {
            model.addAttribute("user", authenticationService.getUserByAuthentication(authentication));
        }
        model.addAttribute("promotions", promotionService.sort(promotionRepository.findAll()));
        return "promotions";
    }

    @GetMapping("/admin/promotions/add")
    public String openPromotionForm(@ModelAttribute("model")ModelMap model, PromotionForm form, Authentication authentication) {
        if (authentication != null) {
            model.addAttribute("user", authenticationService.getUserByAuthentication(authentication));
        }
        return "new_promotion";
    }

    @PostMapping("/admin/promotions/add")
    public String addNewPromotion(@ModelAttribute("model")ModelMap model, @RequestParam("image")MultipartFile file, PromotionForm form, Authentication authentication) {
        if (authentication != null) {
            model.addAttribute("user", authenticationService.getUserByAuthentication(authentication));
        }
        promotionService.addPromotion(file, form);
        return "redirect:/promotions";
    }
}
