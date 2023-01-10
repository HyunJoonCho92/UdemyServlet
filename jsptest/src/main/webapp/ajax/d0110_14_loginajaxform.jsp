<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="${pageContext.request.contextPath}/js/jquery-3.6.1.min.js" ></script>
<script>
$(document).ready(function(){
	$("#ajaxbtn").on('click', function(){
		$.ajax({
			url : "d0110_15_loginajaxresult.jsp",
			data : {'id' : $("#id").val(), 'pw' : $("#pw").val() },
			type : 'get',
			dataType : 'json',
			success : function(server){
				$("#result").html(server.logintime + " 시각에 로그인 " + server.login);
			}
		});
	});
});

</script>

</head>
<body>
	<h1> 로그인폼 </h1>
	<form action="d0110_15_loginajaxresult.jsp"> <!-- 	get 방식 -->
	아이디 <input type=text name="id" id="id"><br>
	암호 <input type="password" name="pw" id="pw"><br>
<!-- 	<input type=submit value="로그인"> -->
		<input type=button id="ajaxbtn" value="ajax로그인">
	</form>
	
	<div id="result">로그인결과를 출력합니다</div>
</body>
</html>