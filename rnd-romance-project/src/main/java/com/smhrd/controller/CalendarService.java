package com.smhrd.controller;

import com.smhrd.command.Command;
import com.smhrd.model.CalenderDAO;
import com.smhrd.model.CalenderDTO;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.json.JSONParser;
import org.json.JSONObject;

public class CalendarService extends HttpServlet implements Command {
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		System.out.println("[CalenderService]");

		String jsondata = request.getParameter("data");
		String content = request.getParameter("content");
		String cost = request.getParameter("cost");
		System.out.println("jsondata: "+ jsondata);
		System.out.println("jsondata1: "+ content);
		System.out.println("jsondata2: "+ cost);
		
		return "calender.jsp";
	}

}
