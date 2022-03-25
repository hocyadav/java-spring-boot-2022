package io.hari.zerooneentity.repo;

import io.hari.zerooneentity.entity.bricks.Question;
import org.springframework.data.jpa.repository.JpaRepository;

public interface QuestionRepo extends JpaRepository<Question, Long> {
}
