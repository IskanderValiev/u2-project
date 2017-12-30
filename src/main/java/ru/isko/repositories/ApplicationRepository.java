package ru.isko.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.isko.models.Application;

public interface ApplicationRepository extends JpaRepository<Application, Long> {
}
