package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class handshakeDAO {
	
	private SqlSessionFactory sqlSessionFactory = 
			SqlSessionManager.getSqlSession(); 
	
	// 팔로우
	public int follow(handshakeDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		
		int row = session.insert("follow",dto);
		
		session.close();
		
		return row;
	}
		
	// 언팔로우
	public int unfollow(handshakeDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		
		int row = session.delete("unfollow",dto);
		
		session.close();
		
		return row;
	}
	
	// 팔로우 여부 체크
	public int followCheck(handshakeDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		
		int row =session.selectOne("followCheck", dto);
	
		session.close();
		
		return row;
	}
	
	// 내가 팔로우한 사람
	public int followCnt(String dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		
		int row =session.selectOne("followCnt", dto);
	
		session.close();
		
		return row;
	}
	
	// 상대가 나를 팔로우한 사람
		public int followerCnt(String dto) {
			SqlSession session = sqlSessionFactory.openSession(true);
			
			int row =session.selectOne("followerCnt", dto);
		
			session.close();
			
			return row;
		}
	

	
}
