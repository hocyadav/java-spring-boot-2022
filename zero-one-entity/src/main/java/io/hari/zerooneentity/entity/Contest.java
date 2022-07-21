package io.hari.zerooneentity.entity;

import io.hari.zerooneentity.entity.attribute.ContestQues;
import lombok.*;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Getter @Setter @NoArgsConstructor @AllArgsConstructor @ToString(exclude = {"id"})
@Builder
@Entity
@Table(name = "contests")
public class Contest extends BaseEntity{

    @Column(name = "contest_name")
    private String contest;

//    @Convert(converter = ContestQuesAttributeConverter.class) //@Converter + autoApply true
    private ContestQues contestQues;
}
