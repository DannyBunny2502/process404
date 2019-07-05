package com.edu.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Repository;

import com.edu.controller.MainController;
import com.edu.domain.BoardVO;
import com.edu.domain.UserDTO;
import com.edu.service.UserService;
 
@Repository("UserDAO")
public class UserDAO {
    
	private static final Logger logger =
			LoggerFactory.getLogger(MainController.class);

	@Inject
	private SqlSession sql;
	
	private static String namespace = "com.edu.mappers.userMapper";

	@Inject
    PasswordEncoder passwordEncoder;

	
   @Autowired
    private SqlSessionTemplate mybatis;
    
    
	public int idDuplChk(UserDTO udto) {
        System.out.println("UserDAO.idDuplChk() 호출");
        return mybatis.selectOne("UserDAO.idDuplChk",udto);
    }

    
    
    public UserDAO() {
        // TODO Auto-generated constructor stub
        System.out.println("UserDAO 객체 생성");
    }
    
    
    public UserDTO login(UserDTO udto){
		logger.info("login UserDAO.getUser() called.....");
        System.out.println("login UserDAO.getUser() 호출");
 		return sql.selectOne(namespace + ".getUser", udto.getId());
    }
   
    
    
    
    
    public void updateUser(UserDTO udto){
        System.out.println("UserDAO.updateUser() 호출");
        mybatis.update("UserDAO.updateUser",udto);
    }
    public void deleteUser(UserDTO udto){
        System.out.println("UserDAO.deleteUser() 호출");
        mybatis.delete("UserDAO.deleteUser",udto);
    }
 
    public void insertUser(UserDTO udto) {
        System.out.println("UserDAO.insertUser() 호출");
        System.out.println("udto.getId() : " + udto.getId());
        
        //비밀번호와 비밀번호확인을 암호화시켜 저장한다.
        String encPwd = passwordEncoder.encode(udto.getPw());
        udto.setPw(encPwd);

        String encRePwd = passwordEncoder.encode(udto.getPwConfirm());
        udto.setPwConfirm(encRePwd);
        
        
        
        sql.insert(namespace + ".insertUser",udto);
        //mybatis.insert("namespace.insertUser",udto);
        //mybatis.insert("UserDAO.insertUser",udto);
    }
    
    public UserDTO getUser(UserDTO udto){
		logger.info("UserDAO.getUser() called.....");
        System.out.println("UserDAO.getUser() 호출");
 		return sql.selectOne(namespace + ".getUser", udto.getId());
    }
    public UserDTO getNickNameUser(UserDTO udto) {
		logger.info("UserDAO.getNickNameUser() called.....");
        System.out.println("UserDAO.getNickNameUser() 호출");
 		return sql.selectOne(namespace + ".getNickNameUser", udto.getNickName());
    }
    /* 
     * SqlSessionTemplate 사용할 때 문제가 있음
     * 
    public void insertUser(UserDTO udto) {
        System.out.println("UserDAO.insertUser() 호출");
        mybatis.insert("UserDAO.insertUser",udto);
    }
    public UserDTO getUser(UserDTO udto){
		logger.info("UserDAO.getUser() called.....");
        System.out.println("UserDAO.getUser() 호출");
        return (UserDTO)mybatis.selectOne("UserDAO.getUser",udto);
    }
    public UserDTO getNickNameUser(UserDTO udto) {
		logger.info("UserDAO.getNickNameUser() called.....");
        System.out.println("UserDAO.getNickNameUser() 호출");
        return (UserDTO)mybatis.selectOne("UserDAO.getNickNameUser",udto);
    }
    */

    /*public int confirmUser(UserDTO udto) {
        System.out.println("UserDAO.confirmUser() 호출");
        return mybatis.selectOne("UserDAO.confirmUser",udto);
    }*/

	
}
