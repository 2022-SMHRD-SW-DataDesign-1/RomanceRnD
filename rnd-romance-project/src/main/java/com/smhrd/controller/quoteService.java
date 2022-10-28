package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.memberDAO;
import com.smhrd.model.memberDTO;

public class quoteService extends HttpServlet {
	
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		System.out.println("[QuoteService]");
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String mobile = request.getParameter("mobile");
		String serviceType = request.getParameter("service");
		
		System.out.println("name 값 :"+ name);
		System.out.println("email 값 :"+ email);
		System.out.println("mobile 값 :"+ mobile);
		System.out.println("serviceType 값 :"+ serviceType);
		
		memberDTO dto = new memberDTO(name, email, mobile, serviceType);
		
		int row = new memberDAO().quoteLogin(dto);
	
	
		
		if(row > 0) {
			System.out.println("로그인 성공");
			HttpSession session = request.getSession();
			
			session.setAttribute("info", dto);
			
			
		}else {
			System.out.println("로그인 실패");
		}
		
	
		
		
		
		
	}

}
