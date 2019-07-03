<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "SurveyDBAction.user.SurveyDataBean" %>
<%@ page import = "SurveyDBAction.user.SurveyDBBean" %>

<%
String quest_A = request.getParameter("question_A");
String opt1 = request.getParameter("option1");
String opt2 = request.getParameter("option2");
String opt3 = request.getParameter("option3");
String opt4 = request.getParameter("option4");

SurveyDBBean qInsert = new SurveyDBBean();
SurveyDataBean qData = new SurveyDataBean();

qData.setQ_content(quest_A);
qData.setQ_num(0);
qData.setQ_opt1(opt1);
qData.setQ_opt2(opt2);
qData.setQ_opt1(opt3);
qData.setQ_opt2(opt4);

qInsert.insertA(qData);

%>

<script>
	window.close();
	opener.location.href="jsTest01.jsp";
</script>