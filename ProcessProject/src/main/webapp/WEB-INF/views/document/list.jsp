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

</head>
<body>
<%@ include file="../include/header2.jsp" %>


<div id="board_background" style="padding-left: 280px !important;
    padding-top: 100px !important;
    padding-right : 250px !important;
    background-color: white !important;">
<Br>
	<h2><b>문서함</b></h2><br>
	<a href="/document/write"><div id="write_Button" onclick="/document/write">문서올리기</div></a>
	문서를 활용하여 파일을 정리하세요
	<br><Br>
	
	<hr>

	<br>

	<div class="form-group">
			<div style="padding-right:10px">
				<select class="form-control form-control-sm" name="searchType" id="searchType">
					<option value="title">제목</option>
					<option value="Content">본문</option>
					<option value="reg_id">작성자</option>
				</select>
			

			
				<input type="text" class="form-control form-control-sm" name="keyword" id="keyword">
			
				<button class="btn btn-sm btn-primary" name="btnSearch" id="btnSearch">검색</button>
				<div class="folder" id="deleteFolder"><button class="btn btn-sm btn-primary">폴더삭제</button></div>
				<div class="folder" id="makeFolder"><button class="btn btn-sm btn-primary">폴더생성</button></div>
			</div>
		</div>
		
	
		<br>
	
		
		<c:forEach items="${folderList}" var="folderList">
			
			<table class="table table-sm">
			<tr><td style="border-top:none !important">
				<b>${folderList.folder}</b>
			</td><tr>
			
			
			<c:forEach items="${document }" var="document">
				<c:if test="${document.folder==folderList.folder }">
							
					<tr>
								
						<td><a href="/document/view?document_code=${document.document_code}">${document.fileName}</a></td>
		
						<td id="td_right"><a href="/document/view?document_code=${document.document_code}">${document.size} byte</a></td>
			
						<td id="td_right"><a href="/document/view?document_code=${document.document_code}">${document.author_id}</a></td>
			
						<td id="td_right"><a href="/document/view?document_code=${document.document_code}">${document.upload_date}</a></td>
						
							
							<c:choose>
							<c:when test="${document.author_id == employee.getId()}">
								<td id="td_right">
									<div class="moveFolder" onclick="chooseFile(${document.document_code });">폴더이동</div>
								</td>
							</c:when>
							<c:when test="${document.author_id != employee.getId()}">
								<td>&nbsp;</td>
							</c:when>
							</c:choose>
							
					</tr>

				</c:if>
			</c:forEach>
			
			</table>
			
		</c:forEach>
	
	
	<p>
	${employee.getId() }
	</p>
	<a href="/">바탕화면</a>
	
	<!-- ■■■■■■■■■■■■■■■■■■■■■■■■■■■■ 페이징   ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■-->

	<div id="paginationBox" >
		<ul class="pagination" >
			<c:if test="${pagination.prev}">
				<li class="page-item"><a class="page-link" href="#" onClick="fn_prev('${pagination.page}', '${pagination.range}', '${pagination.rangeSize}')">Previous</a></li>
			</c:if>

				
			<c:forEach begin="${pagination.startPage}" end="${pagination.endPage}" var="idx">
				<li class="page-item <c:out value="${pagination.page == idx ? 'active' : ''}"/> "><a class="page-link" href="#" onClick="fn_pagination('${idx}', '${pagination.range}', '${pagination.rangeSize}')"> ${idx} </a></li>
			</c:forEach>

			<c:if test="${pagination.next}">
				<li class="page-item"><a class="page-link" href="#" onClick="fn_next('${pagination.range}', 
				'${pagination.range}', '${pagination.rangeSize}')" >Next</a></li>
			</c:if>
		</ul>
	</div>
	
