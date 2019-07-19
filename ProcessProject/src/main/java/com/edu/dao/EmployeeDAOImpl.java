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
	
	public EmployeeDTO findId(EmployeeDTO dto) throws Exception{
		return sql.selectOne(namespace+".findId", dto);
	}
	
	public EmployeeDTO findPassword(EmployeeDTO dto) throws Exception{
		return sql.selectOne(namespace+".findPassword", dto);
	}

	@Override
	public void changePassword(EmployeeDTO dto) {
		// TODO Auto-generated method stub
		sql.update(namespace+".changePassword", dto);
	}
}
