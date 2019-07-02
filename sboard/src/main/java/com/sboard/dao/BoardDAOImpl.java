package com.sboard.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.sboard.domain.BoardVO;

//-------------------------------------------------------------------------
// public class BoardDAOImpl implements BoardDAO
//-------------------------------------------------------------------------
// @Repository는 현재 이 클래스가 DAO라는 것을 스프링에게 알려준다.
@Repository
public class BoardDAOImpl implements BoardDAO {

	//@Inject는 미리 등록한 Bean을 스프링이 자동으로 연결해준다.
	@Inject
	private SqlSession sql;
	
	private static String namespace = "com.sboard.mappers.boardMapper";
	
	//-------------------------------------------------------------------------
	// 게시물 등록
	//-------------------------------------------------------------------------
	@Override
	public void write(BoardVO vo) throws Exception {

		sql.insert(namespace + ".write", vo);

	}

} // End - public class BoardDAOImpl implements BoardDAO
















