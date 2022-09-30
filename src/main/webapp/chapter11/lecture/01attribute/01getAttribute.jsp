<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<h1>getAttribute --> el (Expression language)</h1>
	<%
	request.setAttribute("myattr1", "myval1");
	%>
	<!-- attribute name 넣기  -->
	<p>${myattr1 }</p>
</body>
</html>