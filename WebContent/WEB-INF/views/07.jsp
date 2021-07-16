<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	pageContext.setAttribute("name", "page name");
	request.setAttribute("name", "request name");
	session.setAttribute("name", "session name");
	application.setAttribute("name", "application name");


%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>범주 우선순위</h1>
	
	<h2>자바코드</h2>
	page name = <%=pageContext.getAttribute("name") %> <br>
	request name = <%=request.getAttribute("name") %> <br>
	session name = <%=session.getAttribute("name") %> <br>
	application name = <%=application.getAttribute("name") %> <br>

	<br><br><br>

	
	<h2>el</h2>
	page name = ${pageScope.name } <br>
	request name = ${requestScope.name } <br>		<!-- 보통 request와 session을 쓰고 잘 구별할줄알아야한다. 실무에서는 생략해서 쓰고 이름을 안겹치게 쓸정도로 기초다져야함!!!!! -->
	session name = ${sessionScope.name } <br>
	application name = ${applicationScope.name } <br>
	<br><br><br>
	
	<!-- 이렇게 앞에 영역Scope를 선언해주지않았고 키값이 모두 같을 경우에 page ->request ->session -> application 순으로의 값만 출력된다. -->
	name = ${name }

</body>
</html>