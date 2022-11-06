package com.smhrd.frontcontroller;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.smhrd.command.Command;
import com.smhrd.controller.JoinService;
import com.smhrd.controller.LoginService;
import com.smhrd.controller.LogoutService;
import com.smhrd.controller.UpdateService;






public class FrontController extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// url mapping값 : *.do
		// * == all
		// 앞에 어떤 요청이든 .do 라는 확장자가 붙어있으면 전부 FrontController를 요청
		
		
		// ★★★★★★★★★★★★★★★★위치★★★★★★★★★★★★★★
		// 애초에 frontcontroller시작 할때 인코딩 다해줘서 메소드 호출하려고
		request.setCharacterEncoding("UTF-8");
		
		
		// 어디서 요청이 들어왔는지 확인! (리퀘스트 객체)
		String reqURI = request.getRequestURI();
		// 로그인 누르면 LoginService.do가 뜨게 됌
		System.out.println(reqURI);
		
		// 프로젝트 이름 확인
		// /maven_MessageSystem_board_frontController 까지 나오도록(로그인서비스.do빼고)
		String ContextPath = request.getContextPath();
		System.out.println(ContextPath);
		
		// substring 사용해서 url mapping값만 짜르기!
		// 잘라낼문자열.substring(start, end): start위치부터 end 전까지 문자열 잘라내기
		// 잘라낼문자열.substring(start) : start위치부터 끝까지 문자열 잘라내기
		
		String result = reqURI.substring(ContextPath.length()+1);
		System.out.println(result);
		
		
		
		
		// ★★★★★★★★★★★★★★★★★★★★★★★★★★FrontController로 기능 몰아넣기★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★ 
		// 미리 각각 서비스 만들어놓은거 붙여넣기
	
		// ★★★★★★★★★★★★★★★null로 지정 해주어야함
		Command service = null;
		
		// 일단 로그인으로 만들어놓은것
		if(result.equals("JoinService.do")) {
			// 사용자가 입력한 email, pw 받아와서 db에 있는지 없는지 확인후 페이지이동
			
			service = new JoinService();
			
		}else if(result.equals("LogoutService.do")) {
		
			service = new LogoutService();
			
		}else if(result.equals("LoginService.do")) {
		
			service = new LoginService();
			
		}else if(result.equals("UpdateService.do")) {
			
			service = new UpdateService();
		}
		
		
		// service
		
		String moveURL = service.execute(request, response);
		
		// moveURL이 null이 아니라면 포워드 방식으로 객체를 밀어줌
		
		if(moveURL != null) {
			RequestDispatcher rd = request.getRequestDispatcher(moveURL);
			rd.forward(request, response);
		}
		
		
		
		
	}

}
