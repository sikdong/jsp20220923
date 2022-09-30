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
<form action="11param-to.jsp">
	이름 : <input type="text" name = "name">
	<select name="food" id="" multiple="">
		<option value="cake">케익</option>
		<option value="pasta">파스타</option>
		<option value=""></option>
		<option value=""></option>
	</select>
</form>
</body>
</html>