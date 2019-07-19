package com.edu.service;

import com.edu.domain.BoardVO;
import com.edu.domain.EmployeeDTO;

public interface EmployeeService {
	
	

	EmployeeDTO join(String emp_code) throws Exception;

	void infoUpdate(EmployeeDTO dto);
	
	EmployeeDTO login(EmployeeDTO dto) throws Exception;
	
	EmployeeDTO findPassword(EmployeeDTO dto) throws Exception;
	
	void changePassword(EmployeeDTO dto) throws Exception;
	
	EmployeeDTO findId(EmployeeDTO dto) throws Exception;
}

