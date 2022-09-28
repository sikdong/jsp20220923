<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
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
List<String> name = new ArrayList<>();
name.add("stop");
name.add("repeatsamecode");

session.setAttribute("names", name);

response.sendRedirect("10to.jsp")
%>
</body>
</html>