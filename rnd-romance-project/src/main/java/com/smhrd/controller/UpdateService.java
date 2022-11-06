package com.smhrd.controller;

import com.smhrd.command.Command;
import com.smhrd.model.memberDAO;
import com.smhrd.model.memberDTO;

import java.io.IOException;
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
		request.getSession();
		// ●●●●● 타입을 멤버dto로 형변환 ●●●●●
		memberDTO info = (memberDTO)session.getAttribute("info");
		
		
		// 2. 사용자가 입력한 데이터 받아오기
		
		//★★★★★★★★★여기가 키포인트임 (저장된 세션 이메일)
		// 이메일은 안바뀌고 update 회원정보 수정이니깐 pw,tel,address만 바뀌어야함
		String member_id = info.getMember_id();
		
		
		
		// 여기 값 바꿔주기!!
		
		String member_pw = request.getParameter("member_pw");
		String member_name = request.getParameter("member_name");
		String member_age = request.getParameter("member_age");
		String member_type = request.getParameter("member_type");
		String member_profile = request.getParameter("member_profile");
		String member_auth = request.getParameter("member_auth");
		
		System.out.println("member_id : "+ member_id);
		System.out.println("member_pw : "+ member_pw);
		System.out.println("member_name : "+ member_name);
		System.out.println("member_age : "+ member_age);
		System.out.println("member_type : "+ member_type);
		System.out.println("member_profile : "+ member_profile);
		System.out.println("member_auth : "+ member_auth);
		
	
		
		// 여기 매개변수로 들어가는게 맞는지..?
		memberDTO updateInfo = new memberDTO(member_pw, member_name, member_age, member_type, member_profile, member_auth);
		
		int row = new memberDAO().updateId(updateInfo);
	
	
		
		
		if(row >0) {
			System.out.println("회원정보수정 성공");
			// 수정한 값으로 세션값을 변경
			session.setAttribute("info", updateInfo);
		}
		else {
			System.out.println("회원정보수정 실패");
			
		}
		
		return "index.jsp";
    }


}
