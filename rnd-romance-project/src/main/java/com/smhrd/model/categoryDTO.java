package com.smhrd.model;

import java.math.BigDecimal;
import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor

public class categoryDTO { 

	private String member_cat;
	private String member_cat_id;
	
	public categoryDTO(String member_cat, String member_cat_id) {
		this.member_cat = member_cat;
		this.member_cat_id = member_cat_id;
		
	}


}

