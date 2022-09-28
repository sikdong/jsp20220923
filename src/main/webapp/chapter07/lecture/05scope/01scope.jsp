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
	<h1>scope 객체들 (5장 책 132쪽)</h1>
	
	<%
	pageContext.setAttribute("1", "2");
	request.setAttribute("2", "2");
	
	
	
	%>
</body>
</html>