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
	pageContext.setAttribute("myName", "yoo");
	request.setAttribute("myName", "kim");
	
	pageContext.setAttribute("your name", "kang");
	request.setAttribute("99name", "ji");
	
	%>
	
	<p>${pageScope.myName }</p>
	<p>${requestScope.myName}</p>
	<p>${pageScope["your name"]}</p>
	<p>${requestScope["99name"]}</p>
	
	
</body>
</html>