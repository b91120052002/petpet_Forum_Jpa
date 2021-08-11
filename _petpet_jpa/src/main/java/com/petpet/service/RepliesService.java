package com.petpet.service;

import java.util.List;
import java.util.Optional;

import com.petpet.model.Member;
import com.petpet.model.Replies;

public interface RepliesService {

	Replies save(Replies rp);

	List<Replies> findAll();

	Optional<Replies> getRepliesById(Long reply_id);

	Replies findById(Long reply_id);

	Replies delete(Long reply_id);

}