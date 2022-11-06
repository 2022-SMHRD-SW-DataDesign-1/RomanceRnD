package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.command.Command;
import com.smhrd.model.memberDAO;
import com.smhrd.model.memberDTO;

public class LoginService implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response) {
	
		System.out.println("[LoginService]");
		

		// 2. 사용자가 입력한 데이터 받아오기
		String member_id = request.getParameter("member_id");
		String member_pw = request.getParameter("member_pw");
		
		System.out.println("member_id : "+ member_id);
		System.out.println("member_pw : "+ member_pw);
		
		// 3. dto로 묶기(매개 변수로 들어갈 값 : name, pw로 바꾸어야함)
		memberDTO dto = new memberDTO(member_id, member_pw);
		
		// 4. login메소드 호출
		memberDTO info = new memberDAO().login(dto);
		
		// 5. 성공실패 여부 확인 -> 페이지 이동

		if(info != null) {
			System.out.println("로그인 성공");
			
			// ★★★★★★★★★★★★★★★
			// session으로 로그인 정보 유지(로그인한후 메인에 로그인아디뜨게하기)
			HttpSession session = request.getSession();
			
			System.out.println(session);
			
			session.setAttribute("info", info);
			
		}
		else {
			System.out.println("로그인 실패");
		}
		
		return "index.jsp";
	}

}
