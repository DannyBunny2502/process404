package com.edu.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.edu.dao.GalleryDAO;
import com.edu.domain.BoardVO;
import com.edu.domain.GalleryVO;

@Service
public class GalleryServiceImpl implements GalleryService {

	@Inject
	private GalleryDAO dao;

	
	  // 게시물 작성
	  
	  @Override public void upload(GalleryVO vo) throws Exception { dao.upload(vo); }
	  
	  // 게시물 수정
	 
	  @Override public void update(GalleryVO vo) throws Exception { dao.update(vo); }
	  
	  // 게시물 삭제
	  
	  @Override public void delete(String gallery_code) throws Exception {
		  dao.delete(gallery_code); 
	  }
	  
	  // 게시물 조회
	  
	  @Override public GalleryVO view(String gallery_code) throws Exception { 
		  return dao.view(gallery_code); 
	  }
	  
	  @Override public List<GalleryVO> list() throws Exception { return dao.list(); }

		@Override
		public void viewCnt(GalleryVO vo) throws Exception {
			// TODO Auto-generated method stub
			dao.viewCnt(vo);
		}	
	 

}
