package com.edu.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.edu.domain.EmployeeDTO;

@Repository
public class EmployeeDAOImpl implements EmployeeDAO {

	@Inject
	private SqlSession sql;
	
	// namespace 조심하자
	// namespace 조심하자
	// namespace 조심하자
	private static String namespace = "com.edu.mappers.employeeMapper";
	
	/*
	 * // 게시물 작성
	 * 
	 * @Override public void write(BoardVO vo) throws Exception {
	 * sql.insert(namespace + ".write", vo); }
	 * 
	 * // 게시물 수정
	 * 
	 * @Override public void update(BoardVO vo) throws Exception {
	 * sql.update(namespace + ".update", vo); }
	 * 
	 * // 게시물 삭제
	 * 
	 * @Override public void delete(String notice_code) throws Exception {
	 * System.out.println(namespace+".delete : "+notice_code); sql.delete(namespace
	 * + ".delete", notice_code); }
	 * 
	 * // 게시물 조회
	 * 
	 * @Override public BoardVO view(String notice_code) throws Exception { return
	 * sql.selectOne(namespace + ".view", notice_code); }
	 * 
	 * // 게시물 목록
	 * 
	 * @Override public List<BoardVO> list() throws Exception { return
	 * sql.selectList(namespace + ".list"); }
	 */

	//회원가입 화면 (emp_code 해당하는 객체)
	@Override
	public EmployeeDTO join(String emp_code) throws Exception {
		// TODO Auto-generated method stub
		return sql.selectOne(namespace + ".join", emp_code);
	}

	@Override
	public void infoUpdate(EmployeeDTO dto) {
		// TODO Auto-generated method stub
		sql.update(namespace +".infoUpdate", dto);
	}

	public EmployeeDTO login(EmployeeDTO dto) throws Exception{
		return sql.selectOne(namespace+".login",dto);
	}
}
