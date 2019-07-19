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

	@Override
	public EmployeeDTO findPassword(EmployeeDTO dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.findPassword(dto);
	}

	@Override
	public EmployeeDTO findId(EmployeeDTO dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.findId(dto);
	}

	@Override
	public void changePassword(EmployeeDTO dto) throws Exception {
		// TODO Auto-generated method stub
		dao.changePassword(dto);
	}

	

}
