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
	<c:choose>
		<c:when test="${param.genre == 'comedy'}">
			<h3>코미디 영화가 좋겠군요</h3>
		</c:when>
		<c:when test="${param.genre == 'Action'}">
			<h3>액션 영화가 좋겠군요</h3>
		</c:when>
		<c:when test="${param.genre == 'SF' }">
			<h3>SF 영화가 좋겠군요</h3>
		</c:when>
		<c:otherwise>
			<h3>영화를 골라주세요.</h3>
		</c:otherwise>
	</c:choose>
	<a href="03from.jsp">영화 선택 화면으로 돌아가기</a>
	
</body>
</html>