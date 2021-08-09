package com.petpet.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.petpet.model.ForumJpaBean;
import com.petpet.service.ForumJpaService;

@Controller
public class ForumRestController {
	
	@Autowired
	ForumJpaService forumJpaService;
	
	@GetMapping("/quertallforum")
	@ResponseBody
	public List<ForumJpaBean> listAllTexts(Model m) {
		List<ForumJpaBean> fb = forumJpaService.findAll();
		m.addAttribute("fbs", fb);
		return fb;
	}

}
