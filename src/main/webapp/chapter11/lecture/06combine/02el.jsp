<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.util.*, jsp20220923.chapter07.*" %>
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
	List<Car> list = new ArrayList<>();
	Car car1 = new Car();
	car1.setModel("tesla");
	car1.setPrice(1000);
	
	Car car2 = new Car();
	car2.setModel("tusan");
	car2.setPrice(500);
	
	list.add(car1);
	list.add(car2);
	
	request.setAttribute("cars", list);
	request.setAttribute("cars", list);
	%>



	<p>${cars[0].company }</p>
	<p>${cars[0].price }</p>
	<p>${cars[0].model }</p>
	<p>${cars[1].model }</p>
	<p>${cars[1].price }</p>
	<p>${cars[1].company }</p>
</body>
</html>