package ru.isko.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.isko.models.User;
import ru.isko.repositories.UserRepository;
import ru.isko.security.state.State;

import java.util.Optional;

/**
 * created by Iskander Valiev
 * on 12/8/17
 *
 * @author Iskander Valiev (Kazan Federal University Higher School of Information Technologies and Information Systems)
 * @version 1.0
 */
@Service
public class VerifyServiceImpl implements VerifyService {

    @Autowired
    private UserRepository userRepository;

    @Override
    public void verifyUser(String link) {
        Optional<User> existedUser = userRepository.findByHashLink(link);

        if (!existedUser.isPresent()) {
            throw new IllegalArgumentException("User not found");
        }

        User user = existedUser.get();

        user.setState(State.CONFIRMED);
        user.setHashLink(null);
        userRepository.save(user);
    }
}
