<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>getParameterValues</h1>

<form action="">
	<input type="text" name = "q"> 
	<br>
	<input type="text" name = "q">
	<br>
	<input type="text" name = "q">
	<br>
	<input type="submit" value="전송">
</form>

<hr>
<%
String val1 = request.getParameter("q");
String[] vals = request.getParameterValues("q");
if (val1 != null && vals != null){
%>

<p>val1 : <%=val1 %></p>
<p>vals : <%=vals.length %></p>
<p>vals[0] : <%=vals[0] %></p>
<%
} 
%>

</body>
</html>