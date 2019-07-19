package com.edu.service;


import java.util.List;

import com.edu.common.Search;
import com.edu.domain.BoardVO;



public interface BoardService {


	//검색기능 : Search search
	public List<BoardVO> getBoardList(Search search) throws Exception;
	
	
	//글쓰기 화면
	//public Map<String, Object> insertBoard(BoardVO boardVO) throws Exception;
	//원래는 위에껄로 작성되어있었음. return을 받지 않기 위해서는 void로 작성하는게 맞음.
	public void insertBoard(BoardVO boardVO) throws Exception;
	
	//글 상세 조회 기능
	//1.클릭한 글의 상세 내용을 읽어오는 것
	//2.글의 조회수를 +1을 시켜주는 것.
	// 따라서 Service에서 DAO에 두번 요청을 해야한다.
	public BoardVO getBoardContent(int bid) throws Exception;

	public void updateBoard(BoardVO boardVO) throws Exception;
	
	//게시글삭제
	public void deleteBoard(int bid) throws Exception;

	//페이징 : 총 게시글 개수 확인
	public int getBoardListCnt(Search search) throws Exception;

	

}