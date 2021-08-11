package com.petpet.controller;

import java.util.Date;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.petpet.model.ForumJpaBean;
import com.petpet.model.Member;
import com.petpet.model.Replies;
import com.petpet.service.ForumJpaService;
import com.petpet.service.MemberService;
import com.petpet.service.RepliesService;

@Controller
public class ForumRepliesContorller {
	
	private final Logger log = LoggerFactory.getLogger(this.getClass());  

	@Autowired
	ForumJpaService forumJpaService;
	
	@Autowired
	MemberService memberService;
	
	@Autowired
	RepliesService repliesService;
	
	
	@RequestMapping(path="/replies", method = RequestMethod.POST)
	public @ResponseBody ResponseEntity<?> uploadproduct (@RequestParam("reply_text") String reply_text, 
															@RequestParam("text_id") Long text_id,
																Model model
																){
	try {		
		System.out.println(model);
		Date createDate = new Date();  //沒有建構子會寫入現在時間

		
		Replies rp = new Replies();
					
		Member member = memberService.findById((long) Math.floor(Math.random() * 3) + 1);
		rp.setMember(member);
		
		ForumJpaBean fb = forumJpaService.findById(text_id);
		rp.setForumJpaBean(fb);
		
		rp.setReply_date(createDate);
		rp.setReply_text(reply_text);
		
		repliesService.save(rp);
		
		System.out.println(rp);
		
		log.info("HttpStatus===" + new ResponseEntity<>(HttpStatus.OK));
		return new ResponseEntity<>("Product Saved With File - ", HttpStatus.OK);
		
	
	}catch (Exception e) {
		e.printStackTrace();
		log.info("Exception: " + e);
		return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
	}
}
