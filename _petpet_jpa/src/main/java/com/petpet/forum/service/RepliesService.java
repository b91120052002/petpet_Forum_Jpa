package com.petpet.forum.service;

import java.util.List;
import java.util.Optional;

import com.petpet.forum.model.Replies;

public interface RepliesService {

	Replies save(Replies rp);

	List<Replies> findAll();

	Optional<Replies> getRepliesById(Long replyId);

	Replies findById(Long replyId);

	Replies delete(Long replyId);

}