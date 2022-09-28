<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
request.setCharacterEncoding("utf-8");
%>
<jsp:forward page="05to.jsp">
	<jsp:param value="1" name="age"/>
	<jsp:param value="2" name="address"/>
</jsp:forward>