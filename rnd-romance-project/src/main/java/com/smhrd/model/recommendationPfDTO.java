package com.smhrd.model;

import java.math.BigDecimal;
import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class recommendationPfDTO {
	
	private BigDecimal watchseq;
	private String profileChckId;
	private String profileChckName;
	private String memberChckId;
	private String memberChckName;
	
	public recommendationPfDTO(String profileChckId, String profileChckName, String memberChckId, String memberChckName) {
		this.profileChckId = profileChckId;
		this.profileChckName = profileChckName;
		this.memberChckId = memberChckId;
		this.memberChckName = memberChckName;
	}

	public recommendationPfDTO(BigDecimal watchseq, String profileChckId, String profileChckName, String memberChckId,
			String memberChckName) {
		this.watchseq = watchseq;
		this.profileChckId = profileChckId;
		this.profileChckName = profileChckName;
		this.memberChckId = memberChckId;
		this.memberChckName = memberChckName;
	}
	
	
}
