package com.smhrd.model;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class recommendationPfDAO {

	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();

	public int saveProfileRecommendation(recommendationPfDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.insert("saveProfileRecommendation", dto);

		session.close();

		return row;
	}
	
	// selectWatchHistory
	public List<recommendationPfDTO> selectHistoryWatchProfile (String dto) {
  		SqlSession session = sqlSessionFactory.openSession(true);
  		
  		List<recommendationPfDTO> list = session.selectList("selectHistoryWatchProfile", dto);
  		session.close();
  		System.out.println("여기"+list);
  		
  		return list;
  	}
		
}
