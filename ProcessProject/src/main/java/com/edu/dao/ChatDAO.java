package com.edu.dao;


import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.edu.domain.ChatBoxVO;
import com.edu.domain.ChatVO;
import com.edu.domain.EmployeeDTO;

public interface ChatDAO {
	
	//채팅 리스트 클릭했을 때 나오는 개별 채팅창 내용(처음 들어갈 때)
	//public List<ChatVO> getChatBox(String chatPartner, String user) throws Exception;
	
	//채팅 리스트 업데이트 할 때 (Ajax)
	public List<ChatVO> getChatListsByID(Map<String, Object> chatData);
	
	//채팅창 전체 사원리스트
	public List<EmployeeDTO> getMembers() throws Exception;

	//채팅창에 입력한 채팅 내용 db 저장
	public Map<String, Object> addChat(Map<String, Object> chatData);
	
	//채팅리스트 클릭 시, 채팅방 목록 가져오기
	public List<ChatVO> getChats(String user);

	//개별 채팅창 들어갈 때, 내가 안읽은 메시지 읽음으로 업데이트
	public void updateReadChat(String string, String chatPartner);

	public List<ChatBoxVO> getChatUnread(String user);

	

	
	
}
