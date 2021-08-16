package com.petpet.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.petpet.model.ForumJpaBean;
import com.petpet.service.ForumJpaService;
import com.petpet.service.MemberService;

@Controller
public class ForumBackStageController {
	
	
	
	@Autowired
	ForumJpaService forumJpaService;
	
	@Autowired
	MemberService memberService;
	
	//查詢單筆
	@GetMapping("/BackStageFindById")
	public String findBytext_id(@RequestParam("text_id") Long text_id, 
								Model m
								) {
		// 要Service呼叫Dao
		ForumJpaBean fbs1 = forumJpaService.findById(text_id);
		m.addAttribute("fbs1", fbs1);
		return "forum_BackStage_FindById";
	}
	
	//發文頁面
		@GetMapping("/BackStageInsert")
		public String forum(Model model) {
			return "forum_BackStage_Insert";
		}
	
	@GetMapping({"/BackStage","/BS"})
	public String bSgetTexts(Model m) {
		List<ForumJpaBean> fbs = forumJpaService.findAll();
		m.addAttribute("fbs1", fbs);
		return "forum_BackStage";
	}
	
	@GetMapping("/deletebs")
	public String deletebs(@RequestParam Long text_id, Model m) {
		forumJpaService.deleteById(text_id);
		List<ForumJpaBean> fbs = forumJpaService.findAll();
		m.addAttribute("fbs1", fbs);
		return "redirect:BS";

	}

}
