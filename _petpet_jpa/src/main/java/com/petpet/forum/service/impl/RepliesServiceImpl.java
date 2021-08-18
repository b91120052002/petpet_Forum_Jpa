package com.petpet.forum.service.impl;

import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.petpet.forum.model.Replies;
import com.petpet.forum.repository.RepliesRepository;
import com.petpet.forum.service.RepliesService;

@Service
@Transactional
public class RepliesServiceImpl implements RepliesService {
	
	@Autowired
	RepliesRepository repliesRepository;
	
	@Override
	public Replies save(Replies rp) {
		return repliesRepository.save(rp);
	}
	
	@Override
	public List<Replies> findAll() {
		return repliesRepository.findAll();
	}
	
	@Override
	public Optional<Replies> getRepliesById(Long reply_id) {
		return repliesRepository.findById(reply_id); 
	}
	
	@Override
	public Replies findById(Long reply_id) {
		return repliesRepository.getById(reply_id);
	}
	
	@Override
	public Replies delete(Long reply_id) {
		Replies rp = repliesRepository.findById(reply_id).orElse(null);
		repliesRepository.deleteById(reply_id);
		return rp;
	}
}
