package com.petpet.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.petpet.model.ForumJpaBean;
import com.petpet.model.Member;
import com.petpet.service.ForumJpaService;
import com.petpet.service.MemberService;

@Controller
public class ForumJpaController {

	@Autowired
	ForumJpaService forumJpaService;
	
	@Autowired
	MemberService memberService;

	@PostMapping("/update")
	public String update(@RequestParam(name = "text_id") Long text_id, 
							@RequestParam(name = "title") String title,
							@RequestParam(name = "text") String text, 
							@RequestParam(name = "text_sub") String text_sub,
							@RequestParam(name = "text_type") String text_type, Model m) {
		ForumJpaBean fb = new ForumJpaBean();
		System.out.println("text_id = " + text_id);
		fb.setText_id(text_id);
		fb.setTitle(title);
		fb.setText(text);
		fb.setText_sub(text_sub);
		fb.setText_type(text_type);
		forumJpaService.save(fb);
		System.out.println("text_id = " + fb.getText_id());
		ForumJpaBean fbs1 = forumJpaService.findById(text_id);
		m.addAttribute("fbs1", fbs1);
		return "forumText";
	}

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

	// 回傳json
	@GetMapping("/textJ")
	public @ResponseBody ForumJpaBean findBytext_id(@RequestParam Long text_id) {
		return forumJpaService.findById(text_id);
	}

	@GetMapping("/post_Page")
	public String forum(Model model) {
		return "forum_Post";
	}

	@PostMapping("/post")
	public String save(@RequestParam(name = "title") String title, 
						@RequestParam(name = "text") String text,
						@RequestParam(name = "text_sub") String text_sub, 
						@RequestParam(name = "text_type") String text_type,
			Model m) {
		ForumJpaBean fb = new ForumJpaBean();
		Date d = new Date();
		
		
		fb.setText_time(d);
		fb.setTitle(title);
		fb.setText(text);
		fb.setText_sub(text_sub);
		fb.setText_type(text_type);
		forumJpaService.save(fb);
		List<ForumJpaBean> fbs = forumJpaService.findAll();
		m.addAttribute("fbs1", fbs);
		return "redirect:/";
	}

	@GetMapping("/")
	public String getTexts(Model m) {
		List<ForumJpaBean> fbs = forumJpaService.findAll();
		m.addAttribute("fbs1", fbs);
		return "forum_Main";
	}
	
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
