package ru.isko.models;

import lombok.*;

import javax.persistence.*;

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
@ToString
@Entity
@Table(name = "promotion")
public class Promotion {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;
    private String description;
    private String startHour;
    private String endHour;
    private String days;

    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "image.id")
    private Image image;

}
