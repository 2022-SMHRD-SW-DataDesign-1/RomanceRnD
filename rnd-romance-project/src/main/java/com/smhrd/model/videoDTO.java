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
	// private String upload_path;
	private String video_file;
	private BigDecimal video_price;
	private String video_desc;
	private Date upload_dt;
	private String permissions;
	private String video_path;
	private String video_thumbnail;
	

	public videoDTO(String member_id) {
		this.member_id = member_id;
	}
	
	public videoDTO(BigDecimal video_seq, String video_file) {
		this.video_seq = video_seq;
		this.video_file = video_file;
	}

	public videoDTO(BigDecimal video_seq, String member_id, String video_file, BigDecimal video_price,
			String video_desc, String permissions) {
		this.member_id = member_id;
		this.video_file = video_file;
		this.video_price = video_price;
		this.video_desc = video_desc;
	}

	public videoDTO(String member_id, String video_file, BigDecimal video_price, String video_desc, String video_path) {
		this.member_id = member_id;
		this.video_file = video_file;
		this.video_price = video_price;
		this.video_desc = video_desc;
		this.video_path = video_path;
	}

}
