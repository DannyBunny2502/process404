<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- 회원목록 상세 
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>-->


<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
<!-- Latest compiled and minified JavaScript -->
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

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
		var url = "${pageContext.request.contextPath}/member/list";
		url = url + "?page=" + page;
		url = url + "&range=" + range;
		location.href = url;	
	}



	//다음 버튼 이벤트
	function fn_next(page, range, rangeSize) {
		var page = parseInt((range * rangeSize)) + 1;
		var range = parseInt(range) + 1;
		var url = "${pageContext.request.contextPath}/member/list";
		url = url + "?page=" + page;
		url = url + "&range=" + range;
		location.href = url;
	}
	
	//검색 이벤트
	$(document).on('click', '#btnSearch', function(e){
		e.preventDefault();
		var url = "${pageContext.request.contextPath}/member/list";
		url = url + "?searchType=" + $('#searchType').val();
		url = url + "&keyword=" + $('#keyword').val();
		location.href = url;
		console.log(url);
	});	
	
	function selectView(emp_code){
		console.log(emp_code);
		
	}

</script>
<title>회원 목록</title>
<style>


body {
	patding-bottom: 30px;
}



/*체크박스*/
</style>

</head>
<body>

<article>

	<div class="container">
		<div class="table-responsive">
		<br><h2>회원 목록</h2><br>
		
		<!-- ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ 목록 나열 하기 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■  -->
		
		
		<aside class="main-sidebar">
   <section class="sidebar">
<!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu">
        <li class="header">MAIN NAVIGATION</li>
        <li class="active treeview">
          <a href="#">
            <i class="fa fa-dashboard"></i> <span>Dashboard</span> <i class="fa fa-angle-left pull-right"></i>
          </a>
          <ul class="treeview-menu">
            <li class="active"><a href="index.html"><i class="fa fa-circle-o"></i> Dashboard v1</a></li>
            <li><a href="index2.html"><i class="fa fa-circle-o"></i> Dashboard v2</a></li>
          </ul>
        </li>
      
  
        <li class="treeview">
          <a href="#">
            <i class="fa fa-pie-chart"></i>
            <span>Charts</span>
            <i class="fa fa-angle-left pull-right"></i>
          </a>
          <ul class="treeview-menu">
            <li><a href="pages/charts/chartjs.html"><i class="fa fa-circle-o"></i> ChartJS</a></li>
            <li><a href="pages/charts/morris.html"><i class="fa fa-circle-o"></i> Morris</a></li>
          </ul>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-laptop"></i>
            <span>UI Elements</span>
            <i class="fa fa-angle-left pull-right"></i>
          </a>
          <ul class="treeview-menu">
            <li><a href="pages/UI/general.html"><i class="fa fa-circle-o"></i> General</a></li>
            <li><a href="pages/UI/icons.html"><i class="fa fa-circle-o"></i> Icons</a></li>
            <li><a href="pages/UI/buttons.html"><i class="fa fa-circle-o"></i> Buttons</a></li>
            <li><a href="pages/UI/sliders.html"><i class="fa fa-circle-o"></i> Sliders</a></li>
            <li><a href="pages/UI/timeline.html"><i class="fa fa-circle-o"></i> Timeline</a></li>
            <li><a href="pages/UI/modals.html"><i class="fa fa-circle-o"></i> Modals</a></li>
          </ul>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-edit"></i> <span>Forms</span>
            <i class="fa fa-angle-left pull-right"></i>
          </a>
          <ul class="treeview-menu">
            <li><a href="pages/forms/general.html"><i class="fa fa-circle-o"></i> General Elements</a></li>
            <li><a href="pages/forms/advanced.html"><i class="fa fa-circle-o"></i> Advanced Elements</a></li>
            <li><a href="pages/forms/editors.html"><i class="fa fa-circle-o"></i> Editors</a></li>
          </ul>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-table"></i> <span>Tables</span>
            <i class="fa fa-angle-left pull-right"></i>
          </a>
          <ul class="treeview-menu">
            <li><a href="pages/tables/simple.html"><i class="fa fa-circle-o"></i> Simple tables</a></li>
            <li><a href="pages/tables/data.html"><i class="fa fa-circle-o"></i> Data tables</a></li>
          </ul>
        </li>
        <li>
          <a href="pages/calendar.html">
            <i class="fa fa-calendar"></i> <span>Calendar</span>
            <small class="label pull-right bg-red">3</small>
          </a>
        </li>
        <li>
          <a href="pages/mailbox/mailbox.html">
            <i class="fa fa-envelope"></i> <span>Mailbox</span>
            <small class="label pull-right bg-yellow">12</small>
          </a>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-folder"></i> <span>Examples</span>
            <i class="fa fa-angle-left pull-right"></i>
          </a>
          <ul class="treeview-menu">
            <li><a href="pages/examples/invoice.html"><i class="fa fa-circle-o"></i> Invoice</a></li>
            <li><a href="pages/examples/profile.html"><i class="fa fa-circle-o"></i> Profile</a></li>
            <li><a href="pages/examples/login.html"><i class="fa fa-circle-o"></i> Login</a></li>
            <li><a href="pages/examples/register.html"><i class="fa fa-circle-o"></i> Register</a></li>
            <li><a href="pages/examples/lockscreen.html"><i class="fa fa-circle-o"></i> Lockscreen</a></li>
            <li><a href="pages/examples/404.html"><i class="fa fa-circle-o"></i> 404 Error</a></li>
            <li><a href="pages/examples/500.html"><i class="fa fa-circle-o"></i> 500 Error</a></li>
            <li><a href="pages/examples/blank.html"><i class="fa fa-circle-o"></i> Blank Page</a></li>
            <li><a href="pages/examples/pace.html"><i class="fa fa-circle-o"></i> Pace Page</a></li>
          </ul>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-share"></i> <span>Multilevel</span>
            <i class="fa fa-angle-left pull-right"></i>
          </a>
          <ul class="treeview-menu">
            <li><a href="#"><i class="fa fa-circle-o"></i> Level One</a></li>
            <li>
              <a href="#"><i class="fa fa-circle-o"></i> Level One <i class="fa fa-angle-left pull-right"></i></a>
              <ul class="treeview-menu">
                <li><a href="#"><i class="fa fa-circle-o"></i> Level Two</a></li>
                <li>
                  <a href="#"><i class="fa fa-circle-o"></i> Level Two <i class="fa fa-angle-left pull-right"></i></a>
                  <ul class="treeview-menu">
                    <li><a href="#"><i class="fa fa-circle-o"></i> Level Three</a></li>
                    <li><a href="#"><i class="fa fa-circle-o"></i> Level Three</a></li>
                  </ul>
                </li>
              </ul>
            </li>
            <li><a href="#"><i class="fa fa-circle-o"></i> Level One</a></li>
          </ul>
        </li>
        <li><a href="documentation/index.html"><i class="fa fa-book"></i> <span>Documentation</span></a></li>
        <li class="header">LABELS</li>
        <li><a href="#"><i class="fa fa-circle-o text-red"></i> <span>Important</span></a></li>
        <li><a href="#"><i class="fa fa-circle-o text-yellow"></i> <span>Warning</span></a></li>
        <li><a href="#"><i class="fa fa-circle-o text-aqua"></i> <span>Information</span></a></li>
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>
  
   <div class="container" style="padding:10px">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
        <span>위로가기▲</span>
      </a>
   </div>
   
   
   <!-- /////////////////////////////////////////////////////////////////////////////////////// -->
   
   	<c:forEach items="${position}" var="position">
			
			<table class="table table-sm">
			<tr><td style="border-top:none !important">
				<b>${position.position}</b>
			</td><tr>
			
			<c:forEach items="${EMPLOYEES}" var="document">
				<c:if test="${EMPLOYEES.position==position.position }">
							
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
   
   
   
   
			



