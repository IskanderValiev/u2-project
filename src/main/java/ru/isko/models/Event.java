package ru.isko.models;

import lombok.*;

import javax.persistence.*;
import java.sql.Date;
import java.util.Set;

/**
 * created by Iskander Valiev
 * on 12/14/17
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
@Table(name = "event")
public class Event {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String title;
    private String description;

    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "cover")
    private Image cover;

    private Date date;
    private String startHour;
    private boolean status;

    @OneToMany(mappedBy = "event")
    private Set<Image> images;

    @Override
    public String toString() {
        return this.getTitle();
    }
}
