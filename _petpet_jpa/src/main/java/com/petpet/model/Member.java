package com.petpet.model;

import java.util.HashSet;
import java.util.Set;

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
	
	@OneToMany(mappedBy = "member", targetEntity = ForumJpaBean.class)
	private Set<ForumJpaBean> member = new HashSet<ForumJpaBean>();

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

	public Member(Long id, String memberid, Set<ForumJpaBean> member) {
		super();
		this.id = id;
		this.memberid = memberid;
		this.member = member;
	}

	public Member() {
		super();
	}

	@Override
	public String toString() {
		return "Member [id=" + id + ", memberid=" + memberid + ", member=" + member + "]";
	}
	
	
	
}
