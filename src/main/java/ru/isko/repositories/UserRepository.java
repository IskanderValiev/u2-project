package ru.isko.repositories;


import org.springframework.data.jpa.repository.JpaRepository;
import ru.isko.models.User;

import java.util.List;
import java.util.Optional;

/**
 * created by Iskander Valiev
 * on 12/6/17
 *
 * @author Iskander Valiev (Kazan Federal University Higher School of Information Technologies and Information Systems)
 * @version 1.0
 */
public interface UserRepository extends JpaRepository<User, Long> {
    Optional<User> findById(Long id);
    Optional<User> findByEmail(String email);
    Optional<User> findByHashLink(String hashLink);
    List<User> findAllBySubscribe(boolean isSubscribed);
}
