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

@Controller
public class ForumBackStageController {
	
	
	
	@Autowired
	ForumJpaService forumJpaService;
	
	@Autowired
	MemberService memberService;
	
	//查詢單筆
	@GetMapping("/BackStageFindById")
	public String findBytextId(@RequestParam("textId") Long textId, 
								Model m
								) {
		// 要Service呼叫Dao
		ForumJpaBean fbs1 = forumJpaService.findById(textId);
		m.addAttribute("fbs1", fbs1);
		return "forum/forum_BackStage_FindById";
	}
	
	//發文頁面
		@GetMapping("/BackStageInsert")
		public String forum(Model model) {
			return "forum/forum_BackStage_Insert";
		}
	
	@GetMapping({"/BackStage","/BS"})
	public String bSgetTexts(Model m) {
		List<ForumJpaBean> fbs = forumJpaService.findAll();
		m.addAttribute("fbs1", fbs);
		return "forum/forum_BackStage";
	}
	
	@GetMapping("/deletebs")
	public String deletebs(@RequestParam Long textId, 
							Model m
							) {
		forumJpaService.deleteById(textId);
		List<ForumJpaBean> fbs = forumJpaService.findAll();
		m.addAttribute("fbs1", fbs);
		return "redirect:forum/BS";

	}

}
