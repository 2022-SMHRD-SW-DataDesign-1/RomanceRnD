package com.smhrd.model;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class recommendationDAO {

	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();

		// saveRecommendation
		public int saveRecommendation(recommendationDTO dto) {
			SqlSession session = sqlSessionFactory.openSession(true);
			int row = session.insert("saveRecommendation", dto);

			session.close();

			return row;
		}
		
		// selectWatchHistory
		public List<recommendationDTO> selectWatchHistory (String dto) {
	  		SqlSession session = sqlSessionFactory.openSession(true);
	  		
	  		List<recommendationDTO> list = session.selectList("selectWatchHistory", dto);
	  		System.out.println("여기"+list);
	  		session.close();
	  		
	  		return list;
	  		
	  	}
		
}
