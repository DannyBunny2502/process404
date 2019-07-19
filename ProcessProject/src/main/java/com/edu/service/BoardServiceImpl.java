package com.edu.service;


import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.edu.common.Search;
import com.edu.dao.BoardDAO;
import com.edu.domain.BoardVO;



@Service

public class BoardServiceImpl implements BoardService{


	@Inject
	private BoardDAO boardDAO;

	
	public List<BoardVO> getBoardList(Search search) throws Exception {
		return boardDAO.getBoardList(search);
	}


	@Override
	public void insertBoard(BoardVO boardVO) throws Exception {
		boardDAO.insertBoard(boardVO);
	}
	
	//페이징: 주석풀기
	@Transactional
	@Override
	public BoardVO getBoardContent(int bid) throws Exception{
		BoardVO boardVO = new BoardVO();

		// 조회수를 업데이트 시키는 DAO를 먼저 호출하고,
		boardDAO.updateViewCnt(bid);
		// 게시글을 읽어와 return 해주기.
		boardVO = boardDAO.getBoardContent(bid);

		return boardVO;
	}
	
	
	//게시글 수정
	@Override
	public void updateBoard(BoardVO boardVO)throws Exception {
		boardDAO.updateBoard(boardVO);
	}
	
	//게시글 삭제
	@Override
	public void deleteBoard(int bid) throws Exception {
		 boardDAO.deleteBoard(bid);
	}
	
	//페이징 : 총 게시글 개수 확인
	@Override
	public int getBoardListCnt(Search search) throws Exception {
		return boardDAO.getBoardListCnt(search);
	}



	



}