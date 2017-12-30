package ru.isko.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.isko.models.Category;

import java.util.List;

public interface CategoryRepository extends JpaRepository<Category, Long> {
    Category findByTitle(String title);
}
