package io.hari.zerooneentity.entity;

import io.hari.zerooneentity.entity.attribute.UserContest;
import lombok.*;

import javax.persistence.Entity;
import javax.persistence.Table;

@Getter @Setter @NoArgsConstructor @AllArgsConstructor @ToString(callSuper = true, exclude = {"id"})
@Builder
@Entity
@Table(name = "users")
public class User extends BaseEntity{

    private String name;

    private UserContest userContest;
}
