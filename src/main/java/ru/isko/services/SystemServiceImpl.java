package ru.isko.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import ru.isko.models.User;
import ru.isko.repositories.UserRepository;
import ru.isko.utils.HashLinkGenerator;

import javax.transaction.Transactional;
import java.util.Optional;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/**
 * created by Iskander Valiev
 * on 12/8/17
 *
 * @author Iskander Valiev (Kazan Federal University Higher School of Information Technologies and Information Systems)
 * @version 1.0
 */
@Service
public class SystemServiceImpl implements SystemService {

    @Autowired
    private HashLinkGenerator linkGenerator;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private EmailService emailService;

    @Value("${application.url}")
    private String appURL;

    private ExecutorService executorService = Executors.newCachedThreadPool();

    @Transactional
    @Override
    public void sendLink(Long userID) {
        Optional<User> existedUser = userRepository.findById(userID);

        if (!existedUser.isPresent()) {
            throw new IllegalArgumentException("User not found");
        }

        User user = existedUser.get();

        String link = "http://localhost:8080/confirm/account/" + user.getHashLink();

        executorService.submit(() -> {
            emailService.sendMail("<img src=\"/images/mail-image.png\" style=\"width: 100%; height: 64px;\"> <br><br>" +
                    "Мы рады, что вы присоединились к семье Unity Hall 2. Чтобы завершить регистрацию, вам нужно подтвердить свой аккаунт, " +
                    "перейдя по ссылке ниже: <br>" +
                    "<a href=\"" + link +"\">" + link + "</a> <br><br><br> " +
                    "Это автоматическое сообщение. Пожалуйста, не отвечайте на него. Если вы не знаете ничего об этом сообщении, то проигнорируйте его.<br>" +
                    "<strong>Ваш Unity Hall 2.<br>" +
                    "Чистопольская, 3. 8 (843) 500-222</strong>", "Письмо подтвержденияс.", user.getEmail());
        });
    }

    @Override
    public void generateTempPassword(Long userID) {

    }

    @Override
    public void resetPassword(String link) {

    }
}