<ul> 
	<c:forEach items="${position}" var="position" varStatus="loop"> 
	<li>${position.position}</li> 
		<c:choose> 
			<c:when test="${loop.count%3==0}"> 
		</ul><ul> 
</c:when> 
</c:choose> 
</c:forEach> 
</ul> 
			
		
		<!-- ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ 검색 스타트  ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■  -->
		

			<div style="width:200px;">
				<div class="form-group row justify-content-center">
					<div class="w100" style="padding-right:10px; align:center;" >
						<select class="form-control form-control-sm" name="searchType" id="searchType">
							<option value="emp_code">사원코드</option>
							<option value="id">아이디</option>
							<option value="name_kor">이름</option>
							<option value="email">이메일</option>
							<option value="department_id">부서</option>
							<option value="branch_id">지점</option>
							<option value="position">직급</option>
						</select>
					</div>
					<div class="w300" style="padding-right:10px">
						<input type="text" class="form-control form-control-sm" name="keyword" id="keyword">
					</div>
					<div>
						<button class="btn btn-sm btn-primary" name="btnSearch" id="btnSearch">검색</button>
					</div>
				</div>
			</div>
		<!-- 검색 {e} -->

		<!-- ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ 회원 정보  ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ -->
		
		<table class="table table-striped table-sm">
		<tr>
			<th>사원코드</th>
			<th>아이디</th>
			<th>국문이름</th>
			<th>영문이름</th>
			<th>이메일</th>
			<th>휴대폰번호</th>
			<th>생년월일</th>
			<th>조직코드</th>
			<th>부서</th>
			<th>지점</th>
			<th>직급</th>
			<th>상세정보확인</th>
		</tr>
		<c:forEach var="row" items="${list}">
		<tr align="center">
		
		<!-- 회원정보 상세조회를 위해 a태그 추가 -->
			<td><a href="${path}/member/view.do?emp_code=${row.emp_code}">${row.emp_code}</a></td>
			<td>${row.id}</td>
			<td >${row.name_kor}</td>
			<td>${row.name_eng}</td>
			<td>${row.email}</td>
			<td>${row.phone_number}</td>
			<td>${row.birth}</td>
			<td>${row.org_code}</td>
			<td>${row.department_id}</td>
			<td>${row.branch_id}</td>
			<td>${row.position}</td>
			<td><button class="btn btn-default selectView" onclick="selectView('${row.emp_code}','${row.id}','${row.img}','${row.name_kor}','${row.name_eng}','${row.email}','${row.phone_number}','${row.birth}','${row.org_code}','${row.department_id}','${row.hire_date}','${row.status}' )">상세정보</button><br/></td>
