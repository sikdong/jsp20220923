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
	<h3>비교 연산자의 피연산자가 수가 아닐 때</h3>
	<p>${"3" < "200" }</p> <%-- 맨앞의 숫자 3이 2 보다 크기때문에 false  --%>
	<p>${"3" < 200 }</ <%-- 둘 중에 하나가 수이면 나머지도 수로 인식 --%>p>
</body>
</html>