package io.hari.zerooneentity.repo;

import io.hari.zerooneentity.entity.Contest;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ContestRepo extends JpaRepository<Contest, Long> {
}
