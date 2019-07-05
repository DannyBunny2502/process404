package com.edu.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.edu.controller.MainController;
import com.edu.dao.UserDAO;
import com.edu.domain.UserDTO;
 
@Service
public class UserServiceImpl implements UserService {
    
	
	private static final Logger logger =
			LoggerFactory.getLogger(MainController.class);
	
     
	@Autowired
    private UserDAO udao;
    public UserServiceImpl() {
        // TODO Auto-generated constructor stub
        System.out.println("UserServiceImpl() 객체 생성");
    }
    @Override
    public void updateUser(UserDTO udto) {
        // TODO Auto-generated method stub
        System.out.println("UserServiceImpl:updateUser() 호출");
        udao.updateUser(udto);
    }
 
    @Override
    public void deleteUser(UserDTO udto) {
        // TODO Auto-generated method stub
        System.out.println("UserServiceImpl:deleteUser() 호출");
        udao.deleteUser(udto);
    }
 
    @Override
    public void insertUser(UserDTO udto) {
        // TODO Auto-generated method stub
		logger.info("UserServiceImpl insertUser called.....");
        System.out.println("UserServiceImpl:insertUser() 호출");
        udao.insertUser(udto);
    }
 
    @Override
    public UserDTO getUser(UserDTO udto) {
        // TODO Auto-generated method stub
        System.out.println("UserServiceImpl:getUser() 호출");
        return udao.getUser(udto);
    }
    @Override
    public UserDTO getNickNameUser(UserDTO udto) {
        // TODO Auto-generated method stub
        return udao.getNickNameUser(udto);
    }
 
    /*@Override
    public int confirmUser(UserDTO udto) {
        // TODO Auto-generated method stub
        System.out.println("UserServiceImpl:confirmUser() 호출");
        return udao.confirmUser(udto);
    }*/
 
}
 


