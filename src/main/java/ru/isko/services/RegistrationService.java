package ru.isko.services;

import ru.isko.forms.UserRegistrationForm;
import ru.isko.models.User;

public interface RegistrationService {
    User register(UserRegistrationForm userRegistrationForm);
}
