package ru.isko.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import ru.isko.services.AuthenticationService;

/**
 * created by Iskander Valiev
 * on 12/27/17
 *
 * @author Iskander Valiev (Kazan Federal University Higher School of Information Technologies and Information Systems)
 * @version 1.0
 */
@Controller
public class ProfileController {

    @Autowired
    private AuthenticationService authenticationService;

    @GetMapping("/profile")
    public String openProfilePage(@ModelAttribute("model")ModelMap model, Authentication authentication) {
        if (authentication != null) {
            model.addAttribute("user", authenticationService.getUserByAuthentication(authentication));
            return "profile";
        }
        return "/authorization/enter";
    }
}
