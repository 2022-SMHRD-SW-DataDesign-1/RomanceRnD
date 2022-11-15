package com.smhrd.model;

import java.math.BigDecimal;
import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class recommendationDTO {
	
	private BigDecimal watchseq;
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

	public recommendationDTO(BigDecimal watchseq, String profileId, String profileName, String memberId,
			String memberName) {
		this.watchseq = watchseq;
		this.profileId = profileId;
		this.profileName = profileName;
		this.memberId = memberId;
		this.memberName = memberName;
	}
	
	
}
