package com.petpet.service.impl;

import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.petpet.model.Member;
import com.petpet.repository.MemberRepository;
import com.petpet.service.MemberService;

@Service
@Transactional
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberRepository memberRepository;
	
	@Override
	public Member save(Member member) {
		return memberRepository.save(member);
	}
	
	@Override
	public List<Member> findAll() {
		return memberRepository.findAll();
	}
	
	@Override
	public Optional<Member> getMemberById(Long id) {
		return memberRepository.findById(id); 
	}
	
	@Override
	public Member findById(Long id) {
		return memberRepository.getById(id);
	}
	
	@Override
	public Member delete(Long memberid) {
		Member member = memberRepository.findById(memberid).orElse(null);
		memberRepository.deleteById(memberid);
		return member;
	}
}
