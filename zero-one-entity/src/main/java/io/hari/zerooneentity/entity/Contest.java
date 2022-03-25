package io.hari.zerooneentity.entity.bricks;

import lombok.*;

import javax.persistence.*;

@Getter @Setter @NoArgsConstructor @AllArgsConstructor @ToString(exclude = {"id"})
@Builder
@Entity
@Table(name = "contests")
public class Contest {
    @Id
    @GeneratedValue (strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "contest_name")
    private String contest;

//    @Convert(converter = ContestQuesAttributeConverter.class) //@Converter + autoApply true
    private io.hari.zerooneentity.entity.bricks.ContestQues contestQues;
}
