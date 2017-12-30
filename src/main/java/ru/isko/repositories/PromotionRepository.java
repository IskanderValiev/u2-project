package ru.isko.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.isko.models.Promotion;

public interface PromotionRepository extends JpaRepository<Promotion, Long>{

}
