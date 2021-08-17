package com.petpet.model;

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
	private Long text_id;
	
	@Column(name = "title")
	private String title;
	@Column(name = "text")
	private String text;
	@Column(name = "text_time")
	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd HH:mm:ss", timezone = "Asia/Taipei")
	private Date text_time;
	@Column(name = "text_sub")
	private String text_sub;
	@Column(name = "text_type")
	private String text_type;
	@Column(name = "text_image")
	@Lob
	private byte[] text_image;
	@Column(name = "text_image_name")
	private String text_image_name;
	@Column(name = "text_click")
	private Long text_click;
	@Column(name = "text_replies")
	private Long text_replies;
	

	@ManyToOne
	private Member member;
	
	@OneToMany(mappedBy = "forumJpaBean", targetEntity = Replies.class, cascade = CascadeType.ALL)
	private List<Replies> fbR = new ArrayList<Replies>();

	public Long getText_id() {
		return text_id;
	}

	public void setText_id(Long text_id) {
		this.text_id = text_id;
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

	public Date getText_time() {
		return text_time;
	}

	public void setText_time(Date text_time) {
		this.text_time = text_time;
	}

	public String getText_sub() {
		return text_sub;
	}

	public void setText_sub(String text_sub) {
		this.text_sub = text_sub;
	}

	public String getText_type() {
		return text_type;
	}

	public void setText_type(String text_type) {
		this.text_type = text_type;
	}

	public byte[] getText_image() {
		return text_image;
	}

	public void setText_image(byte[] text_image) {
		this.text_image = text_image;
	}

	public String getText_image_name() {
		return text_image_name;
	}

	public void setText_image_name(String text_image_name) {
		this.text_image_name = text_image_name;
	}

	public Long getText_click() {
		return text_click;
	}

	public void setText_click(Long text_click) {
		this.text_click = text_click;
	}

	public Long getText_replies() {
		return text_replies;
	}

	public void setText_replies(Long text_replies) {
		this.text_replies = text_replies;
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

	public ForumJpaBean(Long text_id, String title, String text, Date text_time, String text_sub, String text_type,
			byte[] text_image, String text_image_name, Long text_click, Long text_replies, Member member,
			List<Replies> fbR) {
		super();
		this.text_id = text_id;
		this.title = title;
		this.text = text;
		this.text_time = text_time;
		this.text_sub = text_sub;
		this.text_type = text_type;
		this.text_image = text_image;
		this.text_image_name = text_image_name;
		this.text_click = text_click;
		this.text_replies = text_replies;
		this.member = member;
		this.fbR = fbR;
	}

	public ForumJpaBean() {
	}

	

	

	

	
}
