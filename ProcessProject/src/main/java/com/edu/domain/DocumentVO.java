package com.edu.domain;

import java.util.Date;

public class DocumentVO {
	
	private String document_code;
	private String title;
	private String position;
	private String author_id;
	private String name_kor;
	private String content;
	private String newFile;
	private String oldFile;
	private String temp;
	private String upload_date;
	private String views;
	private String folder;
	private String size;
	private String fileName;
	private String type;
	private String fileType;
	
	
	// + name_kor
	
	
	
	public String getFileType() {
		return fileType;
	}
	public void setFileType(String fileType) {
		this.fileType = fileType;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getDocument_code() {
		return document_code;
	}
	public void setDocument_code(String document_code) {
		this.document_code = document_code;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getAuthor_id() {
		return author_id;
	}
	public void setAuthor_id(String author_id) {
		this.author_id = author_id;
	}
	public String getName_kor() {
		return name_kor;
	}
	public void setName_kor(String name_kor) {
		this.name_kor = name_kor;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getNewFile() {
		return newFile;
	}
	public void setNewFile(String newFile) {
		this.newFile = newFile;
	}
	public String getOldFile() {
		return oldFile;
	}
	public void setOldFile(String oldFile) {
		this.oldFile = oldFile;
	}
	public String getTemp() {
		return temp;
	}
	public void setTemp(String temp) {
		this.temp = temp;
	}
	public String getUpload_date() {
		return upload_date;
	}
	public void setUpload_date(String upload_date) {
		this.upload_date = upload_date;
	}
	public String getViews() {
		return views;
	}
	public void setViews(String views) {
		this.views = views;
	}
	public String getFolder() {
		return folder;
	}
	public void setFolder(String folder) {
		this.folder = folder;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	@Override
	public String toString() {
		return "DocumentVO [document_code=" + document_code + ", title=" + title + ", position=" + position
				+ ", author_id=" + author_id + ", name_kor=" + name_kor + ", content=" + content + ", newFile="
				+ newFile + ", oldFile=" + oldFile + ", temp=" + temp + ", upload_date=" + upload_date + ", views="
				+ views + ", folder=" + folder + ", size=" + size + ", fileName=" + fileName + ", type=" + type
				+ ", fileType=" + fileType + "]";
	}
	
	
	
}
