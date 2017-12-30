package ru.isko.forms;

import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * created by Iskander Valiev
 * on 12/12/17
 *
 * @author Iskander Valiev (Kazan Federal University Higher School of Information Technologies and Information Systems)
 * @version 1.0
 */
@Data
@NoArgsConstructor
public class PromotionForm {
    private String promName;
    private String promDesc;
    private String startHour;
    private String endHour;
    private String promDays;
}
