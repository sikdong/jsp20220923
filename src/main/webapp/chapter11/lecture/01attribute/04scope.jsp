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
	<h1>다른 영역에 같은 이름으로 attribute가 있을 경우 좁은 영역 부터 찾게 됨</h1>
	<%
	pageContext.setAttribute("book", "java");
	request.setAttribute("book", "spring");
	session.setAttribute("book", "html");
	application.setAttribute("book", "jsp");
	%>
	
	<hr>
	
	<p>${book }</p> <%-- java 가 나옴 --%>
	<p>${requestScope.book }</p> <%-- spring --%> 
</body>
</html>