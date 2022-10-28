package com.smhrd.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;


public class memberDAO {

	private SqlSessionFactory sqlSessionFactory = 
			SqlSessionManager.getSqlSession(); 
	
	
	// 로그인, 회원가입, 회원수정, 회원정보 전체 불러오는 메소드, 이메일 중복체크 메소드
	
	// quoteLogin 로그인 메소드
	public int quoteLogin(memberDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.selectOne("quoteLogin", dto);
		
		session.close();
				
		return row;
	}
	
}
