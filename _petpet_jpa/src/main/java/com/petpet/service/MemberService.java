package com.petpet.service;

import java.util.List;
import java.util.Optional;

import com.petpet.model.Member;

public interface MemberService {

	public Member save(Member member);

	public List<Member> findAll();

	public Optional<Member> getMemberById(Long id);

	public Member findById(Long id);

	Member delete(Long memberid);

}