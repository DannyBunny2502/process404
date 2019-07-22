<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<html>
<head>
	<title>게시물 목록</title>
    <link href="/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<script src="/resources/js/jquery-3.3.1.min.js"></script>
 	<script src="/resources/bootstrap/bootstrap/js/bootstrap.min.js"></script> 
	<link href="/resources/css/board.css" rel="stylesheet" type="text/css" />
	
	  <style>
        /* The Modal (background) */
        .modal {
            display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 1; /* Sit on top */
            left: 0;
            top: 0;
            width: 100%; /* Full width */
            height: 100%; /* Full height */
            overflow: auto; /* Enable scroll if needed */
            background-color: rgb(0,0,0); /* Fallback color */
            background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
        }
    
        /* Modal Content/Box */
        .modal-content {
            background-color: #fefefe;
            margin: 15% auto; /* 15% from the top and centered */
            padding: 20px;
            border: 1px solid #888;
            width: 30%; /* Could be more or less, depending on screen size */                          
        }
 
</style>

</head>
<body>

<%@ include file="../include/header2.jsp" %>

<!-- CREATE TABLE NOTICE
(
    `notice_code`      INT              NOT NULL    COMMENT '게시물코드', 
    `author_id`        VARCHAR(20)      NOT NULL    COMMENT '아이디', 
    `author_password`  VARCHAR(100)      NOT NULL    COMMENT '비밀번호', 
    `title`            VARCHAR(50)      NOT NULL    COMMENT '제목', 
    `content`          VARCHAR(1000)    NOT NULL    COMMENT '내용', 
    `views`            INT              NOT NULL    COMMENT '조회수', 
    `file_root`        VARCHAR(100)     NULL        COMMENT '파일경로', 
    `file_size`        VARCHAR(20)      NULL        COMMENT '파일크기', 
    `upload_date`      DATETIME         NOT NULL    COMMENT '게시일자', 
    PRIMARY KEY (notice_code)
); -->



<div class="board" style="padding:70px;">
<Br>
	<h2><b>문서함</b></h2><br>
	문서를 활용하여 파일을 정리하세윰
	<br><Br>
	
<br>
	<table style="background-color:white;">
	<!-- <table border="1"> -->
	<div id="folder">폴더생성</div><br><br>
	 <div id="myModal" class="modal">
 
      <!-- Modal content -->
      <div class="modal-content">
                <p style="text-align: center;"><span style="font-size: 14pt;"><b><span style="font-size: 24pt;">폴더명 입력</span></b></span></p>
                <input type="text" id="folderName" style="background-color:gray; width:100%;" >
                <p><br /></p>
            <div style="cursor:pointer;background-color:#DDDDDD;text-align: center;padding-bottom: 10px;padding-top: 10px;" onClick="close_pop();">
                <span class="pop_bt" style="font-size: 13pt;" >
                     닫기
                </span>
            </div>
      </div>
 
    </div>

		
		<thead>
			<tr>
				<th>번호</th>
				<th>작성자</th>
				<th>제목</th>
				<th>파일이름</th>
				<th>내용</th>
				<th>조회수</th>
				<th>폴더</th>
				<Th>타입</Th>
				<th>크기</th>
			<!-- 	<th>사진</th> -->
				<th>게시일자</th>
				
				
			</tr>
		</thead>
		<tbody>

			<c:forEach items="${document}" var="document">
				<tr>
					<td>
						<a href="/document/view?document_code=${document.document_code}">${document.document_code}</a>
					</td>
					
					<td>${document.author_id}</td>
			
					<td>${document.title}</td>
						
					<td>${document.fileName}</td>
					
					<td>${document.content}</td>
			
					<td>${document.views}</td>
					
					<td>${document.folder}</td>
					
					<td>${document.type }</td>
					
					<td>${document.size}</td>
					
					<%-- <td><img class="document_list_img" src="/resources/image/document_img/${document.newFile}"></td> --%>
			
					<td>${document.upload_date}</td>
				
					<c:if test="${document.author_id == employee.getId()}">
						<td>
							<button onClick="moveFolder();">폴더이동</button>
						</td>
					</c:if>
				</tr>
			</c:forEach>

		</tbody>
	</table>
	
	<a href="/document/write">문서올리기</a>
	<p>
	${employee.getId() }
	</p>
	<a href="/">바탕화면</a>
</div>
</body>

<script type="text/javascript">
      
        jQuery("#folder").click(function() {
                $('#myModal').show();
        });
        //팝업 Close 기능
        function close_pop(folderName) {
             $('#myModal').hide();

             var folderName =
				 $('#folderName').val();
             
             $.ajax({
				url:"/document/makeFolder",
				method:"POST",
				type:"string",
				contentType:"application/string",
				data:folderName,
				success:function(){
						alert("성공");
				}
            });
        };




    </script>


</html>
