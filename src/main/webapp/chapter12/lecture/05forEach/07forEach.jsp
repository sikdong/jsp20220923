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
	<h3>중첩 forEach 태그로 짝수단만 출력 (2, 4, 6, 8)</h3>
	<c:forEach begin="2" end="8" step="2" var="dan">
		<c:forEach begin="1" end="9" var="num" >
			<h4>${dan } X ${num } = ${dan * num}</h4>
		</c:forEach>
	</c:forEach>
</body>
</html>