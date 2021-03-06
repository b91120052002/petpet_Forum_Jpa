package com.petpet.forum.controller;

import java.io.IOException;
import java.util.Date;
import java.util.Optional;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.petpet.forum.model.ForumJpaBean;
import com.petpet.forum.model.Member;
import com.petpet.forum.service.ForumJpaService;
import com.petpet.forum.service.MemberService;

@Controller
public class ForumImgController {
	

	
	private final Logger log = LoggerFactory.getLogger(this.getClass());  
	
	@Autowired
	ForumJpaService forumJpaService;
	
	@Autowired
	MemberService memberService;
	
	//更新
	@RequestMapping(path="/updatefile", method = RequestMethod.POST)
	public @ResponseBody ResponseEntity<?> upldateproduct (	@RequestParam("textId") Long textId,
															@RequestParam("title") String title, 
															@RequestParam("text") String text,
															@RequestParam("textSub") String textSub,
															@RequestParam("textType") String textType,
															final @RequestParam(value="image",  required = false) MultipartFile file,
															Model model 
															){
		try {

			Date createDate = new Date();  //變成是現在的修改時間匯入

			ForumJpaBean product = forumJpaService.getTextById(textId).orElse(null);
				
			byte[] imageData1= product.gettextImage();
			
			product.settextImage(imageData1);
			System.out.println("這裡是image:"+imageData1);
			//檔案不為空才讀取檔案，否則就用原本資料庫裏面的檔案
			if (!file.isEmpty()) {	
				byte[] imageData = file.getBytes();
				product.settextImage(imageData);
			}
			
			product.settextTime(createDate);
			product.setTitle(title);
			product.setText(text);
			product.settextSub(textSub);
			product.settextType(textType);
			

			forumJpaService.save(product);
			log.info("HttpStatus===" + new ResponseEntity<>(HttpStatus.OK));
			return new ResponseEntity<>("Product Saved With File", HttpStatus.OK);
		}	
		
		catch (Exception e) {
			e.printStackTrace();
			log.info("Exception: " + e);
			return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
			}
		}
	
	
	@GetMapping("/product/display/{textId}")  // 用來匯出資料庫的圖片
	@ResponseBody
	public void showImage(@PathVariable("textId") Long textId, 
							HttpServletResponse response, 
							Optional<ForumJpaBean> product
							) throws ServletException, IOException {
		log.info("textId :: " + textId);
		product = forumJpaService.getTextById(textId);
		response.setContentType("image/jpeg, image/jpg, image/png, image/gif");
		response.getOutputStream().write(product.get().gettextImage());
		response.getOutputStream().close();
	}
	
	//新增頁面
	@RequestMapping(path="/upload", method = {RequestMethod.POST,RequestMethod.GET})
	public String uploadindex(Model m) {
		
		return "forum_Post";

	}
	
	//新增
	@RequestMapping(path="/uploadfile", method = RequestMethod.POST)
	public @ResponseBody ResponseEntity<?> uploadproduct (final @RequestParam("image") MultipartFile file,
																@RequestParam("title") String title, 
																@RequestParam("text") String text,
																@RequestParam("textSub") String textSub,
																@RequestParam("textType") String textType,
																Model model
																){
	try {		
		System.out.println(model);
		Date createDate = new Date();  //沒有建構子會寫入現在時間

		byte[] imageData = file.getBytes();
		ForumJpaBean product = new ForumJpaBean();
			
		if(file.isEmpty()) {
			product.settextImage(null);
			
		}else {
			product.settextImage(imageData);
		}
		
		product.settextImage(imageData);
		
		Member member = memberService.findById((long) Math.floor(Math.random() * 3) + 1);
		product.setMember(member);
		
		product.settextTime(createDate);
		product.setTitle(title);
		product.setText(text);
		product.settextSub(textSub);
		product.settextType(textType);
		product.settextClick((long) 0);
		product.settextReplies((long) 0);

		forumJpaService.save(product);
		
		System.out.println(product);
		
		log.info("HttpStatus===" + new ResponseEntity<>(HttpStatus.OK));
		return new ResponseEntity<>("Product Saved With File - ", HttpStatus.OK);
		
	
	}catch (Exception e) {
		e.printStackTrace();
		log.info("Exception: " + e);
		return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
	}

}
