package SurveyDBAction.user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class SurveyDBBean {
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	
	public SurveyDBBean() {
		try {
			String driver = "com.mysql.cj.jdbc.Driver";
			String url = "jdbc:mysql://localhost:3306/userchat?serverTimezone=UTC";
			String user = "root";
			String pass = "class01";
			
			Class.forName(driver);
			conn = DriverManager.getConnection(url, user, pass);
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}//end - constructor

	public void insertA(SurveyDataBean qData) throws Exception{
		String sql = "";
		
		try {
			sql = "INSERT INTO survey_question VALUES(1,?,?,?,?,?,now()) ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, qData.getQ_content());
			pstmt.setString(2, qData.getQ_opt1());
			pstmt.setString(3, qData.getQ_opt2());
			pstmt.setString(4, qData.getQ_opt3());
			pstmt.setString(5, qData.getQ_opt4());
			
			int result = pstmt.executeUpdate();
			
			System.out.println(result);
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	

}//end - class SurveyDBBean

