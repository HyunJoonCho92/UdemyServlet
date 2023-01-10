<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- 	<jsp:useBean id="dto" class="dto.MemberDTO" /> --%>
<%-- 	<jsp:setProperty property = "*" name="dto" %> /> <!-- dto.setId() --> --%>
<%-- 	<jsp:setProperty property = "pw" name="dto" param="password" /> <!-- 	위에것을 이렇게 쓸 수 있음 --> --%>
<%-- 	<jsp:setProperty property = "name" name="dto" /><!-- 	property와 param 속성이 같으면 param 제거 가능 --> --%>
<%-- 	<jsp:setProperty property = "phone" name="dto" param="phonenumber" /> --%>
<%-- 	<jsp:setProperty property = "email" name="dto" /> --%>
<%-- 	<% MemberDAO().insertMember(dto) %> --%>
	
	
<!-- 	<h1> 회원정보를 생성 완료했습니다. 확인해 볼까요? </h1> -->
<%-- 	<h3>아이디:<jsp:getProperty name="dto" property="id" /> </h3> --%>
<%-- 	<h3>암호:<jsp:getProperty name="dto" property="pw" /> </h3> --%>
<%-- 	<h3>이름:<jsp:getProperty name="dto" property="name" /> </h3> --%>
<%-- 	<h3>폰:<jsp:getProperty name="dto" property="phone" /> </h3> --%>
<%-- 	<h3>이메일:<jsp:getProperty name="dto" property="email" /> </h3> --%>
	
	<jsp:useBean id="dto" class="dto.MemberDTO" scope="request"/>
	<jsp:setProperty property="*" name="dto"/>
	<jsp:forward page="beanrequest2.jsp"/>
	
</html>