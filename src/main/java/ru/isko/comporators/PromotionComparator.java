package ru.isko.comporators;

import ru.isko.models.Promotion;

import java.util.Comparator;

/**
 * created by Iskander Valiev
 * on 12/14/17
 *
 * @author Iskander Valiev (Kazan Federal University Higher School of Information Technologies and Information Systems)
 * @version 1.0
 */
public class PromotionComparator implements Comparator<Promotion>{

    @Override
    public int compare(Promotion o1, Promotion o2) {
        if (o1.getId() > o2.getId()) {
            return -1;
        } else if (o1.getId() < o2.getId()) {
            return 1;
        }
        return 0;
    }
}
