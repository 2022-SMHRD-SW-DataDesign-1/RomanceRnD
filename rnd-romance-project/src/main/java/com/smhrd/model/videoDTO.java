package com.smhrd.model;

import java.math.BigDecimal;
import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class videoDTO {

	private BigDecimal video_seq;
	private String member_id;
	//private String upload_path;
	private String video_file;
	private BigDecimal video_price;
	private String video_desc;
	private Date upload_dt;
	private String permissions;
	
}
