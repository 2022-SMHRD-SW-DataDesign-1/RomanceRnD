package com.smhrd.db;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SqlSessionManager {

	static SqlSessionFactory sqlSessionFactory = null;


	static {
		try {
			String resource = "com/smhrd/db/config.xml"; // xml 파일 경로
			// xml파일 읽어오기 -> inputStream으로 변환
			InputStream inputStream = Resources.getResourceAsStream(resource);
			
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);

		

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	
	public static SqlSessionFactory getSqlSession() {
		return sqlSessionFactory;
	}


}