package com.edu.service;

import java.util.List;

import com.edu.domain.DocumentVO;
import com.edu.domain.FolderVO;
import com.edu.domain.likeVO;

public interface DocumentService {

	// 게시물 작성
	public void upload(DocumentVO vo) throws Exception;
	
	// 게시물 수정
	public void update(DocumentVO vo) throws Exception;
	
	// 게시물 삭제
	public void delete(String document_code) throws Exception;
	
	// 게시물 조회
	public DocumentVO view(String document_code) throws Exception;
	
	// 게시물 조회수
	public void viewCnt(DocumentVO vo) throws Exception;
	
	// 게시물 목록
	public List<DocumentVO> list() throws Exception;

	public void likeUp(likeVO vo) throws Exception; // 좋아요 +1
	
	public void likeDown(String id) throws Exception; // 좋아요 -1
	
	public String like(String document_code) throws Exception; //좋아요 개수
	
	public String likeCheck(likeVO vo) throws Exception; // 좋아요 유무

	public void makeFolder(String folder) throws Exception;
	
	public String findFolder(String folder) throws Exception;
	
}
