package com.edu.dao;

import java.util.List;

import com.edu.domain.EmployeeDTO;

public interface EmployeeDAO {

	// 회원가입 화면 (emp_code에 해당하는 객체)
	public EmployeeDTO join(String emp_code) throws Exception;

	public void infoUpdate(EmployeeDTO dto);

	
	/*
	 * // 게시물 수정 public void update(BoardVO vo) throws Exception;
	 * 
	 * // 게시물 삭제 public void delete(String notice_code) throws Exception;
	 * 
	 * // 게시물 조회 public BoardVO view(String notice_code) throws Exception;
	 * 
	 * // 게시물 목록 public List<BoardVO> list() throws Exception;
	 */

}
