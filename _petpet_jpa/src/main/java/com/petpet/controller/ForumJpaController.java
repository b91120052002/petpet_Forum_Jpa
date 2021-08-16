package com.petpet.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.petpet.model.ForumJpaBean;
import com.petpet.model.Member;
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

	// 用文章id刪除後回到主頁
	@GetMapping("/delete")
	public String delete(@RequestParam Long text_id, Model m) {
		forumJpaService.deleteById(text_id);
		List<ForumJpaBean> fbs = forumJpaService.findAll();
		m.addAttribute("fbs1", fbs);
		return "redirect:/";

	}

	// 用文章id查詢單筆
	@GetMapping("/FindById")
	public String findBytext_id(@RequestParam("text_id") Long text_id, Model m) {
		ForumJpaBean fbs1 = forumJpaService.findById(text_id);
		m.addAttribute("fbs1", fbs1);
		return "forum_FindById";
	}

	// 發文頁面
	@GetMapping("/Insert")
	public String forum(Model model) {
		return "forum_Insert";
	}

	// 主頁 查詢全部
	@GetMapping("/")
	public String getTexts(Model m) {
		List<ForumJpaBean> fbList = forumJpaService.findAll();
		m.addAttribute("fbList", fbList);
		return "forum_Main";
	}

}
