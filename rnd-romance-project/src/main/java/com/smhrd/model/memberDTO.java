package com.smhrd.model;

import java.math.BigDecimal;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class memberDTO {

	private String member_id;
	private String member_pw;
	private String member_name;
	private BigDecimal member_age;
	private String member_type;
	private String member_profile;
	private String member_auth;
	private String member_mbti;
	private String member_image_file;
	private String member_image_path;

	public memberDTO(String member_id, String member_pw, String member_name) {
		this.member_id = member_id;
		this.member_pw = member_pw;
		this.member_name = member_name;
	}

	public memberDTO(String member_name, String member_pw) {
		this.member_name = member_name;
		this.member_pw = member_pw;
	}

	public memberDTO(String member_pw, String member_name, BigDecimal member_age, String member_type,
			String member_profile, String member_auth) {
		this.member_pw = member_pw;
		this.member_name = member_name;
		this.member_age = member_age;
		this.member_type = member_type;
		this.member_profile = member_profile;
		this.member_auth = member_auth;
	}

	public memberDTO(String member_id, String member_pw, String member_mbti, String member_image_file,
			String member_image_path) {
		this.member_id = member_id;
		this.member_pw = member_pw;
		this.member_mbti = member_mbti;
		this.member_image_file = member_image_file;
		this.member_image_path = member_image_path;
	}

	public memberDTO(String member_pw) {
		// TODO Auto-generated constructor stub
		this.member_pw = member_pw;

	}

}