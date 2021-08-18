package com.petpet.forum.model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "member")
public class Member {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Long id;
	
	@Column(name = "memberid")
	private String memberid;
	
	@OneToMany(mappedBy = "member", targetEntity = ForumJpaBean.class, cascade = CascadeType.ALL)
	private Set<ForumJpaBean> member = new HashSet<ForumJpaBean>();
	
	@OneToMany(mappedBy = "member", targetEntity = Replies.class, cascade = CascadeType.ALL)
	private Set<Replies> memberR = new HashSet<Replies>();

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getMemberid() {
		return memberid;
	}

	public void setMemberid(String memberid) {
		this.memberid = memberid;
	}

	public Set<ForumJpaBean> getMember() {
		return member;
	}

	public void setMember(Set<ForumJpaBean> member) {
		this.member = member;
	}

	public Set<Replies> getMemberR() {
		return memberR;
	}

	public void setMemberR(Set<Replies> memberR) {
		this.memberR = memberR;
	}

	public Member(Long id, String memberid, Set<ForumJpaBean> member, Set<Replies> memberR) {
		super();
		this.id = id;
		this.memberid = memberid;
		this.member = member;
		this.memberR = memberR;
	}

	public Member() {
		super();
	}

	
	
	
}
