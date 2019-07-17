package com.edu.domain;

import java.util.Date;

public class GalleryVO {

	private String gallery_code;
	private String author_id;
	private String name_kor;
	private String title;
	private String content;
	private String newPicture;
	private String oldPicture;
	private String temp;
	private String upload_date;
	private String views;
	private String thumbs_up;
	private String thumbs_down;
	
	
	public String getGallery_code() {
		return gallery_code;
	}
	public void setGallery_code(String gallery_code) {
		this.gallery_code = gallery_code;
	}
	public String getAuthor_id() {
		return author_id;
	}
	public void setAuthor_id(String author_id) {
		this.author_id = author_id;
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
	public String getNewPicture() {
		return newPicture;
	}
	public void setNewPicture(String newPicture) {
		this.newPicture = newPicture;
	}
	public String getOldPicture() {
		return oldPicture;
	}
	public void setOldPicture(String oldPicture) {
		this.oldPicture = oldPicture;
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
	
	public String getName_kor() {
		return name_kor;
	}
	public void setName_kor(String name_kor) {
		this.name_kor = name_kor;
	}
	
	public String getThumbs_up() {
		return thumbs_up;
	}
	public void setThumbs_up(String thumbs_up) {
		this.thumbs_up = thumbs_up;
	}
	public String getThumbs_down() {
		return thumbs_down;
	}
	public void setThumbs_down(String thumbs_down) {
		this.thumbs_down = thumbs_down;
	}
	
}
