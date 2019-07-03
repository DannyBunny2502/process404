package com.amy.user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;


public class UserDAO {

	DataSource ds;
	
	public UserDAO() {
		try {
			InitialContext initCtx = new InitialContext();
			Context envContext = (Context) initCtx.lookup("java:comp/env");
			ds = (DataSource) envContext.lookup("jdbc/UserChat");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public int login(String userID, String userPassword) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql ="SELECT * FROM user WHERE userID = ?";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userID);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				if(rs.getString("userPassword").equals(userPassword)) {
					return 1; //로그인 성공
				}
				return 2;//비밀번호 틀림
			}else {
				return 0;//아이디 틀림
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs != null) {rs.close();}
				if(conn != null) {conn.close();}
				if(pstmt != null) {pstmt.close();}
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		return -1;
		
	}//end - login()
	
	//id 중복체크
	public int registerCheck(String userID) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql ="SELECT * FROM user WHERE userID = ?";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userID);
			rs = pstmt.executeQuery();
			
			if(rs.next() || userID.equals("")) {
				return 0; //이미 존재하는 회원
			}else {
				return 1; //가입가능한 아이디
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs != null) {rs.close();}
				if(conn != null) {conn.close();}
				if(pstmt != null) {pstmt.close();}
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		return -1; //db 오류
		
	}//end - registerCheck()
	
	
	public int register(String userID, String userPassword, String userGender, String userEmail, String userProfile, String userName, String userAge) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql ="INSERT INTO user VALUES(?,?,?,?,?,?,?) ";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userID);
			pstmt.setString(2, userPassword);
			pstmt.setString(3, userGender);
			pstmt.setString(4, userEmail);
			pstmt.setString(5, userProfile);
			pstmt.setString(6, userName);
			pstmt.setInt(7, Integer.parseInt(userAge));
			
			pstmt.executeUpdate();
			
			return 1;
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(conn != null) {conn.close();}
				if(pstmt != null) {pstmt.close();}
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		return -1; //db 오류
		
	}//end - login()
	
}//end - class



























