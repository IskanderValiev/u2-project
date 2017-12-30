package ru.isko.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import ru.isko.forms.AddingDishForm;
import ru.isko.models.Dish;
import ru.isko.models.Image;
import ru.isko.repositories.DishRepository;
import ru.isko.repositories.ImageRepository;

/**
 * created by Iskander Valiev
 * on 12/9/17
 *
 * @author Iskander Valiev (Kazan Federal University Higher School of Information Technologies and Information Systems)
 * @version 1.0
 */
@Deprecated
@Service
public class DishServiceImpl implements DishService {

    @Autowired
    private DishRepository dishRepository;

    @Autowired
    private ImageRepository imageRepository;

    @Autowired
    private ImageStorageService imageStorageService;

    @Override
    public void addDish(MultipartFile file, AddingDishForm addingDishForm) {
        String imagePath = imageStorageService.saveFile(file);

        Image image = imageRepository.findOneByStorageFileName(imagePath);

        Dish dish = Dish.builder()
                .name(addingDishForm.getDishName())
                .description(addingDishForm.getDishDescription())
                .category(addingDishForm.getDishCategory())
                .price(addingDishForm.getDishPrice())
                .image(image)
                .weight(addingDishForm.getDishWeight())
                .build();

        dishRepository.save(dish);
    }
}
