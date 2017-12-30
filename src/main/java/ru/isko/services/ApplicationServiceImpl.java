package ru.isko.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.isko.forms.ApplicationForm;
import ru.isko.models.Application;
import ru.isko.repositories.ApplicationRepository;
import ru.isko.repositories.UserRepository;

import java.sql.Timestamp;

/**
 * created by Iskander Valiev
 * on 12/7/17
 *
 * @author Iskander Valiev (Kazan Federal University Higher School of Information Technologies and Information Systems)
 * @version 1.0
 */
@Service
public class ApplicationServiceImpl implements ApplicationService {

    @Autowired
    private ApplicationRepository applicationRepository;

    @Autowired
    private UserRepository userRepository;

    @Override
    public void save(ApplicationForm applicationForm) {
        applicationRepository.save(Application.builder()
                .personName(applicationForm.getPersonName())
                .phone(applicationForm.getPersonPhone())
                .extraInfo(applicationForm.getExtraInfo())
                .user(userRepository.findOne(applicationForm.getUserId()))
                .date(new Timestamp(System.currentTimeMillis()))
                .state(Application.State.UNREAD)
                .status(Application.Status.NOT_APPROVED)
                .build());
    }

    @Override
    public void delete(Long id) {
        applicationRepository.delete(id);
    }

    @Override
    public void update(Long id) {
    }

    @Override
    public Application find(Long id) {
        return applicationRepository.findOne(id);
    }
}
