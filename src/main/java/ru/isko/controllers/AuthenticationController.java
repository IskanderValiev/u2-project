package ru.isko.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import ru.isko.services.AuthenticationService;

import javax.servlet.http.HttpServletRequest;
import java.util.Optional;

/**
 * created by Iskander Valiev
 * on 12/6/17
 *
 * @author Iskander Valiev (Kazan Federal University Higher School of Information Technologies and Information Systems)
 * @version 1.0
 */
@Controller
public class AuthenticationController {

    @Autowired
    private AuthenticationService authenticationService;

    @GetMapping("/authorization/enter")
    public String login(@ModelAttribute("model")ModelMap model, Authentication authentication, @RequestParam Optional<String> error) {
        if (authentication != null) {
            model.addAttribute("user", authenticationService.getUserByAuthentication(authentication));
            System.out.println(authenticationService.getUserByAuthentication(authentication).toString());
            return "redirect:/homepage";
        }
        model.addAttribute("error", error);
        System.out.println(error);
        return "authorization";
    }

    @GetMapping("/exit")
    public String logout(HttpServletRequest request, Authentication authentication) {
        if (authentication != null) {
            request.getSession().invalidate();
        }
        return "index";
    }
}
