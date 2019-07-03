package SurveyDBAction.user;

import java.sql.Timestamp;

public class SurveyDataBean {
	private int q_num;
	private String q_content;
	private String q_opt1;
	private String q_opt2;
	private String q_opt3;
	private String q_opt4;
	private Timestamp reg_date;
	
	public int getQ_num() {
		return q_num;
	}
	public void setQ_num(int q_num) {
		this.q_num = q_num;
	}
	public String getQ_content() {
		return q_content;
	}
	public void setQ_content(String q_content) {
		this.q_content = q_content;
	}
	public String getQ_opt1() {
		return q_opt1;
	}
	public void setQ_opt1(String q_opt1) {
		this.q_opt1 = q_opt1;
	}
	public String getQ_opt2() {
		return q_opt2;
	}
	public void setQ_opt2(String q_opt2) {
		this.q_opt2 = q_opt2;
	}
	public String getQ_opt3() {
		return q_opt3;
	}
	public void setQ_opt3(String q_opt3) {
		this.q_opt3 = q_opt3;
	}
	public String getQ_opt4() {
		return q_opt4;
	}
	public void setQ_opt4(String q_opt4) {
		this.q_opt4 = q_opt4;
	}
	public Timestamp getReg_date() {
		return reg_date;
	}
	public void setReg_date(Timestamp reg_date) {
		this.reg_date = reg_date;
	}
	
	

}
