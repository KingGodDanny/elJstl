<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@page import="vo.UserVo" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>request attribute 값 꺼내쓰기</h1>

	<h2>자바문법</h2>
	<%

		UserVo userVo = (UserVo) request.getAttribute("userVo");
		int num = (int)request.getAttribute("num");
		String str = (String)request.getAttribute("str");
	%>
	
	name = <%=userVo.getName() %>	<br>
	email = <%=userVo.getEmail() %>	<br>
	password = <%=userVo.getPassword() %>	<br>
	gender = <%=userVo.getGender() %>	<br>
	<br>
	
	num = <%=num %> 	<br>
	str = <%=str %> 	<br>
	
	
	<h2>el로 꺼내기</h2>
	name = ${requestScope.num }		<br>
	str = ${requestScope.str }		<br>
	<br>
	
	<!-- "userVO"의 userVo를 넣어서 el로 쉽게 꺼내올수있다.
	UserVo userVo = new UserVo(1, "박명수", "park", "1234", "male");
	request.setAttribute("userVo", userVo);
	-->
	name = ${requestScope.userVo.name }		<br>  <!-- 얘네는 Vo에 필드를 건들이는게 아니고 게터세터의 name이 작동한것이다. -->
	email = ${requestScope.userVo.email }	<br>
	password = ${requestScope.userVo.password }		<br>
	gender = ${requestScope.userVo.gender }		<br>
	




</body>
</html>