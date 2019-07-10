package com.edu.domain;

import java.util.Date;

public class BoardVO {
//	bno		int			not null  auto_increment,
//	title		varchar(50)	not null,
//	content	text			not null,
//	writer	varchar(30)	not null,
//	regDate	timestamp	default now(),
//	viewCnt	int			default 0,
	
	/*
	 * private int bno; private String title; private String content; private String
	 * writer; private Date regDate; private int viewCnt;
	 * 
	 * public int getBno() { return bno; } public void setBno(int bno) { this.bno =
	 * bno; } public String getTitle() { return title; } public void setTitle(String
	 * title) { this.title = title; } public String getContent() { return content; }
	 * public void setContent(String content) { this.content = content; } public
	 * String getWriter() { return writer; } public void setWriter(String writer) {
	 * this.writer = writer; } public Date getRegDate() { return regDate; } public
	 * void setRegDate(Date regDate) { this.regDate = regDate; } public int
	 * getViewCnt() { return viewCnt; } public void setViewCnt(int viewCnt) {
	 * this.viewCnt = viewCnt; }
	 */
	
	/*CREATE TABLE NOTICE
	(
	    `notice_code`      INT              NOT NULL    COMMENT '게시물코드', 
	    `author_id`        VARCHAR(20)      NOT NULL    COMMENT '아이디', 
	    `author_password`  VARCHAR(100)      NOT NULL    COMMENT '비밀번호', 
	    `title`            VARCHAR(50)      NOT NULL    COMMENT '제목', 
	    `content`          VARCHAR(1000)    NOT NULL    COMMENT '내용', 
	    `views`            INT              NOT NULL    COMMENT '조회수', 
	    `file_root`        VARCHAR(100)     NULL        COMMENT '파일경로', 
	    `file_size`        VARCHAR(20)      NULL        COMMENT '파일크기', 
	    `upload_date`      DATETIME         NOT NULL    COMMENT '게시일자', 
	    PRIMARY KEY (notice_code)
	);*/
	
	private String notice_code;
	private String author_id;
	private String author_password;
	private String title;
	private String content;
	private String views;
	private String file_root;
	private String file_size;
	private String upload_date;
	
	public String getNotice_code() {
		return notice_code;
	}
	public void setNotice_code(String notice_code) {
		this.notice_code = notice_code;
	}
	public String getAuthor_id() {
		return author_id;
	}
	public void setAuthor_id(String author_id) {
		this.author_id = author_id;
	}
	public String getAuthor_password() {
		return author_password;
	}
	public void setAuthor_password(String author_password) {
		this.author_password = author_password;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getViews() {
		return views;
	}
	public void setViews(String views) {
		this.views = views;
	}
	public String getFile_root() {
		return file_root;
	}
	public void setFile_root(String file_root) {
		this.file_root = file_root;
	}
	public String getFile_size() {
		return file_size;
	}
	public void setFile_size(String file_size) {
		this.file_size = file_size;
	}
	public String getUpload_date() {
		return upload_date;
	}
	public void setUpload_date(String upload_date) {
		this.upload_date = upload_date;
	}
	@Override
	public String toString() {
		return "BoardVO [notice_code=" + notice_code + ", author_id=" + author_id + ", author_password="
				+ author_password + ", title=" + title + ", content=" + content + ", views=" + views + ", file_root="
				+ file_root + ", file_size=" + file_size + ", upload_date=" + upload_date + "]";
	}

}
