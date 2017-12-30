package ru.isko.forms;

import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Date;

/**
 * created by Iskander Valiev
 * on 12/14/17
 *
 * @author Iskander Valiev (Kazan Federal University Higher School of Information Technologies and Information Systems)
 * @version 1.0
 */
@Data
@NoArgsConstructor
public class EventForm {
    private String eventTitle;
    private String eventDescription;
    private String eventDay;
    private String eventMonth;
    private String eventYear;
    private String eventStartHour;
    private boolean eventStatus;
}
