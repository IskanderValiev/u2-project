package ru.isko.services;

import org.springframework.web.multipart.MultipartFile;
import ru.isko.forms.AddingDishForm;

@Deprecated
public interface DishService {
    void addDish(MultipartFile file, AddingDishForm addingDishForm);
}
