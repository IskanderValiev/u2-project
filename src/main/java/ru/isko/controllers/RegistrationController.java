package ru.isko.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import ru.isko.forms.UserRegistrationForm;
import ru.isko.models.User;
import ru.isko.services.RegistrationService;
import ru.isko.services.SystemService;

/**
 * created by Iskander Valiev
 * on 12/8/17
 *
 * @author Iskander Valiev (Kazan Federal University Higher School of Information Technologies and Information Systems)
 * @version 1.0
 */
@Controller
public class RegistrationController {

    @Autowired
    private RegistrationService registrationService;

    @Autowired
    private SystemService systemService;

    @PostMapping("/registration")
    public String singUp(UserRegistrationForm userRegistrationForm, BindingResult errors, RedirectAttributes attributes) {
        if (errors.hasErrors()) {
            attributes.addFlashAttribute("error", errors.getAllErrors().get(0).getDefaultMessage());
            System.out.println("Registration status: ERROR <" + errors.getAllErrors().toString() + ">");
            return "redirect:/authorization/enter";
        }
        User user = registrationService.register(userRegistrationForm);
        System.out.println("Registration status: SUCCESS");
        return "redirect:/successful/registration/"+user.getId();
    }

    @GetMapping("/successful/registration/{user-id}")
    public String sendConfirmLink(@PathVariable("user-id")Long id) {
        systemService.sendLink(id);
        return "confirm";
    }
}
