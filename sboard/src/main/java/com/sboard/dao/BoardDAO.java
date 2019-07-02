package com.sboard.dao;

import com.sboard.domain.BoardVO;

//-------------------------------------------------------------------------
// public interface BoardDAO
//-------------------------------------------------------------------------
public interface BoardDAO {
	
	//게시물 작성
	public void write(BoardVO vo) throws Exception;

} // End - public interface BoardDAO
