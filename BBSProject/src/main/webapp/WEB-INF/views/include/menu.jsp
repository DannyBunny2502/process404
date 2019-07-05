<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<%
// 자바에서는 아래와 같이 사용했었다.
//String path = request.getContextPath();
%>
<hr>
<div style="text-align:center;">
	<a href="${path}/">main</a>
	<a href="${path}/gugu.do">구구단</a>
	<a href="${path}/test.do">테스트</a>
	<a href="${path}/member/list.do">회원관리</a>
</div>
<hr>
