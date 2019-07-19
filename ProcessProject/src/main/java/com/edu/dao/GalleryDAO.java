package com.edu.dao;

import java.util.List;

import com.edu.domain.BoardVO;
import com.edu.domain.GalleryVO;
import com.edu.domain.likeVO;

public interface GalleryDAO {

	// 게시물 작성
	public void upload(GalleryVO vo) throws Exception;
	
	// 게시물 수정
	public void update(GalleryVO vo) throws Exception;
	
	// 게시물 삭제
	public void delete(String gallery_code) throws Exception;
	
	// 게시물 조회
	public GalleryVO view(String gallery_code) throws Exception;
	
	// 게시물 목록
	public List<GalleryVO> list() throws Exception;

	public void viewCnt(GalleryVO vo) throws Exception;

	public void likeUp(likeVO vo) throws Exception;
	
	public void likeDown(String id) throws Exception;
	
	public String like(String gallery_code)throws Exception;
	
	public String likeCheck(likeVO vo) throws Exception;
}
