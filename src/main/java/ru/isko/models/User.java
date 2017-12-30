package ru.isko.models;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.*;
import ru.isko.security.role.Role;
import ru.isko.security.state.State;

import javax.persistence.*;
import java.util.List;

/**
 * created by Iskander Valiev
 * on 12/6/17
 *
 * @author Iskander Valiev (Kazan Federal University Higher School of Information Technologies and Information Systems)
 * @version 1.0
 */
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
@Entity
@Table(name = "users")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String email;
    private String password;
    private String name;
    private String surname;
    private String phone;
    private boolean subscribe;
    private String hashLink;


    @JsonIgnore
    @OneToMany(mappedBy = "user")
    private List<Application> application;

    @Enumerated(EnumType.STRING)
    private Role role;
    @Enumerated(EnumType.STRING)
    private State state;
}
