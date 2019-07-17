package com.edu.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.edu.domain.BoardVO;
import com.edu.domain.ChatBoxVO;
import com.edu.domain.ChatVO;
import com.edu.domain.EmployeeDTO;

@Repository
public class ChatDAOImpl implements ChatDAO {

	@Inject
	private SqlSession sql;
	
	// namespace 조심하자
	private static String namespace = "com.edu.mappers.chatMapper";

	/*
	@Override
	public List<ChatVO> getChatBox(String chatPartner, String user) throws Exception {
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("chatPartner", chatPartner);
		map.put("user", user);
		
		List<ChatVO> chatBoxContent = sql.selectList(namespace+".getChatBoxContent", map);
		
		return chatBoxContent;
	}
	*/
	
	
	@Override
	public List<ChatVO> getChatListsByID(Map<String, Object> chatData) {
		
		List<ChatVO> chatList = sql.selectList(namespace + ".getLastChatById", chatData);
		
		return chatList;
	}

	
	//채팅창 전체 사원 리스트 불러오기
	@Override
	public List<EmployeeDTO> getMembers() throws Exception {
		
		List<EmployeeDTO> members = sql.selectList(namespace+".getMembers");
		
		return members;
	}

	//채팅창에 입력한 채팅 내용 db 저장
	@Override
	public Map<String, Object> addChat(Map<String, Object> chatData) {
		
		int rtnVal = sql.insert(namespace+".addChat", chatData);
		
		//방금 입력한 채팅 데이터의 키 값 받아오기
		Object chat_code = chatData.get("chat_code");
		//키 값을 통해 방금 입력한 채팅 객체 받아오기
		//ChatVO cvo = sql.selectOne(namespace+".getLastChatByChatCode", chat_code);
		
		Map<String, Object> rtnMap = new HashMap<String, Object>();
		rtnMap.put("insertResult", rtnVal);
		//rtnMap.put("insertedChatVO", cvo);
		
		return rtnMap;
	}

	//채팅리스트 클릭 시, 채팅방 목록 가져오기
	@Override
	public List<ChatVO> getChats(String user) {
		
		List<ChatVO> chats = sql.selectList(namespace + ".getChats", user);
		
		//가장 최신의 채팅내용만 리턴값에 담기 (두 대화상대의 채팅 내용 sender, receiver 간 조합 중복 처리)
		for(int i = 0; i <chats.size(); i++) {
			ChatVO x = chats.get(i);
			for(int j=0; j <chats.size(); j++) {
				ChatVO y = chats.get(j);
				if(x.getSender().equals(y.getReceiver()) && x.getReceiver().equals(y.getSender())) {
					if(Integer.parseInt(x.getChat_code()) < Integer.parseInt(y.getChat_code())) {
						chats.remove(x);
						i--;
						break;
					}else {
						chats.remove(y);
						j--;
						break;
					}
				}
			}
		}	
		
		return chats;
	
	}


	@Override
	public void updateReadChat(String string, String chatPartner) {
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("user", string);
		map.put("chatPartner", chatPartner);
		
		sql.update(namespace+".updateReadChat", map);
	}


	
	@Override
	public List<ChatBoxVO> getChatUnread(String user) {
		
		List<ChatVO> chats = sql.selectList(namespace + ".getChats", user);
		
		//가장 최신의 채팅내용만 리턴값에 담기 (두 대화상대의 채팅 내용 sender, receiver 간 조합 중복 처리)
		for(int i = 0; i <chats.size(); i++) {
			ChatVO x = chats.get(i);
			for(int j=0; j <chats.size(); j++) {
				ChatVO y = chats.get(j);
				if(x.getSender().equals(y.getReceiver()) && x.getReceiver().equals(y.getSender())) {
					if(Integer.parseInt(x.getChat_code()) < Integer.parseInt(y.getChat_code())) {
						chats.remove(x);
						i--;
						break;
					}else {
						chats.remove(y);
						j--;
						break;
					}
				}
			}
		}	
		
		List<ChatBoxVO> chatUnread = new ArrayList<ChatBoxVO>();
		
		for(int i =chats.size()-1; i>=0;i--) {
			String unread = "";
			if(user.equals(chats.get(i).getReceiver())) {
				
				Map<String, String> map = new HashMap<String, String>();
				map.put("chatPartner", chats.get(i).getSender());
				map.put("user", user);
				unread = sql.selectOne(namespace + ".getUnreadCount", map).toString();
				
				if(unread.equals("0")) {
					unread="";
				}
			}
			
			//Unread 필드 추가된 객체에 결과값 다시 담기
			ChatBoxVO chatLegacy =  new ChatBoxVO();
			chatLegacy.setChat_code(chats.get(i).getChat_code());
			chatLegacy.setSender(chats.get(i).getSender());
			chatLegacy.setReceiver(chats.get(i).getReceiver());
			chatLegacy.setContent(chats.get(i).getContent());
			chatLegacy.setChat_date(chats.get(i).getChat_date());
			chatLegacy.setReadCheck(chats.get(i).getReadCheck());
			chatLegacy.setChatUnread(unread);
	
			chatUnread.add(chatLegacy);
		}//end - for()
		
		return chatUnread;
	
	}//end -getChatUnread


	
	
	
	
	

	

}
