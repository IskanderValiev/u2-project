package ru.isko.forms;

import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * created by Iskander Valiev
 * on 12/6/17
 *
 * @author Iskander Valiev (Kazan Federal University Higher School of Information Technologies and Information Systems)
 * @version 1.0
 */
@Data
@NoArgsConstructor
public class UserRegistrationForm {
    private String regName;
    private String regSurname;
    private String regPhone;
    private String regEmail;
    private String regPassword;
    private boolean regSubscribe;
}
