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

	<h1>구구단 ${param.dan} 단 출력</h1>
	<c:forEach begin="1" end="9" var="x">
		<h3>${param.dan } x ${x } = ${param.dan * x}</h3>
	</c:forEach>
	<c:if test="${empty param.dan}">
		<h3>수를 입력해주세요</h3>
	</c:if>
	<a href="03forEach.jsp">이전 화면으로 돌아가기</a>
</body>
</html>