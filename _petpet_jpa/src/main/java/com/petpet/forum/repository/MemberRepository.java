package com.petpet.forum.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.petpet.forum.model.Member;

@Repository("MemberRepository")
public interface MemberRepository extends JpaRepository<Member, Long> {

}
