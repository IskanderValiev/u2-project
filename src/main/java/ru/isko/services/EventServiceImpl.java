package ru.isko.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import ru.isko.comporators.EventComparator;
import ru.isko.forms.EventForm;
import ru.isko.models.Event;
import ru.isko.models.Image;
import ru.isko.repositories.EventRepository;
import ru.isko.repositories.ImageRepository;

import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/**
 * created by Iskander Valiev
 * on 12/14/17
 *
 * @author Iskander Valiev (Kazan Federal University Higher School of Information Technologies and Information Systems)
 * @version 1.0
 */
@Service
public class EventServiceImpl implements EventService {
    @Autowired
    private EventRepository eventRepository;

    @Autowired
    private ImageStorageService imageStorageService;

    @Autowired
    private ImageRepository imageRepository;

    @Override
    public void addEvent(EventForm eventForm, MultipartFile[] multipartFiles) {
        SimpleDateFormat format = new SimpleDateFormat("dd.MM.yyyy");
        java.util.Date parser = null;
        try {
            parser = format.parse(eventForm.getEventDay() + "." + eventForm.getEventMonth() + "." + eventForm.getEventYear());
        } catch (ParseException e) {
            e.printStackTrace();
        }

        Date eventDate = new Date(parser != null ? parser.getTime() : 0);

        Event event = Event.builder()
                .title(eventForm.getEventTitle())
                .date(eventDate)
                .status(eventForm.isEventStatus())
                .startHour(eventForm.getEventStartHour())
                .description(eventForm.getEventDescription())
                .build();


        Set<String> imagesPath = new HashSet<>();
        for (MultipartFile imagePath: multipartFiles) {
            imagesPath.add(imageStorageService.saveFile(imagePath));
        }

        Set<Image> images = new HashSet<>();
        for (String imagePath: imagesPath) {
            Image image = imageRepository.findOneByStorageFileName(imagePath);
            image.setEvent(event);
            images.add(imageRepository.findOneByStorageFileName(imagePath));
        }

        event.setCover(images.iterator().next());
        eventRepository.save(event);
    }

    @Override
    public void checkStatus(List<Event> events) {
        for(int i = 0; i < events.size(); i++) {
            if (events.get(i).getDate().getTime() < new Date(System.currentTimeMillis()).getTime()) {
                events.get(i).setStatus(true);
                eventRepository.save(events.get(i));
            }
        }
    }

    @Override
    public List<Event> sort(List<Event> events) {
        events.sort(new EventComparator());
        return events;
    }
}
