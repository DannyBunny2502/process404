package com.edu.domain;


public class ChatBoxVO extends ChatVO {
	
	public ChatBoxVO() {
		super();
	}
	private String chatUnread;
	
	public String getChatUnread() {
		return chatUnread;
	}
	public void setChatUnread(String chatUnread) {
		this.chatUnread = chatUnread;
	}
	
}
