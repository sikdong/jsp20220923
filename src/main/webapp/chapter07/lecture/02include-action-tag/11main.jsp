<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
request.setCharacterEncoding("utf-8");
%>
<%@ page import="jsp20220923.chapter07.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Book book1 = new Book("java", 3000);
		Book book2 = new Book("html", 2000);
	%>
</body>
</html>