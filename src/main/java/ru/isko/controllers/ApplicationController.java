package ru.isko.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import ru.isko.forms.ApplicationForm;
import ru.isko.models.Application;
import ru.isko.repositories.ApplicationRepository;
import ru.isko.services.ApplicationService;
import ru.isko.services.AuthenticationService;

import java.util.List;

/**
 * created by Iskander Valiev
 * on 12/7/17
 *
 * @author Iskander Valiev (Kazan Federal University Higher School of Information Technologies and Information Systems)
 * @version 1.0
 */
@Controller
public class ApplicationController {

    @Autowired
    private AuthenticationService authenticationService;

    @Autowired
    private ApplicationService applicationService;

    @Autowired
    private ApplicationRepository applicationRepository;

    @PostMapping("/submit/application")
    public String submitApplication(ApplicationForm applicationForm) {
        applicationService.save(applicationForm);
        return "redirect:/homepage";
    }

    @GetMapping("/admin/applications")
    public String applications(@ModelAttribute("model")ModelMap model, Authentication authentication) {
        if (authentication != null) {
            model.addAttribute("user", authenticationService.getUserByAuthentication(authentication));
        }
        return "applications";
    }

    @GetMapping("/admin/applications/delete/{app-id}")
    public String deleteApplication(@PathVariable("app-id")Long id) {
        applicationRepository.delete(id);
        return "redirect:/admin/applications";
    }
}
