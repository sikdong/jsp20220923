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
	Map<String, String> map = new HashMap<>();
	request.setAttribute("map1", map);
	
	map.put("x", "x");
	map.put("y", "y");
	map.put("abc", "abc");
	%>
	
	
	<p>${map1.x}</p>
	<p>${map1.y}</p>
	<p>${map1.abc}</p>
</body>
</html>