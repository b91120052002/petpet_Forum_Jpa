package com.petpet.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.petpet.model.Replies;

@Repository("RepliesRepository")
public interface RepliesRepository extends JpaRepository<Replies, Long> {
	

}
