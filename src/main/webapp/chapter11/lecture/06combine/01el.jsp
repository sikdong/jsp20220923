<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*, jsp20220923.chapter07.*" %>
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
	List<Book> list = new ArrayList<>();
	list.add(new Book("java", 500));
	list.add(new Book("spring", 300));
	list.add(new Book("jsp", 200));
	
	request.setAttribute("books", list);
	%>
	
	<p>${books[0].title }</p>
	<p>${books[0].price }</p>
	<p></p>
	<p></p>
</body>
</html>