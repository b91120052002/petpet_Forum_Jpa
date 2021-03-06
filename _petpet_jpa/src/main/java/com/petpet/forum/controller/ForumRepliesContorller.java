package com.petpet.forum.controller;

import java.util.Date;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.petpet.forum.model.ForumJpaBean;
import com.petpet.forum.model.Member;
import com.petpet.forum.model.Replies;
import com.petpet.forum.service.ForumJpaService;
import com.petpet.forum.service.MemberService;
import com.petpet.forum.service.RepliesService;

@Controller
public class ForumRepliesContorller {
	
	private final Logger log = LoggerFactory.getLogger(this.getClass());  

	@Autowired
	ForumJpaService forumJpaService;
	
	@Autowired
	MemberService memberService;
	
	@Autowired
	RepliesService repliesService;
	
	//刪除回覆
	@RequestMapping(path="/deleteR/{id}", method = RequestMethod.GET)
	public @ResponseBody ResponseEntity<?>  deleteReply(@PathVariable("id") Long replyId
														) {
		repliesService.delete(replyId);	
		return new ResponseEntity<>("刪除成功", HttpStatus.OK);
	}
	
	//新增回覆
	@RequestMapping(path="/replies", method = RequestMethod.POST)
	public @ResponseBody ResponseEntity<?> saveReply (@RequestParam("replyText") String replyText, 
														@RequestParam("textId") Long textId,
														Model model
														){
	try {		
		System.out.println(model);
		Date createDate = new Date();
		
		Replies rp = new Replies();
					
		Member member = memberService.findById((long) Math.floor(Math.random() * 3) + 1);
		rp.setMember(member);
		
		ForumJpaBean fb = forumJpaService.findById(textId);
		fb.settextReplies(fb.gettextReplies()+1);
		rp.setForumJpaBean(fb);
		
		rp.setreplyDate(createDate);
		rp.setreplyText(replyText);
		
		repliesService.save(rp);
		
		
		log.info("HttpStatus===" + new ResponseEntity<>(HttpStatus.OK));
		return new ResponseEntity<>("Product Saved With File - ", HttpStatus.OK);
		
	
	}catch (Exception e) {
		e.printStackTrace();
		log.info("Exception: " + e);
		return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
	}
}
