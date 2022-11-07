package com.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class videoDTO {

	private int video_seq;
	private String upload_path;
	private int uc_seq;
}
