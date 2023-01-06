<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
	String msg="콘솔 출력"; 
	System.out.println(msg);
	%>
<%--   <%! 는 메소드 정의할 수 있당. %>   --%>
	<%!
	String msg2 = "멤버변수";
	int multiply(int a, int b){
		System.out.println(msg2 + " : " + a * b);
		return a*b;
	}
	%>
	<%= multiply(10, 20) %>
</body>
</html>