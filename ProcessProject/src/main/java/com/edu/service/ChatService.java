package com.edu.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import com.edu.domain.ChatBoxVO;
import com.edu.domain.ChatVO;
import com.edu.domain.EmployeeDTO;


public interface ChatService {

	//public List<ChatVO> getChatBox(String chatPartner, String user) throws Exception;

	public List<EmployeeDTO> getMembers() throws Exception;

	public Map<String, Object> addChat(Map<String, Object> chatData);

	public List<ChatVO> getChatListsByID(Map<String, Object> chatData);
	
	public List<ChatVO> getChats(String user);

	public void updateReadChat(String string, String chatPartner);

	public List<ChatBoxVO> getChatsUnread(String user);

	

	
	
}
