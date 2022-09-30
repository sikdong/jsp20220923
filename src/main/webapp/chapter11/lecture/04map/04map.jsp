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
	Map<String, String> map1 = new HashMap<>();
	map1.put("abc", "I am");
	map1.put("my key", "sleepy");
	map1.put("fde", "so");
	map1.put("2", "i wanna sleep");
	
	request.setAttribute("map", map1);
	request.setAttribute("def", "fde");
	%>


	<p>${map.abc }</p>
	<p>${map["my key"] }</p>
	<p>${map[def] }</p>
	<p>${map["2"] }</p>
</body>
</html>