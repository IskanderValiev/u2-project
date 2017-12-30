package ru.isko.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import ru.isko.repositories.EventRepository;
import ru.isko.services.AuthenticationService;
import ru.isko.services.EventService;

/**
 * created by Iskander Valiev
 * on 12/6/17
 *
 * @author Iskander Valiev (Kazan Federal University Higher School of Information Technologies and Information Systems)
 * @version 1.0
 */
@Controller
public class HomepageController {
    @Autowired
    private AuthenticationService authenticationService;
    
    @Autowired
    private EventRepository eventRepository;
    
    @Autowired
    private EventService eventService;

    @GetMapping("/")
    public String redirectToHomepage(@ModelAttribute("model")ModelMap model, Authentication authentication) {
        if (authentication != null) {
        }
        return "redirect:/homepage";
    }

    @GetMapping("/homepage")
    public String openHomepage(@ModelAttribute("model")ModelMap model, Authentication authentication) {
        if (authentication != null) {
            model.addAttribute("user", authenticationService.getUserByAuthentication(authentication));
        }
        model.addAttribute("events", eventService.sort(eventRepository.findAllByStatus(false)));
        return "index";
    }
}
