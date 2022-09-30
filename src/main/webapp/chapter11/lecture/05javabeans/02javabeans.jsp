<%@page import="jsp20220923.chapter07.Book"%>
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
	<%
	Book b1 = new Book("java", 100);
	Book b2 = new Book("spring", 200);
	
	
	request.setAttribute("book1", b1);
	request.setAttribute("book2", b2);
	%>

	
	<p>${book1.title }</p>
	<p>${book1.price }</p>
	<p>${book2.title }</p>
	<p>${book2.price }</p>
</body>
</html>