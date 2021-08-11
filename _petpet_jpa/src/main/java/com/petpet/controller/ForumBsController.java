package com.petpet.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.petpet.model.ForumJpaBean;
import com.petpet.service.ForumJpaService;

@Controller
public class ForumBsController {
	
	@Autowired
	ForumJpaService forumJpaService;
	
	@GetMapping("/BS")
	public String bSgetTexts(Model m) {
		List<ForumJpaBean> fbs = forumJpaService.findAll();
		m.addAttribute("fbs1", fbs);
		return "forum_BS";
	}
	
	@GetMapping("/deletebs")
	public String deletebs(@RequestParam Long text_id, Model m) {
		forumJpaService.deleteById(text_id);
		List<ForumJpaBean> fbs = forumJpaService.findAll();
		m.addAttribute("fbs1", fbs);
		return "redirect:BS";

	}

}
