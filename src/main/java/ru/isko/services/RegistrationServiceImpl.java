package ru.isko.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import ru.isko.forms.UserRegistrationForm;
import ru.isko.models.User;
import ru.isko.repositories.UserRepository;
import ru.isko.security.role.Role;
import ru.isko.security.state.State;
import ru.isko.utils.HashLinkGenerator;

/**
 * created by Iskander Valiev
 * on 12/7/17
 *
 * @author Iskander Valiev (Kazan Federal University Higher School of Information Technologies and Information Systems)
 * @version 1.0
 */
@Service
public class RegistrationServiceImpl implements RegistrationService {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private HashLinkGenerator generator;

    private final PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();

    @Override
    public User register(UserRegistrationForm userRegistrationForm) {
        User user = User.builder()
                .name(userRegistrationForm.getRegName())
                .surname(userRegistrationForm.getRegSurname())
                .email(userRegistrationForm.getRegEmail())
                .password(passwordEncoder.encode(userRegistrationForm.getRegPassword()))
                .phone(userRegistrationForm.getRegPhone())
                .subscribe(userRegistrationForm.isRegSubscribe())
                .role(Role.USER)
                .state(State.NOT_CONFIRMED)
                .hashLink(generator.generate())
                .build();
        userRepository.save(user);
        return user;
    }
}
