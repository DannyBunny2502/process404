package com.edu.controller;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpHeaders;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.edu.domain.ChatBoxVO;
import com.edu.domain.ChatVO;
import com.edu.domain.EmployeeDTO;
import com.edu.service.ChatService;


@Controller
@RequestMapping("/chat/")
public class ChatController {
	private static final Logger logger =
			LoggerFactory.getLogger(ChatController.class);
	
	@Inject
	ChatService service;
	
	
	//채팅방으로 들어갈 때 (주소록에서 이름 클릭 ) or 채팅리스트에서 해당 채팅방 클릭 (채팅 상대방 id get방식으로 갖고 이동)
	@RequestMapping(value="/chatBox", method=RequestMethod.GET) 
	public ModelAndView getChatBox(@RequestParam("chatPartner")String chatPartner, ModelAndView mav, HttpSession hsession) throws Exception {
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("sender", "id02");
		map.put("receiver", chatPartner);
		map.put("last_chat_code", 0);
		
		List<ChatVO> chat = service.getChatListsByID(map);
		
		if(chat.size()>0) {
			
			//채팅 리스트 중 가장 마지막 채팅 코드를 프론트로 넘김.
			String last_chat_code = chat.get(chat.size()-1).getChat_code();
			
			mav.addObject("chat", chat);
			mav.addObject("chatPartner", chatPartner);
			mav.addObject("last_chat_code", last_chat_code);
			mav.setViewName("chat/chatBox");
		
		}else {
			mav.addObject("chatPartner", chatPartner);
			mav.addObject("last_chat_code", 0);
			mav.setViewName("chat/chatBox");
		}
		
		//내가 receiver로 되어있는 채팅 중 읽지 않은 채팅을 읽음 상태로 업데이트
		service.updateReadChat("id02", chatPartner);
		
		return mav;
		
	}
	
	//채팅방 내용 인터벌 업데이트 할 때 (Ajax)
	@RequestMapping(value="/chatBox", method=RequestMethod.POST)
	@ResponseBody //페이지가 아니라 값을 넘겨주는 어노테이션
	public Object postChatBox(@RequestParam Map<String, Object> chatData, ModelAndView mav) throws Exception {
		
		List<ChatVO> rtnList = service.getChatListsByID(chatData);
		
		String chatPartner = chatData.get("receiver").toString();
		//값 검증
		System.out.println("postChatBox chatPartner 값 : "+chatPartner);
		
		//내가 receiver로 되어있는 채팅 중 읽지 않은 채팅을 읽음 상태로 업데이트
		service.updateReadChat("id02", chatPartner);
		
		if(rtnList.size() >0) {
		
			//채팅 리스트 중 가장 마지막 채팅의 코드를 프론트로 넘김.
			String last_chat_code = rtnList.get(rtnList.size()-1).getChat_code();
			
			Map<String, Object> rtnMap = new HashMap<String, Object>();
			rtnMap.put("rtnList", rtnList);
			rtnMap.put("last_chat_code", last_chat_code);
			
			return rtnMap;
		
		}else {
			return null;
		}
		
		
	}
	
	
	
	//채팅방에서 submit 버튼 눌렀을 때  (방금 입력한 채팅 데이터를 다시 프론트로 넘겨줄 필요는 없으나.. 일단은 둬보자)
	@RequestMapping(value="/chatInput", method=RequestMethod.POST) 
	@ResponseBody //페이지가 아니라 값을 넘겨주는 어노테이션
	public Object postChatInput(@RequestParam Map<String, Object> chatData, ModelAndView mav) throws Exception {
		
		//String user = "id 01";
		
		Map<String, Object> rtnVal = new HashMap<String, Object>();
		
		rtnVal = service.addChat(chatData);
		
		return rtnVal;
	}
	
	//채팅 리스트 버튼 눌렀을 때, 일단은 채팅 리스트 가져오고. UserSession을 가지고 와야지.. 
	@RequestMapping(value="/chatList", method=RequestMethod.GET) 
	public void chatList() {
		
		
	}
	
	@RequestMapping(value="/chatList", method=RequestMethod.POST) 
	@ResponseBody //페이지가 아니라 값을 넘겨주는 어노테이션
	public Object postChatList(ModelAndView mav) throws Exception {
		
		String user = "id02";
		
		//List<ChatVO> rtnList = service.getChats(user);
		
		Map<String, Object> rtnVal = new HashMap<String, Object>();
		//rtnVal.put("rtnList", rtnList);
		
		
		List<ChatBoxVO> chatList = service.getChatsUnread(user);
		rtnVal.put("rtnList", chatList);
		
		return rtnVal;
	}
	
	
	
	@RequestMapping(value="/chatMembers", method=RequestMethod.GET) 
	public void getChatMembers() {
	
	}
	
	@RequestMapping(value="/chatMembers", method=RequestMethod.POST) 
	public ModelAndView postChatMembers(ModelAndView mav) throws Exception {
		
		List<EmployeeDTO> members = service.getMembers();
		mav.setViewName("chat/chatMembers");
		mav.addObject("chatMembers", members);
		return mav;
	}
	

	
}
