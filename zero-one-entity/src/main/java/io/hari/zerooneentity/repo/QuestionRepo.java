package io.hari.zerooneentity.repo;

import io.hari.zerooneentity.entity.Question;
import org.springframework.data.jpa.repository.JpaRepository;

public interface QuestionRepo extends JpaRepository<Question, Long> {
}
