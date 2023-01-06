<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구구단 출력</title>
<script src="<%=request.getContextPath()%>/js/jquery-3.6.1.min.js"></script>
<script>
	$(document).ready(function(){
		//홀수줄 - 바탕색상 pink
		//짝수줄 - 바탕색상 silver
		$('tr:even').css("background-color", "pink");
		$('tr:odd').css("background-color", "silver");
	});
</script>
</head>
<body>
	<%
	// get/post 동일 로직 처리
	if(request.getMethod().equals("GET")){
		String startStr = request.getMethod("start");
		String endStr = request.getMethod("end");
		int start = 0;
		int end = 0;
		if(startStr != null || !startStr.equals("")){
			start = Integer.parseInt(startStr);
		}
		if(endStr != null && !endStr.equals("")){
			end = Integer.parseInt(endStr);
		}
	%>
	 
		<table border = 1>
	<%
		for(int j = 1; j <= 9; j++){
	%>		
			<td>
			for(int i = start; i <= end; i++){
				<td>i + "*" + j + "=" + (i*j)</td>
	<%		} %>
			<td>
	<%	}  %>
	else{
	%>
		<h3>post방식은 지원하지 않습니다.</h3>
	<%
	}
	%>
	
	<div><%= start %></div>
	<div><%= end %></div>
	
</body>
</html>