package com.edu.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.edu.dao.BoardDAO;
import com.edu.dao.ChatDAO;

import com.edu.domain.BoardVO;
import com.edu.domain.ChatBoxVO;
import com.edu.domain.ChatVO;
import com.edu.domain.EmployeeDTO;


@Service
public class ChatServiceImpl implements ChatService {

	@Inject
	private ChatDAO dao;
	
	//개별 채팅방 채팅내용 불러오기 (처음 채팅방 들어왔을떄...) 이거 아직 못정함.
	/*@Override
	public List<ChatVO> getChatBox(String chatPartner, String user) throws Exception {
		
		return dao.getChatBox(chatPartner, user);
	}*/

	//개별 채팅방 내용 불러오기 (Ajax)
	@Override
	public List<ChatVO> getChatListsByID(Map<String, Object> chatData) {
		
		return dao.getChatListsByID(chatData);
	}
	
	
	//채팅창 직원 전체 주소록 가져오기
	@Override
	public List<EmployeeDTO> getMembers() throws Exception {
		
		return dao.getMembers();
	}

	//채팅창에서 내용 입력 버튼 눌렀을 때 DB에 내용 저장
	@Override
	public Map<String, Object> addChat(Map<String, Object> chatData) {
		
		return dao.addChat(chatData);
	}

	//채팅 리스트 클릭 시, 채팅방들 가져오기
	@Override
	public List<ChatVO> getChats(String user) {
		
		return dao.getChats(user);
	}

	//채팅창 불러올 때, 안읽은 채팅 읽음으로 업데이트
	@Override
	public void updateReadChat(String string, String chatPartner) {
		dao.updateReadChat(string, chatPartner);
		
	}

	////////////////////////////////////////////////////////////////////////////////
	//채팅리스트 가져오기(Unread 개수 포함)
	@Override
	public List<ChatBoxVO> getChatsUnread(String user) {
		
		return dao.getChatUnread(user);
	}

	
	
	

	

	

}
