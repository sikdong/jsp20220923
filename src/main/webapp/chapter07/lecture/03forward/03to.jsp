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
<%
String address = request.getParameter("address");
String email = request.getParameter("email");

if(address != null && email != null){
%>
	주소 : <%=request.getParameter("address") %> <br>
	이메일 : <%=request.getParameter("email") %>
	
<%
}
%>	
</body>
</html>