package com.smhrd.model;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class videoDAO {

	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();

	// 업로드
	public int upload(videoDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.insert("upload", dto);

		session.close();

		return row;
	}

	// SelectAllVideos
	public ArrayList<videoDTO> selectAllVideos (String dto) {
		SqlSession session = sqlSessionFactory.openSession(true);

		List<videoDTO> list = session.selectList("selectAllVideos", dto);
		session.close();

		return (ArrayList<videoDTO>) list;

	}
	
		

		// 가장 마지막 들어온 Thumbnail update
		public int updateThumbnail(String lastThumbnail_new_name) {
			SqlSession session = sqlSessionFactory.openSession(true);
			int row = session.update("updateThumbnail", lastThumbnail_new_name);
			
			session.close();
			
			return row;
			
		}
		
		// Thumbnail 경로 내 마지막 이름 가져오기
		public videoDTO selectLastThumbnail() {
			SqlSession session = sqlSessionFactory.openSession(true);
			videoDTO info = session.selectOne("selectLastThumbnail");
			
			session.close();
			
			return info;
		}
		
		// Thumbnail 경로 내 마지막 두 번째 이름 가져오기
		public videoDTO selectSecondLastThumbnail() {
			SqlSession session = sqlSessionFactory.openSession(true);
			videoDTO info = session.selectOne("selectSecondLastThumbnail");
			
			session.close();
			
			return info;
		}
		
		
}
