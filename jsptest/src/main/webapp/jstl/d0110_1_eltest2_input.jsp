<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="d0110_2_eltest2.jsp">  <!-- 	현재는 get 방식 -->
		아이디입력: <input type=text name=id><br>
		암호입력: <input type=password name=pw><br>
		<select name="lunch" multiple="multiple">
			<option>한식</option>
			<option>중식</option>
			<option>일식</option>
			<option>양식</option>
			<option>동남아식</option>
		</select>
		<input type=submit value="주문">
	</form>
</body>
</html>