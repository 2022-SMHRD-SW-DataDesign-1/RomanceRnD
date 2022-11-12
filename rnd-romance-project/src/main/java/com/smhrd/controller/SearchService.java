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
    	
    	String searchIdOrName= request.getParameter("searchIdOrName");
    	System.out.println("searchIdOrName :" + searchIdOrName);
    	
    	//videoDTO dto = new videoDTO();
    	memberDTO dto = new memberDTO();
    	
    	List<memberDTO> list = new memberDAO().searchIdOrName(searchIdOrName);
    	
    	System.out.println("list"+ list);
    	System.out.println("list"+ list.size());
    	
    	if (list.size() == 0) {
    		System.out.println("서치 실패");
    		return "404.jsp";
    	}else {
    		System.out.println("서치 성공");
    	}
    	
    	String res = list.get(0).getMember_name();
    	
    	return "profile.jsp?profile_name="+res;
    }

}