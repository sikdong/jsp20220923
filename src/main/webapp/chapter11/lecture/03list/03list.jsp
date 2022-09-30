<%@page import="java.util.List"%>
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
	List<String> wish = List.of("I", "wanna", "go home");
	
	request.setAttribute("list", wish);
	request.setAttribute("k", 1);
	request.setAttribute("x", "2");
	
	%>


	<p>${list[0] }</p>
	<p>${list[k] }</p>
	<p>${list[x] }</p>
</body>
</html>