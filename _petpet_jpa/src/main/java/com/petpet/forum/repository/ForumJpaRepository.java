package com.petpet.forum.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.petpet.forum.model.ForumJpaBean;

@Repository("ForumJpaRepository")
public interface ForumJpaRepository extends JpaRepository<ForumJpaBean, Long> {

}
