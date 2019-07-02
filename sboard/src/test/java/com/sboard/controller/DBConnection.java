package com.sboard.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import org.junit.Test;

//--------------------------------------------------------------------
// DB 연결 테스트
//--------------------------------------------------------------------
public class DBConnection {
	final	String	DRIVER	= "com.mysql.jdbc.Driver";
	final	String	URL		= "jdbc:mysql://127.0.0.1:3306/bookshopdb";
	final	String	USER	= "bookmaster";
	final	String	PASSWORD = "1111";
	
	//--------------------------------------------------------------------
	@Test
	public void connectionTest() throws Exception {
		Class.forName(DRIVER);
		
		try {
			Connection con =
					DriverManager.getConnection(URL, USER, PASSWORD);
			System.out.println(con);
		} catch (Exception e) {
			e.printStackTrace();
		}
	} // End - public void connectionTest()
	
} // End - public class DBConnection






















