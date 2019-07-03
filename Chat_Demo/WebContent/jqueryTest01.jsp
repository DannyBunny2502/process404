<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<p id="pp"><h1></h1></p>

	<script>
		var arr_subject= ["국어", "영어"];
		var result = 0;
		
		function score(arrData){
			var sum_Val=0;
			for(var i = 0; i<arrData.length; i++){
				sum_Val += Number(prompt(arrData[i]+"점수 : "));
			}
			
			var avg = sum_Val/arrData.length;
			
			console.log(sum_Val);
			
			document.getElementById('pp').innerHTML="sum : "+sum_Val+ " avg: "+avg;
		}
		
		score(arr_subject);

	</script>
	
	
</body>
</html>