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
import com.petpet.service.ForumJpaService;

@Controller
public class ForumJpaController {

	@Autowired
	ForumJpaService forumJpaService;
	
	@PostMapping("/update")
	public String update(@RequestParam(name = "textId") Long textId, 
						  @RequestParam(name = "title") String title, 
						  @RequestParam(name = "text") String text,
						  @RequestParam(name = "text_sub") String text_sub,
						  @RequestParam(name = "text_type") String text_type,
						  Model m
						  ) {
		ForumJpaBean fb = new ForumJpaBean();
		System.out.println("textId = "+textId);
		fb.setTextId(textId);
		fb.setTitle(title);
		fb.setText(text);
		fb.setText_sub(text_sub);
		fb.setText_type(text_type);		
		forumJpaService.save(fb);
		System.out.println("textId = "+fb.getTextId());
		ForumJpaBean fbs1 = forumJpaService.findById(textId);
		m.addAttribute("fbs1", fbs1);
		return "forumText";
	}
	
	
	@GetMapping("/delete")
    public String delete(@RequestParam Long textId ,
		     			Model m
		     			){
		forumJpaService.deleteById(textId);
        List<ForumJpaBean> fbs = forumJpaService.findAll();
		m.addAttribute("fbs1", fbs);        
        return "forum_Main";
        
    }
	
	@GetMapping("/text")
	public String findByTextId(
			@RequestParam("textId") Long textId, 
			Model m 
			) {
		//要Service呼叫Dao
		ForumJpaBean fbs1 = forumJpaService.findById(textId);
		m.addAttribute("fbs1", fbs1);
		return 	"forumText";
	}
	
	//回傳json
	@GetMapping("/textJ")
	public @ResponseBody ForumJpaBean findByTextId(
			@RequestParam Long textId
			) {
		return forumJpaService.findById(textId);
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
						  Model m
						  ) {
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
	

//	@PutMapping("/text/{textId}")
//	public @ResponseBody Map<String, String> update(
//			  @RequestBody ForumBean fb,
//			  @PathVariable Integer textId
//			) {
//		Map<String, String> map = new HashMap<>();
//		String result = "";
//		try {
//		   forumService.update(fb);
//		   result = "修改成功";
//		   map.put("success", result);
//		} catch(Exception e) {
//		   result = e.getMessage();	
//		   map.put("fail", result);
//		}
//		return map;
//	}
	
//	@ModelAttribute("update")
//	public ForumBean getForumBean(
//			@RequestParam(value="textId", required = false) Integer textId
//				) {
//		ForumBean fb = null;
//		if (textId == null) {
//			fb = new ForumBean();
//		}else {
//			fb = forumService.findById(textId);
//		}
//		return fb;
//	}
	
	
}
