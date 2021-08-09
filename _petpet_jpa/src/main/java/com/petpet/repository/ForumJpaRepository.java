package com.petpet.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.petpet.model.ForumJpaBean;

@Repository("ForumJpaRepository")
public interface ForumJpaRepository extends JpaRepository<ForumJpaBean, Long> {

}
