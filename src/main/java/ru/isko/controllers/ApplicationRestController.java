package ru.isko.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import ru.isko.comporators.ApplicationComparator;
import ru.isko.models.Application;
import ru.isko.repositories.ApplicationRepository;

import java.util.List;

/**
 * created by Iskander Valiev
 * on 12/22/17
 *
 * @author Iskander Valiev (Kazan Federal University Higher School of Information Technologies and Information Systems)
 * @version 1.0
 */
@RestController
public class ApplicationRestController {

    @Autowired
    private ApplicationRepository applicationRepository;

    @GetMapping("/admin/get/applications")
    public List<Application> getAllApplications() {
        List<Application> applications = applicationRepository.findAll();
        applications.sort(new ApplicationComparator());
        return applications;
    }
}
