package com.smhrd.controller;

import com.smhrd.command.Command;
import com.smhrd.model.handshakeDAO;
import com.smhrd.model.handshakeDTO;

import java.io.IOException;
import java.math.BigDecimal;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class handshakeService extends HttpServlet implements Command {

    public String execute(HttpServletRequest request, HttpServletResponse response)  { 
    	
    	System.out.println("[handshakeService]");
    	
    	String member_id = request.getParameter("member_id");
    	String hs_id = request.getParameter("hs_id");
    	String profile_name = request.getParameter("profile_name");

    	System.out.println("member_id :" + member_id);
    	System.out.println("hs_id :" + hs_id);
    	System.out.println("profile_name :" + profile_name);
    	
    	handshakeDTO dto = new handshakeDTO(member_id, hs_id);
    	
    	// 팔로우 체크
    	//int row = new handshakeDAO().followCheck(dto);
    	int row = new handshakeDAO().followCheck(dto);
    	    	
    	if(row > 0) {
    		// 팔로우가 된 상태
    		new handshakeDAO().unfollow(dto);
    		System.out.println("핸쉐 해제");
    		
    	}else {
    		// 팔로우가 안된 상태
    		new handshakeDAO().follow(dto);
    		System.out.println("핸쉐 등록");
    	
    	}
    	
    	return "profile.jsp?profile_name="+profile_name;
    }

}
