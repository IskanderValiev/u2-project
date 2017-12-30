package ru.isko.services;

import org.springframework.web.multipart.MultipartFile;
import ru.isko.forms.PromotionForm;
import ru.isko.models.Promotion;

import java.util.List;

public interface PromotionService {

    void addPromotion(MultipartFile file, PromotionForm form);
    List<Promotion> sort(List<Promotion> promotions);
}
