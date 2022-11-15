package com.smhrd.controller;

import com.smhrd.command.Command;
import com.smhrd.model.memberDAO;
import com.smhrd.model.memberDTO;
import com.smhrd.model.recommendationDTO;
import com.smhrd.model.videoDAO;
import com.smhrd.model.videoDTO;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;


public class RecommendationService extends HttpServlet implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response)  { 
    	
		HttpSession session = request.getSession();
		memberDTO info = (memberDTO) session.getAttribute("info");
    	
		
    	
    	return "index.jsp";
    }

}