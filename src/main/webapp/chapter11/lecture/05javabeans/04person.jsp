<%@page import="jsp20220923.chapter07.Person"%>
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
	Person p1 = new Person();
	Person p2 = new Person();
	p1.setName("kim");
	p1.setAge(20);
	p1.isAlive();
	
	p2.setName("Yoon");
	p2.setAge(29);
	p2.isAlive();
	
	request.setAttribute("man1", p1);
	request.setAttribute("man2", p2);
	
	%>
	<p>${man1.name }</p>
	<p>${man1.age }</p>
	<p>${man1.alive }</p>
	<p>${man2. name }</p>
	<p>${man2["age"]}</p>
	<p>${man2["alive"] }</p>	
	
</body>
</html>