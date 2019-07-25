<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <%@ include file="../include/header.jsp" %>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    
    <meta charset="UTF-8">
    <title>설문 게시판</title>
    <style>
        
    </style>
    <script>
        $(document).ready(function(){
            console.log('${employee.getId()}');
        });
        
    </script>
</head>
<body>
<%@ include file="../include/header2.jsp" %>
<br><br><br><br>
<h1>설문조사 게시판</h1><br><br>
    <article>
    
        <div class="container">
        <form id="survey_form" method="post" action="#">
            <div class="form-group row justify-content-center">
                <div class="w100" style="padding-right:10px">
                    <select class="form-control form-control-sm" name="searchType" id="searchType">
                        <option value="title">제목</option>
                        <option value="Content">본문</option>
                        <option value="reg_id">작성자</option>
                    </select>
                </div>
    
                <div class="w300" style="padding-right:10px">
                    <input type="text" class="form-control form-control-sm" name="keyword" id="keyword">
                </div>
    
                <div>
                    <button class="btn btn-sm btn-primary" name="btnSearch" id="btnSearch">검색</button>
                </div>
            </div>
            <br>
        </form>    
        
            <div class="table-responsive">
                <table class="table table-striped table-sm">
                    <tr>
                        <td>번호</td>
                        <td>설문주제</td>
                        <td>작성자</td>
                        <td>등록일</td>
                        <td>마감기한</td>
                        <td>설문응시자수</td>
                    </tr>
                    <c:forEach var="survey"  items="${survey}" varStatus ="status">
                    <tr>
                        <td>${status.index+1} </td>
                        <td><a href="${path}/survey/surveyResultBoardView?survey_code=${survey.survey_code}">${survey.title}</a></td>
                        <td>${survey.name_kor}</td>
                        <fmt:parseDate var="regDate" value="${survey.regDate}" pattern="yyyy-MM-dd HH:mm:ss" />
                        <td><fmt:formatDate value="${regDate}" pattern="yyyy-MM-dd"/></td>
                        <fmt:parseDate var="dueDate" value="${survey.dueDate}" pattern="yyyy-MM-dd HH:mm:ss" />
                        <td><fmt:formatDate value="${dueDate}" pattern="yyyy-MM-dd"/></td>
                        <td>
                            <c:choose>
                                <c:when test="${survey.resCnt==0||survey.resCnt==null}">
                                0
                                </c:when>
                                <c:otherwise>
                                    ${survey.resCnt}
                                </c:otherwise>
                            </c:choose>
                        </td>
                    </tr>
                    </c:forEach>
                
                </table>    
            </div>
        </div> <!-- end class: container -->
    
    </article>
    
</body>
</html>