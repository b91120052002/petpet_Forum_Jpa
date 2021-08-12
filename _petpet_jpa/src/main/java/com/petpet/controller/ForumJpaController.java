package com.petpet.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.petpet.model.ForumJpaBean;
import com.petpet.model.Replies;
import com.petpet.service.ForumJpaService;
import com.petpet.service.MemberService;
import com.petpet.service.RepliesService;

@Controller
public class ForumJpaController {

	@Autowired
	ForumJpaService forumJpaService;
	
	@Autowired
	MemberService memberService;
	
	@Autowired
	RepliesService repliesService;

	@GetMapping("/delete")
	public String delete(@RequestParam Long text_id, Model m) {
		forumJpaService.deleteById(text_id);
		List<ForumJpaBean> fbs = forumJpaService.findAll();
		m.addAttribute("fbs1", fbs);
		return "redirect:/";

	}

	@GetMapping("/text")
	public String findBytext_id(@RequestParam("text_id") Long text_id, 
								Model m
								) {
		// 要Service呼叫Dao
		ForumJpaBean fbs1 = forumJpaService.findById(text_id);
		m.addAttribute("fbs1", fbs1);
		return "forumText";
	}
	
	//發文頁面
	@GetMapping("/post_Page")
	public String forum(Model model) {
		return "forum_Post";
	}

	@GetMapping("/")
	public String getTexts(Model m) {
		List<ForumJpaBean> fbs = forumJpaService.findAll();
		m.addAttribute("fbs1", fbs);
		return "forum_Main";
	}
	


}
