package ru.isko.forms;

import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * created by Iskander Valiev
 * on 12/9/17
 *
 * @author Iskander Valiev (Kazan Federal University Higher School of Information Technologies and Information Systems)
 * @version 1.0
 */
@Data
@NoArgsConstructor
@Deprecated
public class AddingDishForm {
    private String dishName;
    private String dishDescription;
    private String dishCategory;
    private int dishPrice;
    private int dishWeight;
}
