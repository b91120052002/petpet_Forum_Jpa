package com.petpet.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.petpet.model.Member;

@Repository("MemberRepository")
public interface MemberRepository extends JpaRepository<Member, Long> {

}
