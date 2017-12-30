package ru.isko.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import ru.isko.comporators.PromotionComparator;
import ru.isko.forms.PromotionForm;
import ru.isko.models.Image;
import ru.isko.models.Promotion;
import ru.isko.repositories.ImageRepository;
import ru.isko.repositories.PromotionRepository;

import java.util.List;

/**
 * created by Iskander Valiev
 * on 12/12/17
 *
 * @author Iskander Valiev (Kazan Federal University Higher School of Information Technologies and Information Systems)
 * @version 1.0
 */
@Service
public class PromotionServiceImpl implements PromotionService {
    @Autowired
    private PromotionRepository promotionRepository;

    @Autowired
    private ImageStorageService imageStorageService;

    @Autowired
    private ImageRepository imageRepository;

    @Override
    public void addPromotion(MultipartFile file, PromotionForm form) {
        String imagePath = imageStorageService.saveFile(file);

        Image image = imageRepository.findOneByStorageFileName(imagePath);

        Promotion promotion = Promotion.builder()
                .name(form.getPromName())
                .description(form.getPromDesc())
                .startHour(form.getStartHour())
                .endHour(form.getEndHour())
                .days(form.getPromDays())
                .image(image)
                .build();
        promotionRepository.save(promotion);
    }

    @Override
    public List<Promotion> sort(List<Promotion> promotions) {
        promotions.sort(new PromotionComparator());
        return promotions;
    }
}