</div>


	<!-- ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ  make make make 모달 make make make ㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹ -->
	 <div id="make" class="modal">
 
      <!-- Modal content -->
      <div class="modal-content">
                <p style="text-align: center;"><span style="font-size: 14pt;"><b><span style="font-size: 22pt;">폴더생성</span></b></span></p>
             	<br>
                <input type="text" class="form-control form-control-sm" id="folder" >
             
        	<div class="modal_button">
        		<span id="deleteFolder" onClick="makeFolder();"><button class="btn btn-sm btn-primary">폴더생성</button></span>
				<span onClick="makeClose();"><button class="btn btn-sm btn-primary">취소</button></span>
     		</div>
      </div>
    </div>
    
    <!-- ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ  move move move 모달 move move move ㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹ -->
	
	 <div id="move" class="modal">
      <!-- Modal content -->
      <div class="modal-content">
                <p style="text-align: center;"><span style="font-size: 14pt;"><b><span style="font-size: 22pt;">폴더이동</span></b></span></p>
               	<br>
               	
                <c:if test="${!empty folderList}" >
				   <select class="form-control form-control-sm" id="moveBox">
				      <c:forEach var="folderList" items="${folderList}">			
				         <option value="${folderList.folder}">${folderList.folder}</option>			
				      </c:forEach>
				   </select>		
				   
				<div class="modal_button">
	        		<span id="moveFolder" onClick="moveFolder();"><button class="btn btn-sm btn-primary">폴더이동</button></span>
					<span onClick="moveClose();"><button class="btn btn-sm btn-primary">취소</button></span>
	     		</div>
     		
     			
				</c:if>
				<c:if test="${empty folderList }">
					<label>이동할 수 있는 폴더가 없습니다.</label>
					  <br>      
		            <span onClick="moveClose();"><button class="btn btn-sm btn-primary">취소</button></span>
				</c:if>
			</div>
		</div>
				
      <!-- ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ  delete delete delete 모달 delete delete delete ㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹ -->
	
	 <div id="delete" class="modal">
      <!-- Modal content -->
      <div class="modal-content">
                <p style="text-align: center;"><span style="font-size: 14pt;"><b><span style="font-size: 22pt;">폴더삭제</span></b></span></p>
               	<br>
                <c:if test="${!empty folderList}" >
				   <select class="form-control form-control-sm" id="deleteBox">
				      <c:forEach var="folderList" items="${folderList}">
				      	<c:if test="${folderList.folder!='unknown'}">			
				         <option value="${folderList.folder}">${folderList.folder}</option>			
				     	</c:if>
				      </c:forEach>
				   </select>		
				  		<div class="modal_button">
			        		<span id="deleteFolder" onClick="deleteFolder();"><button class="btn btn-sm btn-primary">폴더삭제</button></span>
							<span onClick="deleteClose();"><button class="btn btn-sm btn-primary">취소</button></span>
			     		</div>
				</c:if>
				<c:if test="${empty folderList }">
					<label>삭제할 수 있는 폴더가 없습니다.</label>
					<br>     
		          	<span onClick="deleteClose();"><button class="btn btn-sm btn-primary">닫기</button></span>
				</c:if>
      </div>
    </div>
    
</body>

<script type="text/javascript">
      
        jQuery("#makeFolder").click(function() {
                $('#make').show();
        });



        
        //팝업 Close 기능
        function makeFolder(folder) {
             $('#make').hide();

             var folder = $('#folder').val();
             
             $.ajax({
				url:"/document/makeFolder",
				method:"POST",
				type:"string",
				contentType:"application/string",
				data:folder,
				success:function(){
					window.location.href="/document/list";
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
			folder :  $("#moveBox option:selected").val(),		
			document_code : $("#document_code").text()
        };
        
        $.ajax({
			url:"/document/moveFolder",
			method:"POST",
			type:"json",
			contentType:"application/json",
			data:JSON.stringify(moveFolder),
			success:function(data){
				window.location.href="/document/list";
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

<script type="text/javascript">
	jQuery("#deleteFolder").click(function() {
	    $('#delete').show();
	});

	 function deleteFolder() {
        $('#delete').hide();
		
        var deleteFolder = $("#deleteBox option:selected").val();		

        $.ajax({
        	url:"/document/deleteFolder",
			method:"POST",
			type:"string",
			contentType:"application/string",
			data:deleteFolder,
			success:function(){
				window.location.href="/document/list";
			}
       });
   };

   function deleteClose() {
       $('#delete').hide();
   }
</script>

<script>
//이전 버튼 이벤트
function fn_prev(page, range, rangeSize) {
		var page = ((range - 2) * rangeSize) + 1;
		var range = range - 1;

		var url = "${pageContext.request.contextPath}/board/getBoardList";
		url = url + "?page=" + page;
		url = url + "&range=" + range;

		location.href = url;
	}



  //페이지 번호 클릭
	function fn_pagination(page, range, rangeSize, searchType, keyword) {
		var url = "${pageContext.request.contextPath}/board/getBoardList";
		url = url + "?page=" + page;
		url = url + "&range=" + range;

		location.href = url;	
	}



	//다음 버튼 이벤트
	function fn_next(page, range, rangeSize) {
		var page = parseInt((range * rangeSize)) + 1;
		var range = parseInt(range) + 1;
		
		var url = "${pageContext.request.contextPath}/board/getBoardList";
		url = url + "?page=" + page;
		url = url + "&range=" + range;
		location.href = url;
	}
	
	//검색기능: 게시물 검색도 결국은 검색된 리스트 화면을 보여주는 것이라 이동할 주소도 board/getBoardList
		$(document).on('click', '#btnSearch', function(e){
			e.preventDefault();
			var url = "${pageContext.request.contextPath}/board/getBoardList";
			url = url + "?searchType=" + $('#searchType').val();
			url = url + "&keyword=" + $('#keyword').val();
			location.href = url;
			console.log(url);
		});	
</script>
</html>
