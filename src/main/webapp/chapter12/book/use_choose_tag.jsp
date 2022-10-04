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
	<ul>
		<c:choose>
			<c:when test="${param.name == 'yun' }">
				<li>당신의 이름은 ${param.name }입니다</li>
			</c:when>
			<c:when test = "${param.age > 20 }">
				<li>당신은 성인입니다</li>
			</c:when>
			<c:otherwise>
				<li>당신은 'yun'이 아니고 성인이 아닙니다</li>
			</c:otherwise>
		</c:choose>
	</ul>
</body>
</html>