<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">
</head>
<body>
	<!-- <h1>새 고객 등록하기</h1>
	<form action="" method="post">
		<input type="text" name = "CustomerName">
		<input type="text" name = "Address">
		<input type="text" name = "City">
		<input type="text" name = "Country">
		<input type="text" name = "CustomerId">
		<input type="submit" value="등록">
	</form> -->
	

	<h2>고객 리스트</h2> 
	<a href="${pageContext.request.contextPath}/Servlet28 ">새 고객 등록하러 가기</a> 
	<h4>${sessionScope.message}</h4>
	<table class="table">
		<thead>
			<tr>
				<th>도시</th>
				<th>나라</th>
				<th>ID</th>
				<th>이름</th>
				<th>주소</th>
				<th>컨택트 네임</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${customers }" var="customer">
				<tr>
					<td>${customer.id }</td>
					<td>
					<c:url value="/Servlet30" var="updateUrl">
							<c:param name="id" value="${customer.id }" />
						</c:url>
					
						<a href="${updateUrl }">
							${customer.name }
						</a>
					</td>
					
					<td>${customer.city }</td>
					<td>${customer.country }</td>
					<td>${customer.address }</td>
					<td>${customer.contactName }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
		crossorigin="anonymous"></script>
</body>
</html>