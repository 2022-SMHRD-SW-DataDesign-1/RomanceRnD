package com.smhrd.model;

import java.math.BigDecimal;
import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class recommendationDTO {
	
	private String watchseq;
	private String profileId;
	private String profileName;
	private String memberId;
	private String memberName;
	
	public recommendationDTO(String profileId, String profileName, String memberId, String memberName) {
		this.profileId = profileId;
		this.profileName = profileName;
		this.memberId = memberId;
		this.memberName = memberName;
	}
	
	
}
