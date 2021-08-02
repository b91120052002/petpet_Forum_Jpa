package com.petpet.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.petpet.model.ForumJpaBean;


public interface ForumJpaRepository extends JpaRepository<ForumJpaBean, Long> {

}
