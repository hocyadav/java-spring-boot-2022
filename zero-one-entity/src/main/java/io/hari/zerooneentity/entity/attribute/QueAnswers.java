package io.hari.zerooneentity.entity.attribute;

import lombok.*;

import java.util.LinkedList;
import java.util.List;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
@Builder
public class QueAnswers {
    List<String> answers = new LinkedList<>();
}
