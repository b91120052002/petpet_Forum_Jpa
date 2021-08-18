package com.petpet.forum.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonFormat;

@Entity
@Table(name = "replies")
public class Replies {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "reply_id")
	private long replyId;
	
	@Column(name = "reply_text")
	private String replyText;
	
	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd HH:mm:ss", timezone = "Asia/Taipei")
	@Column(name = "reply_date")
	private Date replyDate;
	
	@ManyToOne
	private Member member;
	
	@ManyToOne
	private ForumJpaBean forumJpaBean;

	public long getreplyId() {
		return replyId;
	}

	public void setreplyId(long replyId) {
		this.replyId = replyId;
	}

	public String getreplyText() {
		return replyText;
	}

	public void setreplyText(String replyText) {
		this.replyText = replyText;
	}

	public Date getreplyDate() {
		return replyDate;
	}

	public void setreplyDate(Date replyDate) {
		this.replyDate = replyDate;
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

	public Replies(long replyId, String replyText, Date replyDate, Member member, ForumJpaBean forumJpaBean) {
		super();
		this.replyId = replyId;
		this.replyText = replyText;
		this.replyDate = replyDate;
		this.member = member;
		this.forumJpaBean = forumJpaBean;
	}

	public Replies() {
		super();
	}
}
