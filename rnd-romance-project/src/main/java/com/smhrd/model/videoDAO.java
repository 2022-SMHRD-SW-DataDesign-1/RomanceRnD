package com.smhrd.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class videoDAO {

	private SqlSessionFactory sqlSessionFactory = 
			SqlSessionManager.getSqlSession(); 
	
	// 업로드
	public int upload(videoDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.insert("upload", dto);
		
		session.close();
		
		return row;
	}
	
}
