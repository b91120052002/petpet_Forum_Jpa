package com.petpet.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonFormat;

@Entity
@Table(name = "replies")
public class Replies {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "reply_id")
	private long reply_id;
	
	@Column(name = "reply_text")
	private String reply_text;
	
	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd HH:mm:ss", timezone = "Asia/Taipei")
	@Column(name = "reply_date")
	private Date reply_date;
	
	@ManyToOne
	private Member member;
	
	@ManyToOne
	private ForumJpaBean forumJpaBean;

	public long getReply_id() {
		return reply_id;
	}

	public void setReply_id(long reply_id) {
		this.reply_id = reply_id;
	}

	public String getReply_text() {
		return reply_text;
	}

	public void setReply_text(String reply_text) {
		this.reply_text = reply_text;
	}

	public Date getReply_date() {
		return reply_date;
	}

	public void setReply_date(Date reply_date) {
		this.reply_date = reply_date;
	}

	public Member getMember() {
		return member;
	}

	public void setMember(Member member) {
		this.member = member;
	}

	public ForumJpaBean getForumJpaBean() {
		return forumJpaBean;
	}

	public void setForumJpaBean(ForumJpaBean forumJpaBean) {
		this.forumJpaBean = forumJpaBean;
	}

	public Replies(long reply_id, String reply_text, Date reply_date, Member member, ForumJpaBean forumJpaBean) {
		super();
		this.reply_id = reply_id;
		this.reply_text = reply_text;
		this.reply_date = reply_date;
		this.member = member;
		this.forumJpaBean = forumJpaBean;
	}

	public Replies() {
		super();
	}
}
