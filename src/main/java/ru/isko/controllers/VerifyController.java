package ru.isko.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import ru.isko.services.VerifyService;

/**
 * created by Iskander Valiev
 * on 12/8/17
 *
 * @author Iskander Valiev (Kazan Federal University Higher School of Information Technologies and Information Systems)
 * @version 1.0
 */
@Controller
public class VerifyController {
    @Autowired
    private VerifyService verifyService;

    @GetMapping("/confirm/account/{user-link}")
    private String verifyUser(@PathVariable("user-link")String link) {
        verifyService.verifyUser(link);
        return "redirect:/authorization/enter";
    }
}
