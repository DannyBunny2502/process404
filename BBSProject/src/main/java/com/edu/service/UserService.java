package com.edu.service;

import com.edu.domain.UserDTO;

public interface UserService {
	 
   
    void updateUser(UserDTO udto);
 
    void deleteUser(UserDTO udto);
 
    void insertUser(UserDTO udto) throws Exception;
 
    public UserDTO getUser(UserDTO udto);
    
    UserDTO getNickNameUser(UserDTO udto);
    //int confirmUser(UserDTO udto);
 
}


