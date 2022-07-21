package io.hari.zerooneentity.entity;

import io.hari.zerooneentity.entity.attribute.QueAnswers;
import io.hari.zerooneentity.entity.attribute_converter.QueAnswersAttributeConverter;
import lombok.*;

import javax.persistence.*;

@Getter @Setter @NoArgsConstructor @AllArgsConstructor @ToString(exclude = {"id"})
@Builder
@Entity
@Table(name = "questions")
public class Question {
    @Id
    @GeneratedValue (strategy = GenerationType.IDENTITY)
    private Long id;

    private String question;

    @Convert(converter = QueAnswersAttributeConverter.class)
    private QueAnswers queAnswers;
}
