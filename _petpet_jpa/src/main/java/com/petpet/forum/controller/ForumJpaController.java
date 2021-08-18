package com.petpet.forum.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.petpet.forum.model.ForumJpaBean;
import com.petpet.forum.service.ForumJpaService;
import com.petpet.forum.service.MemberService;
import com.petpet.forum.service.RepliesService;

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
	public String delete(@RequestParam Long textId, Model m) {
		forumJpaService.deleteById(textId);
		List<ForumJpaBean> fbs = forumJpaService.findAll();
		m.addAttribute("fbs1", fbs);
		return "forum/redirect:/";

	}

	// 用文章id查詢單筆 & 前台點閱+1
	@GetMapping("/FindById")
	public String findBytextId(@RequestParam("textId") Long textId, Model m) {
		ForumJpaBean fbs1 = forumJpaService.findById(textId);
		fbs1.settextClick(fbs1.gettextClick()+1);
		System.out.println(fbs1);
		forumJpaService.save(fbs1);
		m.addAttribute("fbs1", fbs1);
		return "forum/forum_FindById";
	}

	// 發文頁面
	@GetMapping("/Insert")
	public String forum(Model model) {
		return "forum/forum_Insert";
	}

	// 主頁 查詢全部
	@GetMapping("/")
	public String getTexts(Model m) {
		List<ForumJpaBean> fbList = forumJpaService.findAll();
		m.addAttribute("fbList", fbList);
		return "forum/forum_Main";
	}

}
