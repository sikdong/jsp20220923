
<%@page import="jsp20220923.chapter07.Person"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
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
	Map<String, Person> map = new HashMap<>();
	Person p1 = new Person();
	p1.setAge(20);
	p1.setName("kim");
	p1.setAlive(true);
	
	Person p2 = new Person();
	p2.setAge(20);
	p2.setName("lee");
	p2.setAlive(true);
	
	map.put("m1", p1);
	map.put("m2", p2);
	
	request.setAttribute("people", map);
	%>
	
	<p>${people.m1.age }</p>
	<p>${people.m1.name }</p>
	<p>${people.m1.alive }</p>
	<p>${people.m2.age }</p>
	<p>${people.m2.name }</p>
	<p>${people.m2.alive }</p>
</body>
</html>