package com.smhrd.model;

import java.math.BigDecimal;
import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class recommendationPfDTO {
	
	private String watchseq;
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
	
	
}
