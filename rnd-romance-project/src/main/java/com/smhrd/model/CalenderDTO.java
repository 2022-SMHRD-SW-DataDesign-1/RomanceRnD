package com.smhrd.model;

import java.math.BigDecimal;
import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class CalenderDTO {

	private int hs_seq;
	private String member_id;
	private String hs_id;
	private Date hs_date;
	
	public CalenderDTO(String member_id, String hs_id) {
		this.member_id = member_id;
		this.hs_id = hs_id;
		
	}

}
