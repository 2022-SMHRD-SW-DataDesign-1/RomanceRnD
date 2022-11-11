package com.smhrd.controller;

import com.smhrd.command.Command;
import com.smhrd.model.CalenderDAO;
import com.smhrd.model.CalenderDTO;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CalenderSurvice
 */
public class CalenderService extends HttpServlet implements Command {
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		System.out.println("[CalenderService]");

		// 2. 사용자가 입력한 데이터 받아오기

		String RESERV_CT = request.getParameter("RESERV_CT");

		System.out.println("RESERV_CT : " + RESERV_CT);

		// 3. dto로 묶기
		/*
		 * CalenderDTO dto = new CalenderDTO(RESERV_CT);
		 * 
		 * // 4. 메소드 호출 int info = new CalenderDAO().Calender(dto);
		 * 
		 * // 5. 성공실패 여부 확인 -> 페이지 이동
		 * 
		 * if(info > 0) { System.out.println("캘린더 삽입 성공");
		 * 
		 * 
		 * HttpSession session = request.getSession();
		 * 
		 * System.out.println(session);
		 * 
		 * session.setAttribute("info", info);
		 * 
		 * 
		 * } else { System.out.println("삽아ㅣㅇ나ㅣㅓㄴㄹ어;ㅏㅣㄴㄹㅇ; 실패"); }
		 */

		return "calender.jsp";
	}

}
