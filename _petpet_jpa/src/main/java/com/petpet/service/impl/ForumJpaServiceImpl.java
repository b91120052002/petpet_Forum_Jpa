package com.petpet.service.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.petpet.model.ForumJpaBean;
import com.petpet.repository.ForumJpaRepository;
import com.petpet.service.ForumJpaService;


@Service
@Transactional
public class ForumJpaServiceImpl implements ForumJpaService {
	
	@Autowired
	private ForumJpaRepository forumJpaRepository;
	
	@Override
	public ForumJpaBean save(ForumJpaBean fb) {
		return forumJpaRepository.save(fb);
	}
	
	@Override
	public void delete(ForumJpaBean fb) {
		forumJpaRepository.delete(fb);
	}
	
	@Override
	public void deleteById(Long text_id) {
		forumJpaRepository.deleteById(text_id);
	}
	
    @Override
	public List<ForumJpaBean> findAll() {
		return forumJpaRepository.findAll();
	}
    
    @Override
	public ForumJpaBean findById(Long  text_id) {
		return forumJpaRepository.getById(text_id);
	}



}
