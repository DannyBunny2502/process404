package com.edu.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.edu.dao.BoardDAO;
import com.edu.domain.BoardVO;

@Service
public class BoardServiceImpl implements BoardService {

	@Inject
	private BoardDAO dao;
	
	// 게시물 작성
	@Override
	public void write(BoardVO vo) throws Exception {
		dao.write(vo);
	}

	// 게시물 수정
	@Override
	public void update(BoardVO vo) throws Exception {
		dao.update(vo);
	}

	// 게시물 삭제
	@Override
	public void delete(int bno) throws Exception {
		dao.delete(bno);
	}

	// 게시물 조회
	@Override
	public BoardVO view(int bno) throws Exception {
		return dao.view(bno);
	}

	@Override
	public List<BoardVO> list() throws Exception {
		return dao.list();
	}

}
