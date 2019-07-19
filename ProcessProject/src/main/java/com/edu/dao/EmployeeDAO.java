package com.edu.dao;

import java.util.List;

import com.edu.domain.EmployeeDTO;

public interface EmployeeDAO {

	// 회원가입 화면 (emp_code에 해당하는 객체)
	public EmployeeDTO join(String emp_code) throws Exception;

	public void infoUpdate(EmployeeDTO dto);

	public EmployeeDTO login (EmployeeDTO dto) throws Exception;
	
	public EmployeeDTO findId(EmployeeDTO dto)throws Exception;
	
	public EmployeeDTO findPassword(EmployeeDTO dto) throws Exception;

	public void changePassword(EmployeeDTO dto);

}
