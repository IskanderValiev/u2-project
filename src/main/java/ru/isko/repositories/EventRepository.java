package ru.isko.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.isko.models.Event;

import java.util.List;

/**
 * created by Iskander Valiev
 * on 12/14/17
 *
 * @author Iskander Valiev (Kazan Federal University Higher School of Information Technologies and Information Systems)
 * @version 1.0
 */
public interface EventRepository extends JpaRepository<Event, Long> {
    List<Event> findAllByStatus(boolean status);
}
