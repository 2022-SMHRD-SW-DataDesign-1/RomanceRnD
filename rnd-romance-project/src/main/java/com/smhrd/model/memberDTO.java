package com.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Getter
@AllArgsConstructor
@RequiredArgsConstructor
public class memberDTO {

	
	@NonNull private String member_id;
	@NonNull private String member_pw;
	private String member_name;
	private String member_age;
	private String member_type;
	private String member_profile;
	private String member_auth;
	
}
