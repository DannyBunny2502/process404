package com.edu.service;

import com.edu.domain.BoardVO;
import com.edu.domain.EmployeeDTO;

public interface EmployeeService {
	 
   
	/*
	 * void updateUser(EmployeeDTO udto);
	 * 
	 * void deleteUser(EmployeeDTO udto);
	 * 
	 * void insertUser(EmployeeDTO udto) throws Exception;
	 * 
	 * public EmployeeDTO getUser(EmployeeDTO udto);
	 * 
	 * EmployeeDTO getNickNameUser(EmployeeDTO udto); //int confirmUser(UserDTO
	 * udto);
	 */
	

	EmployeeDTO join(String emp_code) throws Exception;

	void infoUpdate(EmployeeDTO dto);

}

