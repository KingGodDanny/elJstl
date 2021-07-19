<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- for문일때 사용 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- 기존 for문 사용시 필요 -->
<%@ page import="vo.UserVo" %>
<%@ page import="java.util.List" %>


<%
   List<UserVo> userList = (List<UserVo>)request.getAttribute("userList");
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- 기존방식 -->
	<table border="1">
	
		<thead>
			<tr>
				<th>no</th>
				<th>name</th>
				<th>email</th>
				<th>password</th>
				<th>gender</t>
			</tr>
		</thead>
		
		<tbody>
<%--          <%for (int i = 0; i < userList.size(); i++) { %> --%>
<!--             <tr> -->
<%--                <td><%=i %></td> --%>
<%--                <td><%=userList.get(i).getName() %></td> --%>
<%--                <td><%=userList.get(i).getEmail() %></td> --%>
<%--                <td><%=userList.get(i).getPassword() %></td> --%>
<%--                <td><%=userList.get(i).getGender() %></td> --%>
<!--             </tr> -->
<%--          <%} %> --%>


			<%
			for (UserVo userVo : userList) {
			%>
			<tr>
				<td><%=userVo.getNo()%></td>
				<td><%=userVo.getName()%></td>
				<td><%=userVo.getEmail()%></td>
				<td><%=userVo.getPassword()%></td>
				<td><%=userVo.getGender()%></td>
			</tr>
			<%
			}
			%>

		</tbody>

	</table>
	
	
	<br><br><br>
	
	
	<table border="1">
	
		<thead>
			<tr>
				<th>no</th>
				<th>name</th>
				<th>email</th>
				<th>password</th>
				<th>gender</t>
				<th>index</th>
           	    <th>count</th>
				
			</tr>
		</thead>
		<tbody>
		
	        <c:forEach items = "${userList }" var = "uesrVo" varStatus = "status" begin="5" end="15" step="3">   <!-- items는 전체의 이름. 하나씩 꺼내야 하기 때문에 var로 이름을 정해줌. varStatus는 일련번호같은게 필요할때 사용. int i = 0 역할?-->
	            <tr>
	               <td>${uesrVo.no }</td>
	               <td>${uesrVo.name }</td>
	               <td>${uesrVo.email }</td>
	               <td>${uesrVo.password }</td>
	               <td>${uesrVo.gender }</td>
	               <td>${status.index }</td>   <!-- index는 0부터 시작 -> i값이라고 생각 -->
	               <td>${status.count }</td>   <!-- count는 1부터 시작 ->갯수라고 생각 -->
	            </tr>
         	</c:forEach>

		</tbody>

	</table>
	

</body>
</html>