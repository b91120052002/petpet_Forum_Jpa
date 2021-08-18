package com.petpet.forum.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonFormat;

@Entity
@Table(name = "forum_onetomany")
public class ForumJpaBean {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "text_id")
	private Long textId;
	
	@Column(name = "title")
	private String title;
	
	@Column(name = "text")
	private String text;
	
	@Column(name = "text_time")
	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd HH:mm:ss", timezone = "Asia/Taipei")
	private Date textTime;
	
	@Column(name = "text_sub")
	private String textSub;
	
	@Column(name = "text_type")
	private String textType;
	
	@Column(name = "text_image")
	@Lob
	private byte[] textImage;
	
	@Column(name = "text_click")
	private Long textClick;
	
	@Column(name = "text_replies")
	private Long textReplies;
	

	@ManyToOne
	private Member member;
	
	@OneToMany(mappedBy = "forumJpaBean", targetEntity = Replies.class, cascade = CascadeType.ALL)
	private List<Replies> fbR = new ArrayList<Replies>();

	public Long getTextId() {
		return textId;
	}

	public void setTextId(Long textId) {
		this.textId = textId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public Date gettextTime() {
		return textTime;
	}

	public void settextTime(Date textTime) {
		this.textTime = textTime;
	}

	public String gettextSub() {
		return textSub;
	}

	public void settextSub(String textSub) {
		this.textSub = textSub;
	}

	public String gettextType() {
		return textType;
	}

	public void settextType(String textType) {
		this.textType = textType;
	}

	public byte[] gettextImage() {
		return textImage;
	}

	public void settextImage(byte[] textImage) {
		this.textImage = textImage;
	}

	public Long gettextClick() {
		return textClick;
	}

	public void settextClick(Long textClick) {
		this.textClick = textClick;
	}

	public Long gettextReplies() {
		return textReplies;
	}

	public void settextReplies(Long textReplies) {
		this.textReplies = textReplies;
	}

	public Member getMember() {
		return member;
	}

	public void setMember(Member member) {
		this.member = member;
	}

	public List<Replies> getFbR() {
		return fbR;
	}

	public void setFbR(List<Replies> fbR) {
		this.fbR = fbR;
	}

	public ForumJpaBean(Long textId, String title, String text, Date textTime, String textSub, String textType,
			byte[] textImage, String textImage_name, Long textClick, Long textReplies, Member member,
			List<Replies> fbR) {
		super();
		this.textId = textId;
		this.title = title;
		this.text = text;
		this.textTime = textTime;
		this.textSub = textSub;
		this.textType = textType;
		this.textImage = textImage;
		this.textClick = textClick;
		this.textReplies = textReplies;
		this.member = member;
		this.fbR = fbR;
	}

	public ForumJpaBean() {
	}

	

	

	

	
}
