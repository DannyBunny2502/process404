<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<script>
	//https://pkbad.tistory.com/33
	function checkId(){
	    var id = $('#id').val)();
	    $.ajax({
	        url:'/idDuplChk.do',
	        type:'post',
	        data:{id:id},
	        success:function(data){
	            if($.trim(data)==0){
	                $('#chkMsg').html("사용가능합니다.");                
	            }else{
	                $('#chkMsg').html("사용불가능합니다.");
	            }
	        },
	        error:function(){
	                alert("에러입니다");
	        }
	    });
	};
	</script>
</head>
<body>
	<input type="text" id = "id" oninput = "checkId()" />
	<span id = "chkMsg"></span> 	
</body>
</html>