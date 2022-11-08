package com.smhrd.controller;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.smhrd.command.Command;
import com.smhrd.model.videoDAO;
import com.smhrd.model.videoDTO;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UploadService extends HttpServlet implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		System.out.println("[UploadService]");
		
		// MultipartRequest 파라미터 정리
		// 절대 경로 저장경로(콘솔에 찍어보면 확인가능) ""여기 안에 경로를 적어주면 이 경로에 넣겠다임
		String savePath = request.getServletContext().getRealPath("file");
		System.out.println(savePath);
		
		// 사이즈
		// *1000 해버린 상태임(영상 담기 위해서)
		int maxSize = 1000 * 1024 * 1024;

		// 인코딩 방식
		String encoding = "UTF-8";
		
		// 중복제거 (중복 이름 제거) 해주는 객체
		DefaultFileRenamePolicy rename = new DefaultFileRenamePolicy();
		
		MultipartRequest multi = null;
		try {
			multi = new MultipartRequest(request, savePath, maxSize, encoding, rename);
		} catch (IOException e) {
			e.printStackTrace();
		}
		// new MultipartRequest(request, 저장경로, 사이즈, 인코딩 방식, 중복제거)

		String video_seq = multi.getParameter("video_seq");
		String upload_path = multi.getFilesystemName("upload_path");
		// 주의점 filename은 객체가 좀 다르다 getFilesystemName으로
		//String filename = multi.getFilesystemName("filename");

		try {
			// filename = URLEncoder.encode(filename, "UTF-8");
			upload_path = URLEncoder.encode(upload_path , "UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		// String content = multi.getParameter("content");

		System.out.println("video_seq : " + video_seq);
		System.out.println("upload_path :" + upload_path);
		
		// System.out.println("content : "+ content);
		//System.out.println("filename :"+filename);

		videoDTO dto = new videoDTO(video_seq, upload_path);

		int row = new videoDAO().upload(dto);

		if (row > 0) {
			System.out.println("업로드 성공!");
		} else {
			System.out.println("업로드 실패!");
		}

		return "profile.jsp";
	}

}
