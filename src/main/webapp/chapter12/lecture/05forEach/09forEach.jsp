<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	<c:set var="left" value="${param.left }"></c:set>
	<c:set var="right" value="${param.right }"></c:set>
		<c:forEach begin="${left}" end="${right }"  var ="x">
			<h3>${x}</h3>
		</c:forEach>
	
</body>
</html>