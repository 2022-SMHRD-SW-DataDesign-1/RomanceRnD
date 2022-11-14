package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class categoryDAO {
	
	private SqlSessionFactory sqlSessionFactory = 
			SqlSessionManager.getSqlSession(); 
	
	// 회원가입 후 카테고리 추가
	public int insertCat(String member_cat_id) {
		SqlSession session = sqlSessionFactory.openSession(true);
		
		int row = session.insert("insertCat",member_cat_id);
		
		session.close();
		
		return row;
	}

	public int updateCat(categoryDTO catDTO) {
		SqlSession session = sqlSessionFactory.openSession(true);
		
		int row = session.update("updateCat", catDTO);
		
		session.close();
		
		return row;
	}

	
}
