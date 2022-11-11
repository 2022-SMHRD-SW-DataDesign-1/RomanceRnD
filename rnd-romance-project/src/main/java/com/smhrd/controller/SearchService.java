package com.smhrd.controller;

import com.smhrd.command.Command;
import com.smhrd.model.memberDAO;
import com.smhrd.model.memberDTO;
import com.smhrd.model.videoDAO;
import com.smhrd.model.videoDTO;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class SearchService extends HttpServlet implements Command {

    @SuppressWarnings("unlikely-arg-type")
	public String execute(HttpServletRequest request, HttpServletResponse response)  { 
    	
    	System.out.println("[SearchService]");
    	
    	String profile_id= request.getParameter("profile_id");
    	String member_id= request.getParameter("member_id");
    	String member_name = request.getParameter("member_name");
    	
    	System.out.println("profile_id :" + profile_id);
    	System.out.println("member_id :" + member_id);
    	System.out.println("member_name :" + member_name);
    	
    	
    	//videoDTO dto = new videoDTO();
    	memberDTO dto = new memberDTO();
    	
    	List<videoDTO> list = new memberDAO().searchVideo();
    	
    	if(list.equals("member_name") && list.equals(member_id) ) {
    		System.out.println("서치 성공");
    	}else {
    		System.out.println("서치 실패");
    	}
    	
    	return "profile.jsp";
    }

}