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
	<form action="10param-to.jsp">
	<input type="text" name = "email" > <br>
	<input type="text" name ="phone" > <br>
	<input type="text" name = "product" > <br>
	<input type="submit" value = "전송">
	</form>
</body>
</html>