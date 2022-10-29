package com.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Getter
@AllArgsConstructor
@RequiredArgsConstructor
public class memberDTO {


	@NonNull private String name;
	@NonNull private String email;
	@NonNull private String mobile;
	@NonNull private String serviceType;
	
}
