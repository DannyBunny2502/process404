package com.edu.domain;

import java.sql.Date;

public class MemberVO {
	
	private String emp_code;
	private String id;
	private String password;
	private String name_kor;
	private String name_eng;
	private String email;
	private String phone_number;
	private String birth;
	private int org_code;
	private int department_id;
	private int branch_id;
	private String position;
	private String hire_date;
	private String fire_date;
	private String status;
	private String img;
	
	
	public String getEmp_code() {
		return emp_code;
	}
	public void setEmp_code(String emp_code) {
		this.emp_code = emp_code;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName_kor() {
		return name_kor;
	}
	public void setName_kor(String name_kor) {
		this.name_kor = name_kor;
	}
	public String getName_eng() {
		return name_eng;
	}
	public void setName_eng(String name_eng) {
		this.name_eng = name_eng;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone_number() {
		return phone_number;
	}
	public void setPhone_number(String phone_number) {
		this.phone_number = phone_number;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public int getOrg_code() {
		return org_code;
	}
	public void setOrg_code(int org_code) {
		this.org_code = org_code;
	}
	public int getDepartment_id() {
		return department_id;
	}
	public void setDepartment_id(int department_id) {
		this.department_id = department_id;
	}
	public int getBranch_id() {
		return branch_id;
	}
	public void setBranch_id(int branch_id) {
		this.branch_id = branch_id;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getHire_date() {
		return hire_date;
	}
	public void setHire_date(String hire_date) {
		this.hire_date = hire_date;
	}
	public String getFire_date() {
		return fire_date;
	}
	public void setFire_date(String fire_date) {
		this.fire_date = fire_date;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	
	@Override
	public String toString() {
		return "MemberVO [emp_code=" + emp_code + ", id=" + id + ", password=" + password + ", name_kor=" + name_kor
				+ ", name_eng=" + name_eng + ", email=" + email + ", phone_number=" + phone_number + ", birth=" + birth
				+ ", org_code=" + org_code + ", department_id=" + department_id + ", branch_id=" + branch_id
				+ ", position=" + position + ", hire_date=" + hire_date + ", fire_date=" + fire_date + ", status="
				+ status + ", img=" + img + "]";
	}
	
	
	
	
	
}
