<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="jsp20220923.chapter07.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>

<% 
request.setCharacterEncoding("utf-8");
%>
<% 
List<Person> ps = new ArrayList<>();

Person p1 = new Person();
Person p2 = new Person();
Person p3 = new Person();

p1.setName("철수");
p2.setName("철수");
p3.setName("철수");
ps.add(p1);
ps.add(p2);
ps.add(p3);

request.setAttribute("list", ps);

%>

<jsp:forward page="11to.jsp"></jsp:forward>