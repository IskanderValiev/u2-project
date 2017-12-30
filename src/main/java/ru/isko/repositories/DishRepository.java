package ru.isko.repositories;


import org.springframework.data.jpa.repository.JpaRepository;
import ru.isko.models.Dish;

import java.util.List;

@Deprecated
public interface DishRepository extends JpaRepository<Dish, Long> {
    List<Dish> findAllByCategory(String category);
}
