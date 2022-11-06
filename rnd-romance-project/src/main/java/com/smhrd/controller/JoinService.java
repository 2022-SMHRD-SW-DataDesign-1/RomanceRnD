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
    	// member_id == email
    	String member_name = request.getParameter("member_name");
		String member_id = request.getParameter("member_id");
		String member_pw = request.getParameter("member_pw");
		
		
		System.out.println("member_name 값 : "+ member_name);
		System.out.println("member_id 값 : "+ member_id);
		System.out.println("member_pw 값 :"+ member_pw);
	
		// DTO에서 만들어놓은것 묶기
		memberDTO dto = new memberDTO(member_id, member_pw, member_name);
		
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


