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
	<h1>01main.jsp</h1>
	
	<%
	pageContext.setAttribute("page1", "page attr1");
	session.setAttribute("s1", "s1");
	application.setAttribute("a1", "a1");
	%>
	
	<div>
		<jsp:include page="02sub-include.jsp"></jsp:include>
	</div>
	
	<%=pageContext.getAttribute("page1") %> <br>
	<%=session.getAttribute("s1") %> <br>
	<%=application.getAttribute("a1") %> <br>
</body>
</html>