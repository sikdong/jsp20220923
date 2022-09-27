<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
request.setCharacterEncoding("utf-8");
%>
<%@ page import ="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>08 main</h1>
	
	<%
	Map<String, String> map = new HashMap<>();
	map.put("name", "dongseok");
	map.put("address", "korea");
	
	request.setAttribute("myMap", map);
	%>
	
	<div>
		<jsp:include page="08sub.jsp"></jsp:include>
	</div>
</body>
</html>