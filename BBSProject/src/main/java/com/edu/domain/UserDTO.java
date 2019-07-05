package com.edu.domain;

public class UserDTO {
    private String id;
    private String pw;
    private String pwConfirm;
    private String nickName;
    private int grade;
    private int isAdmin;
    
    public String getId() {
        return id;
    }
    public void setId(String id) {
        this.id = id;
    }
    public String getPw() {
        return pw;
    }
    public void setPw(String pw) {
        this.pw = pw;
    }
    public String getPwConfirm() {
        return pwConfirm;
    }
    public void setPwConfirm(String pwConfirm) {
        this.pwConfirm = pwConfirm;
    }
    public String getNickName() {
        return nickName;
    }
    public void setNickName(String nickName) {
        this.nickName = nickName;
    }
    public int getGrade() {
        return grade;
    }
    public void setGrade(int grade) {
        this.grade = grade;
    }
    public int getIsAdmin() {
        return isAdmin;
    }
    public void setIsAdmin(int isAdmin) {
        this.isAdmin = isAdmin;
    }
    @Override
    public String toString() {
        return "UserDTO [id=" + id + ", pw=" + pw + ", nickName=" + nickName + ", grade=" + grade + ", isAdmin="
                + isAdmin + "]";
    }
    
}

