<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
request.setCharacterEncoding("utf-8");
%>
<hr>
	<h3>sub.jsp</h3>
	<%= pageContext.getAttribute("page1")%> <br>
	<%=session.getAttribute("s1") %> <br>
	<%=application.getAttribute("a1") %> <br>
<hr>