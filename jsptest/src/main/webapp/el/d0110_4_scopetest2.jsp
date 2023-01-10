<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>scopetest2.jsp</h1>
	
<%-- 	<%= b %><br> --%>
	<%= pageContext.getAttribute("a") %> <br><br>
	
<%-- 	jsp b 출력 = <%=b %><br> --%>
	jsp a 출력 (pageContext) = <%=pageContext.getAttribute("a") %><br>
	jsp a 출력(request) = <%=request.getAttribute("a") %><br>
	jsp a 출력(session) = <%=session.getAttribute("a") %><br>
	jsp a 출력(application) = <%=application.getAttribute("a") %><br><br>
	
<%-- 	el b 출력 = ${b } <br>  <!-- 	el에서는 없다고 취급 --> --%>
	el a 출력(현재페이지의 jsp태그 전달값) = ${pageScope.a } <br>
	el a 출력(이동전의 jsp태그 전달값) = ${requestScope.a } <br>
	el a 출력(세션 전달값) = ${sessionScope.a } <br>
	el a 출력(어플리케이션 전달값) = ${applicationScope.a } <br><br>
	
	el 컨텍스트명 출력 = ${pageContext.request.contextPath }<br>
	el jsp명 출력 = ${pageContext.request.requestURI }<br>
	
	<!-- 
	e1 전달 변수 해석 출력
	1. pageScope 찾는다. 2.requestScope 찾는다. 3.sessionScope 찾는다. 4.applicationScope 찾는다.
	 -->
</body>
</html>