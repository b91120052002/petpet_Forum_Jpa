package com.petpet.model;

import java.util.Arrays;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonFormat;

@Entity
@Table(name = "forum_jpa")
public class ForumJpaBean {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long textId;
	// 會員Bean的帳號
	private String email;
	private String title;
	private String text;
	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd HH:mm:ss", timezone = "Asia/Taipei")
	private Date text_time;
	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd HH:mm:ss", timezone = "Asia/Taipei")
	private String text_sub;
	private String text_type;
	private byte[] text_image;

	
	public ForumJpaBean() {
		super();
	}

	public ForumJpaBean(Long textId, String email, String title, String text, Date text_time, String text_sub,
			String text_type, byte[] text_image) {
		super();
		this.textId = textId;
		this.email = email;
		this.title = title;
		this.text = text;
		this.text_time = text_time;
		this.text_sub = text_sub;
		this.text_type = text_type;
		this.text_image = text_image;
	}

	public Long getTextId() {
		return textId;
	}

	public void setTextId(Long textId) {
		this.textId = textId;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
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

	@Override
	public String toString() {
		return "ForumJpaBean [textId=" + textId + ", email=" + email + ", title=" + title + ", text=" + text
				+ ", text_time=" + text_time + ", text_sub=" + text_sub + ", text_type=" + text_type + ", text_image="
				+ Arrays.toString(text_image) + "]";
	}

}
