<%@page import="java.util.HashMap"%>
<%@page import="jsp20220923.chapter07.Car"%>
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
	Map<String, Car> map = new HashMap<>();
	request.setAttribute("cars", map);
	
	Car c1 = new Car();
	c1.setModel("tesla");
	c1.setPrice(1000);
	
	%>
</body>
</html>