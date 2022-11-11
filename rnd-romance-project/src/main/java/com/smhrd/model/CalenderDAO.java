package com.smhrd.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class CalenderDAO {

	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();

	public int Calender(CalenderDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.insert("calender", dto);

		session.close();

		return row;

	}

}
