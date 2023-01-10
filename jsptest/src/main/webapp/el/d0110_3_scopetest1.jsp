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
	//jsp태그 값 정의 -- el 출력
	String b = "jsp만의 변수";
	pageContext.setAttribute("a", "pageContext공유");//변수가 a로 같지만 Scope에 따라 구분할 수 있음.
	request.setAttribute("a", "request공유");
	session.setAttribute("a", "session공유");
	application.setAttribute("a", "application공유");
	%>
	<%= b %><br>
	<%= pageContext.getAttribute("a") %> <br><br>
	
	jsp b 출력 = <%=b %><br>
	jsp a 출력 (pageContext) = <%=pageContext.getAttribute("a") %><br>
	jsp a 출력(request) = <%=request.getAttribute("a") %><br>
	jsp a 출력(session) = <%=session.getAttribute("a") %><br>
	jsp a 출력(application) = <%=application.getAttribute("a") %><br><br>
	
	el b 출력 = ${b } <br>  <!-- 	el에서는 없다고 취급 -->
	el a 출력 = ${pageScope.a } <br>
	el a 출력 = ${requestScope.a } <br>
	el a 출력 = ${sessionScope.a } <br>
	el a 출력 = ${applicationScope.a } <br>
	
	<a href="${pageContext.request.contextPath }/el/d0110_4_scopetest2.jsp">링크이동</a>
<%-- 	<jsp:forward page="/el/d0110_4_scopetest2.jsp"/> --%>
</body>
</html>