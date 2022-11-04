package com.smhrd.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Command {

	
	// interface : 골격(ex>이력서)
	// 추상 메소드 : 값은 없지만, 메소드의 기본값을 설정해주는 역할
	// abstract라는 것은 생략가능
	public abstract String execute(HttpServletRequest request, HttpServletResponse response);
	
	// ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
	// 인터페이스에서 execute메소드 왜 만들어 놓음?
	// 상속시켜서 execute 계속 frontcontroller에서 호출해주려고 
		
}
