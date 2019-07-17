package com.edu.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.edu.dao.EmployeeDAO;
import com.edu.domain.EmployeeDTO;

@Service
public class EmployeeServiceImpl implements EmployeeService {

	@Inject
	private EmployeeDAO dao;
	
	/*
	 * // 게시물 작성
	 * 
	 * @Override public void write(BoardVO vo) throws Exception { dao.write(vo); }
	 * 
	 * // 게시물 수정
	 * 
	 * @Override public void update(BoardVO vo) throws Exception { dao.update(vo); }
	 * 
	 * // 게시물 삭제
	 * 
	 * @Override public void delete(String notice_code) throws Exception {
	 * dao.delete(notice_code); }
	 * 
	 * // 게시물 조회
	 * 
	 * @Override public BoardVO view(String notice_code) throws Exception { return
	 * dao.view(notice_code); }
	 * 
	 * @Override public List<BoardVO> list() throws Exception { return dao.list(); }
	 */

	@Override
	public EmployeeDTO join(String emp_code) throws Exception {
		// TODO Auto-generated method stub
		return dao.join(emp_code);
	}

	@Override
	public void infoUpdate(EmployeeDTO dto) {
		// TODO Auto-generated method stub
		dao.infoUpdate(dto);
	}

	@Override
	public EmployeeDTO login(EmployeeDTO dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.login(dto);
	}


}
