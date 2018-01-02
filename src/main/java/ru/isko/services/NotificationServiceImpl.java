package ru.isko.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.isko.forms.NotificationForm;
import ru.isko.models.User;
import ru.isko.repositories.UserRepository;

import java.util.List;

/**
 * created by Iskander Valiev
 * on 1/2/18
 *
 * @author Iskander Valiev (Kazan Federal University Higher School of Information Technologies and Information Systems)
 * @version 1.0
 */
@Service
public class NotificationServiceImpl implements NotificationService {

    @Autowired
    private EmailService emailService;

    @Autowired
    private UserRepository userRepository;

    @Override
    public void send(NotificationForm notificationForm) {
        List<User> subscribedUsers = userRepository.findAllBySubscribe(true);
        for (User user : subscribedUsers) {
            emailService.sendMail(notificationForm.getNotificationContent(), notificationForm.getNotificationContent(), user.getEmail());
        }
    }
}
