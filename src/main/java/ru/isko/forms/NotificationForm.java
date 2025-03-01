package ru.isko.forms;

import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * created by Iskander Valiev
 * on 1/2/18
 *
 * @author Iskander Valiev (Kazan Federal University Higher School of Information Technologies and Information Systems)
 * @version 1.0
 */
@Data
@NoArgsConstructor
public class NotificationForm {
    private String notificationSubject;
    private String notificationContent;
}
