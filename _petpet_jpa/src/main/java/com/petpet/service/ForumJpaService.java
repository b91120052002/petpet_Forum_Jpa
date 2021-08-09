package com.petpet.service;

import java.util.List;
import java.util.Optional;

import com.petpet.model.ForumJpaBean;

public interface ForumJpaService {

	Optional<ForumJpaBean> getTextById(Long text_id);

	ForumJpaBean save(ForumJpaBean fb);

	void delete(ForumJpaBean fb);

	void deleteById(Long text_id);

	List<ForumJpaBean> findAll();

	ForumJpaBean findById(Long text_id);
	
}