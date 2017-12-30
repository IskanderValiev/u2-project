package ru.isko.services;


import ru.isko.forms.ApplicationForm;
import ru.isko.models.Application;

public interface ApplicationService {

    void save(ApplicationForm applicationForm);
    void delete(Long id);
    void update(Long id);
    Application find(Long id);
}
