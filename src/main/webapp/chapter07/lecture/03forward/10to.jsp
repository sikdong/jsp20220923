<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "jsp20220923.chapter07.*" %>

<% 
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	Person p1 =(Person) request.getAttribute("person1");
	%>
	
	name : <%=p1.getName() %>
	age : <%=p1.getAge() %>
	
</body>
</html>