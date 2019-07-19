package com.edu.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.edu.common.Search;
import com.edu.domain.BoardVO;



@Repository
public class BoardDAOImpl implements BoardDAO {

	

	@Inject
	private SqlSession sqlSession;


	@Override

	public List<BoardVO> getBoardList(Search search) throws Exception {
		return sqlSession.selectList("com.edu.mappers.boardMapper.getBoardList", search);
	}


	@Override

	public BoardVO getBoardContent(int bid) throws Exception {
		return sqlSession.selectOne("com.edu.mappers.boardMapper.getBoardContent", bid);
	}


	@Override
	public int insertBoard(BoardVO boardVO) throws Exception {
		return sqlSession.insert("com.edu.mappers.boardMapper.insertBoard", boardVO);
	}


	@Override
	public int updateBoard(BoardVO boardVO) throws Exception {
		return sqlSession.update("com.edu.mappers.boardMapper.updateBoard", boardVO);
	}



	@Override
	public int deleteBoard(int bid) throws Exception {
		return sqlSession.insert("com.edu.mappers.boardMapper.deleteBoard", bid);
	}


	@Override
	public int updateViewCnt(int bid) throws Exception {
		return sqlSession.update("com.edu.mappers.boardMapper.updateViewCnt", bid);
	}
	
	//페이징 : 총 게시글 개수 확인
	//검색기능 :Search search
	@Override
		public int getBoardListCnt(Search search) throws Exception {
			return sqlSession.selectOne("com.edu.mappers.boardMapper.getBoardListCnt",search);

		}




}

