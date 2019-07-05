package com.edu.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.edu.domain.BoardVO;

@Repository
public class BoardDAOImpl implements BoardDAO {

	@Inject
	private SqlSession sql;
	
	// namespace 조심하자
	// namespace 조심하자
	// namespace 조심하자
	private static String namespace = "com.edu.mappers.boardMapper";
	
	// 게시물 작성
	@Override
	public void write(BoardVO vo) throws Exception {
		sql.insert(namespace + ".write", vo);
	}

	// 게시물 수정
	@Override
	public void update(BoardVO vo) throws Exception {
		sql.update(namespace + ".update", vo);
	}

	// 게시물 삭제
	@Override
	public void delete(String notice_code) throws Exception {
		System.out.println(namespace+".delete : "+notice_code);
		sql.delete(namespace + ".delete", notice_code);
	}

	// 게시물 조회
	@Override
	public BoardVO view(String notice_code) throws Exception {
		return sql.selectOne(namespace + ".view", notice_code);
	}

	// 게시물 목록
	@Override
	public List<BoardVO> list() throws Exception {
		return sql.selectList(namespace + ".list");
	}

}
