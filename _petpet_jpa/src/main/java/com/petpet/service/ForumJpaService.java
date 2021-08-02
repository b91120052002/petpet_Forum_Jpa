package com.petpet.service;

import java.util.List;
import java.util.Optional;

import com.petpet.model.ForumJpaBean;

public interface ForumJpaService {

	Optional<ForumJpaBean> getTextById(Long textId);

	ForumJpaBean save(ForumJpaBean fb);

	void delete(ForumJpaBean fb);

	void deleteById(Long textId);

	List<ForumJpaBean> findAll();

	ForumJpaBean findById(Long textId);

}