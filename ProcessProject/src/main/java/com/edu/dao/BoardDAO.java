package com.edu.dao;


import java.util.List;

import com.edu.common.Search;
import com.edu.domain.BoardVO;



public interface BoardDAO {

	//검색기능 : Search search
	public List<BoardVO> getBoardList(Search search) throws Exception;
	
	public BoardVO getBoardContent(int bid) throws Exception;

	public int insertBoard(BoardVO boardVO) throws Exception;

	public int updateBoard(BoardVO boardVO) throws Exception;
	
	public int deleteBoard(int bid) throws Exception;

	public int updateViewCnt(int bid) throws Exception;
	
	//페이징 : 총 게시글 개수 확인
	//검색기능: Search search
	public int getBoardListCnt(Search search) throws Exception;


}

