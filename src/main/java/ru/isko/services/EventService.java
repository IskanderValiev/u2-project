package ru.isko.services;

import org.springframework.web.multipart.MultipartFile;
import ru.isko.forms.EventForm;
import ru.isko.models.Event;

import java.util.List;

public interface EventService {
    void addEvent(EventForm eventForm, MultipartFile[] multipartFiles);
    void checkStatus(List<Event> events);
    List<Event> sort(List<Event> events);
}
