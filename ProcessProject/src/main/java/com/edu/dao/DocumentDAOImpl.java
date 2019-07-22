package com.edu.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.edu.domain.DocumentVO;
import com.edu.domain.FolderVO;
import com.edu.domain.likeVO;

@Repository
public class DocumentDAOImpl implements DocumentDAO {

	@Inject
	private SqlSession sql;
	
	// namespace 조심하자
	// namespace 조심하자
	// namespace 조심하자
	private static String namespace = "com.edu.mappers.documentMapper";
	
	// 게시물 작성
	@Override
	public void upload(DocumentVO vo) throws Exception {
		sql.insert(namespace + ".upload", vo);
	}

	// 게시물 수정
	@Override
	public void update(DocumentVO vo) throws Exception {
		sql.update(namespace + ".update", vo);
	}

	// 게시물 삭제
	@Override
	public void delete(String document_code) throws Exception {
		System.out.println(namespace+".delete : "+document_code);
		sql.delete(namespace + ".delete", document_code);
	}

	// 게시물 조회
	@Override
	public DocumentVO view(String document_code) throws Exception {
		return sql.selectOne(namespace + ".view", document_code);
	}

	// 게시물 목록
	@Override
	public List<DocumentVO> list() throws Exception {
		return sql.selectList(namespace + ".list");
	}

	@Override
	public void viewCnt(DocumentVO vo) throws Exception {
		// TODO Auto-generated method stub
		sql.update(namespace+".viewCnt", vo);
	}

	@Override
	public void likeUp(likeVO vo) {
		// TODO Auto-generated method stub
		sql.insert(namespace+".likeUp",vo);
	}

	@Override
	public void likeDown(String id) {
		// TODO Auto-generated method stub
		sql.delete(namespace+".likeDown", id);
	}
	
	@Override
	public String like(String document_code) {
		return sql.selectOne(namespace+".like", document_code);
	}

	@Override
	public String likeCheck(likeVO vo) throws Exception {
		// TODO Auto-generated method stub
		return sql.selectOne(namespace+".likeCheck", vo);
	}

	@Override
	public void makeFolder(String folder) throws Exception {
		// TODO Auto-generated method stub
		sql.insert(namespace+".makeFolder",folder);
	}
	
	@Override
	public String findFolder(String folder) throws Exception {
		// TODO Auto-generated method stub
		return sql.selectOne(namespace+".findFolder",folder);
	}

}
