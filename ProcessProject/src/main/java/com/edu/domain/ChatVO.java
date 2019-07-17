package com.edu.domain;

import java.util.Date;

public class ChatVO {
	private String chat_code;
	private String sender;
	private String receiver;
	private String chat_date;
	private String content;
	private String readCheck;
	
	public String getChat_code() {
		return chat_code;
	}
	public void setChat_code(String chat_code) {
		this.chat_code = chat_code;
	}
	public String getSender() {
		return sender;
	}
	public void setSender(String sender) {
		this.sender = sender;
	}
	public String getReceiver() {
		return receiver;
	}
	public void setReceiver(String receiver) {
		this.receiver = receiver;
	}
	public String getChat_date() {
		return chat_date;
	}
	public void setChat_date(String chat_date) {
		this.chat_date = chat_date;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getReadCheck() {
		return readCheck;
	}
	public void setReadCheck(String readCheck) {
		this.readCheck = readCheck;
	}

}
