package com.smhrd.controller;

import com.smhrd.command.Command;

import com.smhrd.model.memberDAO;
import com.smhrd.model.memberDTO;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class JoinService extends HttpServlet implements Command {
	
    public String execute(HttpServletRequest request, HttpServletResponse response)  { 
       
    	System.out.println("[JoinService]");
 	
		
		// 데이터 받아오기
		String member_id = request.getParameter("member_id");
		String member_pw = request.getParameter("member_pw");
		String member_name = request.getParameter("member_name");
		String member_age = request.getParameter("member_age");
		String member_type = request.getParameter("member_type");
		String member_profile = request.getParameter("member_profile");
		String member_auth = request.getParameter("member_auth");
		
		System.out.println("member_id 값 : "+ member_id);
		System.out.println("member_pw l값 : "+ member_pw);
		System.out.println("member_name 값 :"+ member_name);
		System.out.println("member_age 값 : "+ member_age);
		System.out.println("member_type 값 : "+ member_type);
		System.out.println("member_profile 값 : "+ member_profile);
		System.out.println("member_auth 값 : "+ member_auth);
		
		// DTO에서 만들어놓은것 묶기
		memberDTO dto = new memberDTO(member_id, member_pw, member_name, member_age, member_type, member_profile, member_auth);
		
		// join메소드 호출
		int row = new memberDAO().join(dto);
		
		
		// 결과값 확인후 페이지 이동
		String moveURL = null;
		
		if(row > 0) {
			System.out.println("회원가입 성공");
			
			// 일단 회원가입 페이지 없어서 임시로 index 보내놈
			moveURL = "./index.jsp";
			request.setAttribute("member_id", member_id);
		}else {
			System.out.println("회원가입 실패");
			moveURL = "./index.jsp";
		}
		
		return moveURL;
    	
    }
}


