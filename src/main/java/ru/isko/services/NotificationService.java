package ru.isko.services;

import ru.isko.forms.NotificationForm;

public interface NotificationService {
    void send(NotificationForm notificationForm);
}