<%-- 			<td><a onclick="selectView(${row.emp_code});" style="cursor: pointer;">상세정보</a></td> --%>
<%-- 			<td><butto9999999+n class="btn btn-default selectView" data-id="${row.emp_code}"data-target="#layerpop" data-toggle="modal">상세정보</button><br/></td> --%>
		</tr>
		</c:forEach>
	</table>
	</div> 
	<!-- 회원정보 {e} -->
	
	<!-- ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ 페이징 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■-->
	
	<div id="paginationBox">
		<ul class="pagination">
			<c:if test="${pagination.prev}">
				<li class="page-item"><a class="page-link" href="#" onClick="fn_prev('${pagination.page}', '${pagination.range}', '${pagination.rangeSize}')">Previous</a></li>
			</c:if>
				
			<c:forEach begin="${pagination.startPage}" end="${pagination.endPage}" var="idx">
				<li class="page-item <c:out value="${pagination.page == idx ? 'active' : ''}"/> "><a class="page-link" href="#" onClick="fn_pagination('${idx}', '${pagination.range}', '${pagination.rangeSize}')"> ${idx} </a></li>
			</c:forEach>

			<c:if test="${pagination.next}">
				<li class="page-item"><a class="page-link" href="#" onClick="fn_next('${pagination.range}', '${pagination.range}', '${pagination.rangeSize}')" >Next</a></li>
			</c:if>
		</ul>
	</div>

	<!--페이징 {e} -->
	
	<!-- ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ 모달창 띄워서 회원 상세정보 할꺼 예제로  해보기!  ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■  -->
	
	<div class="container">
  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title" id="title"></h4>
        </div>
        <div class="modal-body">
          <table  class="table table-striped table-sm" >
			<tr align="center">
				<td>사원코드</td>
				<td id="emp_code"></td>
			</tr>
			<tr align="center">
				<td>아이디</td>
				<td id="id"></td>
			</tr>
			<tr align="center">
				<td>회원사진</td>
				<td id="img">
				<img src="${path}/resources/image/emp_img/${row.getImg() }" width="110px" height="145px" style="border:1px solid lightgray;">
				</td>
			</tr>
			<tr align="center">
				<td>국문이름</td>
				<td id="name_kor"></td>
			</tr>
			<tr align="center">
				<td>영문이름</td>
				<td id="name_eng"></td>
			</tr>

			<tr align="center">
				<td>이메일주소</td>
				<td id="email"></td>
			</tr>
			<tr align="center">
				<td>폰번호</td>
				<td id="phone_number"></td>
			</tr>
			<tr align="center">
				<td>생년월일</td>
				<td id="birth"></td>
			</tr>
			<tr align="center">
				<td>조직코드</td>
				<td id="org_code"></td>
			</tr>
			<tr align="center">
				<td>부서</td>
				<td id="department_id"></td>
			</tr>
			<tr align="center">
				<td>입사일</td>
				<td id="hire_date"></td>
			</tr>
			<tr align="center">
				<td>재직상태</td>
				<td id="status"></td>
			</tr>
			</table>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>  
</div>

<script type="text/javascript">
	function selectView(emp_code, id,img,name_kor,name_eng,email,phone_number,birth,org_code,department_id,hire_date,status){

		//show 호출시 넘겨준 값을 이용하여 ajax 등을 통해 modal 을 띄울때 동적으로 바뀌어야 하는 값을 얻어온다.  

		//얻어온 값을 이용하여, modal 에서 동적으로 바뀌어야 하는 값을 바꾸어 준다..  

	    $("#title").html(name_kor + " 님의 회원 상세 목록");

	    $("#emp_code").html(emp_code);
	    $("#id").html(id);
	    $("#img").html(img);
	    $("#name_kor").html(name_kor);
	    $("#name_eng").html(name_eng);
	    $("#email").html(email);
	    $("#phone_number").html(phone_number);
	    $("#birth").html(birth);
	    $("#org_code").html(org_code);
	    $("#department_id").html(department_id);
	    $("#hire_date").html(hire_date);
	    $("#status").html(status);

	    //modal을 띄워준다.  

	    $("#myModal").modal('show');

	}

	</script>
	

</div>
	
	</div>
	
	</article>
	
</body>
</html>