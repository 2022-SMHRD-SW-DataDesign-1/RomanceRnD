package com.smhrd.model;

import java.math.BigDecimal;

public class memberDTO {

	private String member_id;
	private String member_pw;
	private String member_name;
	private BigDecimal member_age;
	private String member_type;
	private String member_profile;
	private String member_auth;
	
	
	
	public memberDTO(String member_id, String member_pw, String member_name, BigDecimal member_age, String member_type,
			String member_profile, String member_auth) {
		this.member_id = member_id;
		this.member_pw = member_pw;
		this.member_name = member_name;
		this.member_age = member_age;
		this.member_type = member_type;
		this.member_profile = member_profile;
		this.member_auth = member_auth;
	}

	public memberDTO(String member_id, String member_pw) {
		
		this.member_id = member_id;
		this.member_pw = member_pw;
	}

	public memberDTO(String member_id, String member_pw, String member_name) {
		
		this.member_id = member_id;
		this.member_pw = member_pw;
		this.member_name = member_name;
	}
	
	
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getMember_pw() {
		return member_pw;
	}
	public void setMember_pw(String member_pw) {
		this.member_pw = member_pw;
	}
	public String getMember_name() {
		return member_name;
	}
	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}
	public BigDecimal getMember_age() {
		return member_age;
	}
	public void setMember_age(BigDecimal member_age) {
		this.member_age = member_age;
	}
	public String getMember_type() {
		return member_type;
	}
	public void setMember_type(String member_type) {
		this.member_type = member_type;
	}
	public String getMember_profile() {
		return member_profile;
	}
	public void setMember_profile(String member_profile) {
		this.member_profile = member_profile;
	}
	public String getMember_auth() {
		return member_auth;
	}
	public void setMember_auth(String member_auth) {
		this.member_auth = member_auth;
	}
	
	
	
}
