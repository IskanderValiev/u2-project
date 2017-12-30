package ru.isko.comporators;

import ru.isko.models.Event;

import java.util.Comparator;

/**
 * created by Iskander Valiev
 * on 12/14/17
 *
 * @author Iskander Valiev (Kazan Federal University Higher School of Information Technologies and Information Systems)
 * @version 1.0
 */
public class EventComparator implements Comparator<Event> {

    @Override
    public int compare(Event o1, Event o2) {
        if (o1.getId() > o2.getId()) {
            return -1;
        } else if (o1.getId() < o2.getId()) {
            return 1;
        }
        return 0;
    }
}
