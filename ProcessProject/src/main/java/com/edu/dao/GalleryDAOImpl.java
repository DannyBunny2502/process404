package com.edu.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.edu.domain.GalleryVO;
import com.edu.domain.likeVO;

@Repository
public class GalleryDAOImpl implements GalleryDAO {

	@Inject
	private SqlSession sql;
	
	// namespace 조심하자
	// namespace 조심하자
	// namespace 조심하자
	private static String namespace = "com.edu.mappers.galleryMapper";
	
	// 게시물 작성
	@Override
	public void upload(GalleryVO vo) throws Exception {
		sql.insert(namespace + ".upload", vo);
	}

	// 게시물 수정
	@Override
	public void update(GalleryVO vo) throws Exception {
		sql.update(namespace + ".update", vo);
	}

	// 게시물 삭제
	@Override
	public void delete(String gallery_code) throws Exception {
		System.out.println(namespace+".delete : "+gallery_code);
		sql.delete(namespace + ".delete", gallery_code);
	}

	// 게시물 조회
	@Override
	public GalleryVO view(String gallery_code) throws Exception {
		return sql.selectOne(namespace + ".view", gallery_code);
	}

	// 게시물 목록
	@Override
	public List<GalleryVO> list() throws Exception {
		return sql.selectList(namespace + ".list");
	}

	@Override
	public void viewCnt(GalleryVO vo) throws Exception {
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
	public String like(String gallery_code) {
		return sql.selectOne(namespace+".like", gallery_code);
	}

	@Override
	public String likeCheck(likeVO vo) throws Exception {
		// TODO Auto-generated method stub
		return sql.selectOne(namespace+".likeCheck", vo);
	}

}
