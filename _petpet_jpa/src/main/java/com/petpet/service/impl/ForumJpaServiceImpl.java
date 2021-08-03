package com.petpet.service.impl;

import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
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
	public void deleteById(Long textId) {
		forumJpaRepository.deleteById(textId);
	}

	@Override
	public List<ForumJpaBean> findAll() {
		return forumJpaRepository.findAll(Sort.by(Sort.Direction.DESC, "textId"));
	}

	@Override
	public ForumJpaBean findById(Long textId) {
		return forumJpaRepository.getById(textId);
	}

	@Override
	public Optional<ForumJpaBean> getTextById(Long textId) {
		return forumJpaRepository.findById(textId); // 由於在ProductRepository有繼承JpaRepository方法，這邊就可以直接使用方法
	}
	
	

	
}
