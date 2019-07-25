package com.edu.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.edu.dao.DocumentDAO;
import com.edu.domain.DocumentVO;
import com.edu.domain.FolderVO;
import com.edu.domain.likeVO;
import com.edu.domain.moveFolderVO;

@Service
public class DocumentServiceImpl implements DocumentService {

	@Inject
	private DocumentDAO dao;

	
	  // 게시물 작성
	  
	  @Override public void upload(DocumentVO vo) throws Exception { dao.upload(vo); }
	  
	  // 게시물 수정
	 
	  @Override public void update(DocumentVO vo) throws Exception { dao.update(vo); }
	  
	  // 게시물 삭제
	  
	  @Override public void delete(String document_code) throws Exception {
		  dao.delete(document_code); 
	  }
	  
	  // 게시물 조회
	  
	  @Override public DocumentVO view(String document_code) throws Exception { 
		  return dao.view(document_code); 
	  }
	  
	  @Override public List<DocumentVO> list() throws Exception { return dao.list(); }

		@Override
		public void viewCnt(DocumentVO vo) throws Exception {
			// TODO Auto-generated method stub
			dao.viewCnt(vo);
		}

		@Override
		public void likeUp(likeVO vo) throws Exception {
			// TODO Auto-generated method stub
			dao.likeUp(vo);
		}

		@Override
		public void likeDown(String id) throws Exception {
			// TODO Auto-generated method stub
			dao.likeDown(id);
		}	
	 
		@Override
		public String like(String document_code) throws Exception{
			return dao.like(document_code);
		}

		@Override
		public String likeCheck(likeVO vo) throws Exception {
			// TODO Auto-generated method stub
			return dao.likeCheck(vo);
		}

		@Override
		public void makeFolder(String folder) throws Exception {
			// TODO Auto-generated method stub
			dao.makeFolder(folder);
		}

		@Override
		public String findFolder(String folder) throws Exception {
			// TODO Auto-generated method stub
			return dao.findFolder(folder);
		}

		@Override
		public List<FolderVO> folderList() throws Exception {
			// TODO Auto-generated method stub
			return dao.folderList();
		}

		@Override
		public void moveFolder(moveFolderVO vo) throws Exception {
			// TODO Auto-generated method stub
			dao.moveFolder(vo);
		}

		@Override
		public void deleteFolder(String folder) throws Exception {
			// TODO Auto-generated method stub
			dao.deleteFolder(folder);
		}
}
