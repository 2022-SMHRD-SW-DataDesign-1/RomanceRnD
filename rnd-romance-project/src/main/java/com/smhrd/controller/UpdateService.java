package com.smhrd.controller;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.smhrd.command.Command;
import com.smhrd.model.memberDAO;
import com.smhrd.model.memberDTO;
import com.smhrd.model.videoDTO;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.math.BigDecimal;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class UpdateService implements Command {
	
    public String execute(HttpServletRequest request, HttpServletResponse response)  { 
       
    	System.out.println("[UpdateService]");
		
		//★★★★★★★★★★★★★★★★★★★★★★★
		// 왜 세션받음? 로그인 상태 유지해 놓은 상태로 하니깐, 세션을 받아야한다.
		
		HttpSession session = request.getSession();
		memberDTO info = (memberDTO) session.getAttribute("info");
		System.out.println("UpdateService_Session:"+ info);
		
		

		
		// 파일찾기 Start
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

		/* BigDecimal video_seq = new BigDecimal(multi.getParameter("video_seq")); */
		String member_image_file = multi.getFilesystemName("member_image_file");
		String member_image_path = savePath;
		// date 타입 어케 받아오는 지 모르겠음.
		
		// 주의점 filename은 객체가 좀 다르다 getFilesystemName으로
		//String filename = multi.getFilesystemName("filename");
		
		
		

		

		
		// 2. 사용자가 입력한 데이터 받아오기
		
		//★★★★★★★★★여기가 키포인트임 (저장된 세션 이메일)
		// 이메일은 안바뀌고 update 회원정보 수정이니깐 pw,tel,address만 바뀌어야함
		String member_id = info.getMember_id();
		String member_name = info.getMember_name();
		String member_mbti = multi.getParameter("member_mbti");
		String member_pw = multi.getParameter("member_pw");
		String member_profile = multi.getParameter("member_profile");
		
		System.out.println("member_id"+member_id);
		System.out.println("member_name"+member_name);
		System.out.println("member_profile"+member_profile);
		System.out.println("member_mbti"+member_mbti);
		System.out.println("member_pw"+member_pw);

		System.out.println("member_id :" + member_id);
		System.out.println("member_image_file :" + member_image_file);

		

		if ( member_image_file == null) {
			member_image_file = "default.png";
		}
		if ( member_profile == null) {
			member_profile = info.getMember_profile();
		}
    	// 파일찾기 End
		// dwyane_add
		// 파일 공백 제거
		
		member_image_file = member_image_file.replaceAll("\\s", "");
		
		try {
			// filename = URLEncoder.encode(filename, "UTF-8");
			member_image_file = URLEncoder.encode(member_image_file , "UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		memberDTO updateInfo = new memberDTO(member_pw, member_mbti, member_image_file, member_image_path, member_profile, member_id);
		
		if (member_pw.equals(null)) {
			member_pw = info.getMember_pw();
		}
		
		if (member_image_path.equals(null)) {
			member_image_path = "C:\\Users\\smhrd\\Desktop\\web\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\rnd-romance-project\\file";
		}
		
		int row = new memberDAO().updateId(updateInfo);
						
		if(row > 0) {
			System.out.println("회원정보수정 성공");
			// 수정한 값으로 세션값을 변경
			updateInfo = new memberDTO(member_id, member_pw, member_name ,info.getMember_age() ,info.getMember_type(), info.getMember_profile(), info.getMember_auth(), member_mbti, member_image_path, member_image_file);
			session.setAttribute("info", updateInfo);
		}
		else {
			System.out.println("회원정보수정 실패");
			
		}
		
		return "index.jsp";
    }

}