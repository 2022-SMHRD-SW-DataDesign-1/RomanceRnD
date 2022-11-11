package com.smhrd.model;

import lombok.AllArgsConstructor;

//@AllArgsConstructor
public class CalenderDTO {

	private String RESERV_CT;

	public CalenderDTO(String RESERV_CT) {
		super();
		this.RESERV_CT = RESERV_CT;
	}

	public String getRESERV_CT() {
		return RESERV_CT;
	}

	public void setTitle(String RESERV_CT) {
		this.RESERV_CT = RESERV_CT;
	}
	
	
	
	
}
