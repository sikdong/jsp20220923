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
	<p>${param.n}</p>
	<p>${paramValues.heros[0]}</p>
	<p>${paramValues.heros[1]}</p>
	<p>${paramValues.heros[2]}</p>
	<p>${paramValues.heros[3]}</p>
	<p>${paramValues.heros[4]}</p>
</body>
</html>