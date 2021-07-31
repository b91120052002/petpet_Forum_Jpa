package com.petpet.service;

import java.util.List;

import com.petpet.model.ForumJpaBean;

public interface ForumJpaService {

	ForumJpaBean save(ForumJpaBean fb);

	void delete(ForumJpaBean fb);

	void deleteById(Long text_id);

	List<ForumJpaBean> findAll();

	ForumJpaBean findById(Long text_id);


}