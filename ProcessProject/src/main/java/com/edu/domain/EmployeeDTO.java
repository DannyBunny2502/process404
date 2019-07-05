package com.edu.domain;

public class EmployeeDTO {
    private String emp_code;
    private String id;
    private String password;
    private String name_kor;
    private String name_eng;
    private String email;
    private String phone_number;
    private String birth;
    private String org_code;
    private String department_id;
    private String department_name;
    private String branch_id;
    private String branch_name;
    private String position;
    private String hire_date;
    private String fire_date;
    private String status;
    private String img_root;
    private String img_size;
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
	public String getOrg_code() {
		return org_code;
	}
	public void setOrg_code(String org_code) {
		this.org_code = org_code;
	}
	public String getDepartment_id() {
		return department_id;
	}
	public void setDepartment_id(String department_id) {
		this.department_id = department_id;
	}
	public String getDepartment_name() {
		return department_name;
	}
	public void setDepartment_name(String department_name) {
		this.department_name = department_name;
	}
	public String getBranch_id() {
		return branch_id;
	}
	public void setBranch_id(String branch_id) {
		this.branch_id = branch_id;
	}
	public String getBranch_name() {
		return branch_name;
	}
	public void setBranch_name(String branch_name) {
		this.branch_name = branch_name;
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
	public String getImg_root() {
		return img_root;
	}
	public void setImg_root(String img_root) {
		this.img_root = img_root;
	}
	public String getImg_size() {
		return img_size;
	}
	public void setImg_size(String img_size) {
		this.img_size = img_size;
	}
	
	@Override
	public String toString() {
		return "EmployeeDTO [emp_code=" + emp_code + ", id=" + id + ", password=" + password + ", name_kor=" + name_kor
				+ ", name_eng=" + name_eng + ", email=" + email + ", phone_number=" + phone_number + ", birth=" + birth
				+ ", org_code=" + org_code + ", department_id=" + department_id + ", department_name=" + department_name
				+ ", branch_id=" + branch_id + ", branch_name=" + branch_name + ", position=" + position
				+ ", hire_date=" + hire_date + ", fire_date=" + fire_date + ", status=" + status + ", img_root="
				+ img_root + ", img_size=" + img_size + ", getEmp_code()=" + getEmp_code() + ", getId()=" + getId()
				+ ", getPassword()=" + getPassword() + ", getName_kor()=" + getName_kor() + ", getName_eng()="
				+ getName_eng() + ", getEmail()=" + getEmail() + ", getPhone_number()=" + getPhone_number()
				+ ", getBirth()=" + getBirth() + ", getOrg_code()=" + getOrg_code() + ", getDepartment_id()="
				+ getDepartment_id() + ", getDepartment_name()=" + getDepartment_name() + ", getBranch_id()="
				+ getBranch_id() + ", getBranch_name()=" + getBranch_name() + ", getPosition()=" + getPosition()
				+ ", getHire_date()=" + getHire_date() + ", getFire_date()=" + getFire_date() + ", getStatus()="
				+ getStatus() + ", getImg_root()=" + getImg_root() + ", getImg_size()=" + getImg_size()
				+ ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString()
				+ "]";
	}
}

