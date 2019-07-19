<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="/WEB-INF/views/layout/header.jsp"%>

<!DOCTYPE html>
<html>
<head>
</head>
<meta charset="UTF-8">

<!-- Bootstrap CSS -->

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" 
integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">



<title>board</title>
	
	<style>
		.pagination{
			align: center;
		}
	</style>
	
	<script>
	$(document).on('click', '#btnWriteForm', function(e){
		e.preventDefault();
		location.href = "${pageContext.request.contextPath}/board/boardForm";
	});
	
	
	//게시판의 리스트 수정 (클릭 이벤트))
	//제목을 클릭하면 상세 페이지로 이동.
	//게시물 조회에서는 서버쪽에 어떤 게시물이 클릭했는지 게시물의 번호(bid)를 넘겨줘야 하므로 값을 받는다.
	//게시글 조회는 get 방식으로 데이터를 전송한다.
	function fn_contentView(bid){
		var url = "${pageContext.request.contextPath}/board/getBoardContent";
		url = url + "?bid="+bid;
		// 게시글 조회는 get방식으로 데이터를 전송한다. 따라서 ? 연산자를 사용해 bid를 주소 뒤에 붙여준다.
		location.href = url;
	}
	
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


</head>
<body>


<article>
	<div class ="container">
		<div class ="table=responsive">
<h2>board list</h2>
	<table class="table table-striped table-sm">
		<colgroup>
			<col style="width:5%;" />
			<col style="width:auto;" />
			<col style="width:15%;" />
			<col style="width:10%;" />
			<col style="width:10%;" />
		</colgroup>
		<thead>
			<tr>
				<th>NO</th>
				<th>글제목</th>
				<th>작성자</th>
				<th>조회수</th>
				<th>작성일</th>
			</tr>
		</thead>
		<tbody>
			<c:choose>
				<c:when test="${empty boardList }" >
					<tr><td colspan="5" align="center">데이터가 없습니다.</td></tr>
				</c:when> 
				<c:when test="${!empty boardList}">
					<c:forEach var="list" items="${boardList}">
						<tr>
							<td><c:out value="${list.bid}"/></td>
							
							<!-- title(제목)을 클릭하면 다른페이지로 넘어갈 수 있도록 한다.
							href="#"으로 처리했기 때문에 아무곳도 이동하지 못하지만 
							onclick 속성으로 클릭이벤트가 발생하면 fn_boardView()함수를 호출하도록 한다.-->
							<td>
								<a href="#" onClick="fn_contentView(<c:out value="${list.bid}"/>)">
									<c:out value="${list.title}"/>
								</a>
							</td>
							<td><c:out value="${list.reg_id}"/></td>
							<td><c:out value="${list.view_cnt}"/></td>
							<td><c:out value="${list.reg_dt}"/></td>
						</tr>
					</c:forEach>
				</c:when>
			</c:choose>
		</tbody>
	</table>
	</div>
	
	
	<!--■■■■■■■■■■■■■■■■■■■■■■■■■■ 글쓰기 페이지로 이동하는 버튼  ■■■■■■■■■■■■■■■■■■■■■■■■■■■  -->
	<div>
		<button type = "button" class="btn btn-sm btn-primary" id="btnWriteForm">글쓰기</button>
	</div>
	<br>
	
	
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
	<!-- pagination{e} -->
	
	<!-- ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ 검색  ■■■■■■■■■■■■■■■■■■■■■■■■■■■■-->
	
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
		<!-- search{e} -->

	
	</div>
	</article>
</body>
</html>
