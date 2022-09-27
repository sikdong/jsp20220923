<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%
List<String> l1 = (List<String>) request.getAttribute("list1");
Map<String, String> l2 = (Map<String, String>) request.getAttribute("map1");

for (int i = 0; i < l1.size(); i++){
%>	
		<%=l1.get(i)%>
<%
}
%>
<br>
<br>

<%=l2.get("jisu") %>
<%=l2.get("v") %>
