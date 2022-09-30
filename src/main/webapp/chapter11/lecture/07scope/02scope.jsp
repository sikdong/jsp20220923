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
	<h3>pageScope, requestScope, sessionScope, applicationScope</h3>
	<h3>각 영역의 attribute를 저장하고 있는 Map</h3>
	<%
	pageContext.setAttribute("pageattr1", "pageval1");
	%>
	
	<p>${pageScope.pageattr1 }</p>
</body>
</html>