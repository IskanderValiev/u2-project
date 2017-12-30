package ru.isko.comporators;

import ru.isko.models.Application;

import java.util.Comparator;

/**
 * created by Iskander Valiev
 * on 12/22/17
 *
 * @author Iskander Valiev (Kazan Federal University Higher School of Information Technologies and Information Systems)
 * @version 1.0
 */
public class ApplicationComparator implements Comparator<Application> {
    @Override
    public int compare(Application o1, Application o2) {
        if (o1.getId() > o2.getId()) {
            return -1;
        } else if (o1.getId() < o2.getId()) {
            return 1;
        }
        return 0;
    }
}
