package com.smhrd.model;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;


public class memberDAO {

   private SqlSessionFactory sqlSessionFactory = 
         SqlSessionManager.getSqlSession(); 
   
   
   // 로그인, 회원가입, 회원수정, 회원정보 전체 불러오는 메소드, 이메일 중복체크 메소드
   
   // 회원가입 메소드
   public int join(memberDTO dto) {
      SqlSession session = sqlSessionFactory.openSession(true);
      int row = session.insert("join", dto);
      
      session.close();
            
      return row;
   }
   
   // Login 메소드
   public memberDTO login(memberDTO dto) {
      SqlSession session = sqlSessionFactory.openSession(true);
      memberDTO info = session.selectOne("login", dto);
      
      session.close();
      
      return info;
   }
   
   // 회원정보 수정 메소드
      public int updateId(memberDTO dto) {
         SqlSession session = sqlSessionFactory.openSession(true);
         int row = session.update("updateId", dto);
         
         session.close();
         
         return row;
         
      }
   
      // 회원정보 ID로 전체 조회 메소드
      public memberDTO selectAll(String dto) {
         SqlSession session = sqlSessionFactory.openSession(true);
         memberDTO info = session.selectOne("selectAll", dto);
         
         session.close();
         
         return info;
      }
      
      // 회원 아이디 및 이름으로 검색
      public List<memberDTO> searchIdOrName(String dto) {
         SqlSession session = sqlSessionFactory.openSession(true);
         
          List<memberDTO> list = session.selectList("searchIdOrName", dto);
          
          session.close();
          
          return list;
      }
      
      // 회원정보 Name으로 전체 조회 메소드
      public memberDTO selectAllByName(String dto) {
         SqlSession session = sqlSessionFactory.openSession(true);
         memberDTO info = session.selectOne("selectAllByName", dto);
         
         session.close();
         
         return info;
      }
      
  	// SelectMemberAllInWatchVideo
  	public ArrayList<memberDTO> selectAllInVideo (String dto) {
  		SqlSession session = sqlSessionFactory.openSession(true);

  		List<memberDTO> list = session.selectList("selectAllInVideo", dto);
  		session.close();

  		return (ArrayList<memberDTO>) list;

  	}
}