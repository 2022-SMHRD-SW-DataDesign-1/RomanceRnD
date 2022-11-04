package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.command.Command;

public class LogoutService implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		System.out.println("[LogoutService]");
		
		// 로그아웃 : 로그인 된 정보 지우기
		//		  == session info 지우기
		
		HttpSession session = request.getSession();
		
		// 특정 세션 삭제 (info-> 이미 로그인된 세션)
		session.removeAttribute("info");
		System.out.println("로그아웃 성공");
		// 전체 세션 종료
		//session.invalidate();
		
		return "index.jsp";
	}

}
