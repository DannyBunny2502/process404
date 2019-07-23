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
	<div id="makeFolder">폴더생성</div><br><br>
	 <div id="make" class="modal">
 
      <!-- Modal content -->
      <div class="modal-content">
                <p style="text-align: center;"><span style="font-size: 14pt;"><b><span style="font-size: 24pt;">폴더명 입력</span></b></span></p>
                <input type="text" id="folder" style="background-color:gray; width:100%;" >
                <p><br /></p>
            <div style="cursor:pointer;background-color:#DDDDDD;text-align: center;padding-bottom: 10px;padding-top: 10px;" onClick="makeFolder();">
                <span class="pop_bt" style="font-size: 13pt;" >
                  	   생성
                </span><br>
        	</div>
        	<div style="background-color:#DDDDDD;text-align: center;padding-bottom: 10px;padding-top: 10px;" onClick="makeClose();">
                <span class="pop_bt" style="font-size: 13pt;" >
                  	   취소
                </span><br>
        	</div>
      </div>
    </div>

	
	 <div id="move" class="modal">
 
      <!-- Modal content -->
      <div class="modal-content">
                <p style="text-align: center;"><span style="font-size: 14pt;"><b><span style="font-size: 24pt;">폴더명 입력</span></b></span></p>
               
               	<div id="document_code"></div>
               
                <c:if test="${!empty folderList}" >
				   <select name="selectBox" id="selectBox" style="width:80px;" class="select_02">
				      <c:forEach var="folderList" items="${folderList}">			
				         <option value="${folderList.folder}">${folderList.folder}</option>			
				      </c:forEach>
				   </select>		
				  		<div style="cursor:pointer;background-color:#DDDDDD;text-align: center;padding-bottom: 10px;padding-top: 10px;" onClick="moveFolder();">
			                <span class="pop_bt" style="font-size: 13pt;" >
			                   	  이동
			                </span>
			            </div>	
			            <div style="cursor:pointer;background-color:#DDDDDD;text-align: center;padding-bottom: 10px;padding-top: 10px;" onClick="moveClose();">
			                <span class="pop_bt" style="font-size: 13pt;" >
			                   	  취소
			                </span>
			            </div>		
				</c:if>
				<c:if test="${empty folderList }">
					<label>이동할 수 있는 폴더가 없습니다.</label>
					         
		            <div style="cursor:pointer;background-color:#DDDDDD;text-align: center;padding-bottom: 10px;padding-top: 10px;" >
		                <div style="font-size: 13pt;" id="hide">
							닫기
		                </div>
		            </div>
				</c:if>
				
                <p><br /></p>
                
     
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
			<c:forEach items="${folder}" var="folder">
				<c:forEach items="${document }" var="document">
					<c:if test="${document.folder==folder.folder }">
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
							
							<c:choose>
							<c:when test="${document.author_id == employee.getId()}">
								<td>
									<div class="moveFolder" onclick="chooseFile(${document.document_code });">폴더이동</div>
								</td>
							</c:when>
							<c:when test="${document.author_id != employee.getId()}">
								<td></td>
							</c:when>
							</c:choose>
						</tr>
					</c:if>
				</c:forEach>
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
      
        jQuery("#makeFolder").click(function() {
                $('#make').show();
        });

        
        //팝업 Close 기능
        function makeFolder(folder) {
             $('#make').hide();

             var folder =
				 $('#folder').val();
             
             $.ajax({
				url:"/document/makeFolder",
				method:"POST",
				type:"string",
				contentType:"application/string",
				data:folder,
				success:function(){
						
				}
            });
        };

        function makeClose() {
            $('#make').hide();
        }
</script>

<script type="text/javascript">
	
	 function moveFolder() {
        $('#move').hide();
		
        var moveFolder = {
			folder :  $("#selectBox option:selected").val(),		
			document_code : $("#document_code").text()
        };
        
        $.ajax({
			url:"/document/moveFolder",
			method:"POST",
			type:"json",
			contentType:"application/json",
			data:JSON.stringify(moveFolder),
			success:function(data){
				
			}
       });
   };

   function chooseFile(docCode) {
	   $("#document_code").html('');
	   $("#document_code").append(docCode);
	   $("#move").show();
	}

   function moveClose() {
       $('#move').hide();
   }
</script>

</html>
