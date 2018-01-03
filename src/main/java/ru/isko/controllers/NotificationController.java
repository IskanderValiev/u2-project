package ru.isko.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import ru.isko.forms.NotificationForm;
import ru.isko.services.AuthenticationService;
import ru.isko.services.NotificationService;

/**
 * created by Iskander Valiev
 * on 1/2/18
 *
 * @author Iskander Valiev (Kazan Federal University Higher School of Information Technologies and Information Systems)
 * @version 1.0
 */
@Controller
public class NotificationController {

    @Autowired
    private AuthenticationService authenticationService;

    @Autowired
    private NotificationService notificationService;

    @GetMapping("/admin/notifications")
    public String notificationForm(@ModelAttribute("model")ModelMap model, Authentication authentication) {
        if (authentication != null) {
            model.addAttribute("user", authenticationService.getUserByAuthentication(authentication));
        }
        return "notification";
    }

    @PostMapping("/admin/notification/add")
    public String addNotification(NotificationForm notificationForm) {
        notificationService.send(notificationForm);
        return "redirect:/admin/notifications";
    }
}
