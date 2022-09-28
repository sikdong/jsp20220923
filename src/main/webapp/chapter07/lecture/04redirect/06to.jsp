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
	<h1>06to.jsp</h1>
	address : <%=request.getParameter("address") %> <br>
	email : <%=request.getParameter("email") %>
</body>
</html>