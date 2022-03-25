package io.hari.zerooneentity.entity;

import lombok.*;

import java.util.LinkedList;
import java.util.List;

@Getter @Setter @NoArgsConstructor @AllArgsConstructor @ToString
@Builder
public class ContestQues {
    @Builder.Default
    List<Long> queIds = new LinkedList<>();
}
