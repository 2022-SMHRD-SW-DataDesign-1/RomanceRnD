package com.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class videoDTO {

	private String video_seq;
	private String upload_path;
	private int uc_seq;
	
	
	public videoDTO(String video_seq, String upload_path) {
		this.video_seq = video_seq;
		this.upload_path = upload_path;
	}
}
