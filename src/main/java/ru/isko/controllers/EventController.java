package ru.isko.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import ru.isko.forms.EventForm;
import ru.isko.models.Event;
import ru.isko.repositories.EventRepository;
import ru.isko.repositories.ImageRepository;
import ru.isko.services.AuthenticationService;
import ru.isko.services.EventService;

/**
 * created by Iskander Valiev
 * on 12/14/17
 *
 * @author Iskander Valiev (Kazan Federal University Higher School of Information Technologies and Information Systems)
 * @version 1.0
 */
@Controller
public class EventController {

    @Autowired
    private AuthenticationService authenticationService;

    @Autowired
    private EventRepository eventRepository;

    @Autowired
    private EventService eventService;

    @Autowired
    private ImageRepository imageRepository;

    @GetMapping("/events")
    public String openEventsPage(@ModelAttribute("model")ModelMap model, Authentication authentication) {
        if (authentication != null) {
            model.addAttribute("user", authenticationService.getUserByAuthentication(authentication));
        }
        model.addAttribute("upcomingEvents", eventService.sort(eventRepository.findAllByStatus(false)));
        model.addAttribute("pastEvents", eventService.sort(eventRepository.findAllByStatus(true)));
        return "events";
    }

    @GetMapping("/admin/events/add")
    public String openAddingEventPage(@ModelAttribute("model")ModelMap model, Authentication authentication) {
        model.addAttribute("user", authenticationService.getUserByAuthentication(authentication));
        return "new_event";
    }

    @PostMapping("/admin/events/add")
    public String addEvent(@ModelAttribute("model")ModelMap model, @RequestParam("image")MultipartFile[] files, EventForm form, Authentication authentication) {
        if (authentication != null) {
            model.addAttribute("user", authenticationService.getUserByAuthentication(authentication));
        }
        eventService.addEvent(form, files);
        return "redirect:/events";
    }

    @GetMapping("/events/{event-id}")
    public String event(@ModelAttribute("model")ModelMap model, @PathVariable("event-id")Long eventID, Authentication authentication) {
        if (authentication != null) {
            model.addAttribute("user", authenticationService.getUserByAuthentication(authentication));
        }
        Event event = eventRepository.findOne(eventID);
        model.addAttribute("event", event);
        model.addAttribute("photos", imageRepository.findAllByEvent(event));
        return "event";
    }

    @GetMapping("/admin/events/delete/{event-id}")
    public String deleteEvent(@PathVariable("event-id")Long id) {
        eventRepository.delete(id);
        return "redirect:/events";
    }
}
