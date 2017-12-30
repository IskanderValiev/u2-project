package ru.isko.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.isko.models.Event;
import ru.isko.models.Image;

import java.util.List;

public interface ImageRepository extends JpaRepository<Image, Long> {
    Image findOneByStorageFileName(String fileName);
    List<Image> findAllByEvent(Event event);
}
