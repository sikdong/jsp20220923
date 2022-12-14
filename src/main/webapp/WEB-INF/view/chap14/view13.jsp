<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>
<body>
	<h3>${customer.id }번 고객 정보 수정 및 삭제 프로그램</h3>
	<br>
	<h2>${pageSession.message }</h2>
	<form action="" method="post">
		고객명<input type="text" name="customerName" value="${customer.name }"> <br>
		연락명<input type="text" name="contactName" value="${customer.contactName}"> <br>
		주소<input type="text" name="address" value="${customer.address }"><br>
		도시<input type="text" name="city" value="${customer.city }"><br>
		나라<input type="text" name="country" value="${customer.country }"><br>
		아이디 번호<input type="hidden" name="id"><br>
		<input class="btn btn-danger" type="submit" value="수정">		
	</form>
	
	<form  id="deleteForm1" action="${pageContext.request.contextPath }/Servlet31" method="post">	
		<input type="hidden" name ="id" value="${customer.id }">
		<input id=deleteButton1 type="submit" value="삭제">
	</form>
	
	<form action="${pageContext.request.contextPath }/Servlet28">
		<input type="hidden" name ="id" value="${customer.id }">
		<input type="submit" value="조회">
	</form> 
	
	
	<table class="table">
		<thead>
		<tr>
			<th>고객명</th>
			<th>연락명</th>
			<th>주소</th>
			<th>도시</th>
			<th>나라</th>
			<th>아이디번호</th>
		</tr>
		</thead>
		<tbody>
			<tr>
				<td>${customer.name }</td>
				<td>${customer.contactName}</td>
				<td>${customer.address }</td>
				<td>${customer.city }</td>
				<td>${customer.country }</td>
				<td>${customer.id }</td>
			</tr>
		</tbody>
	</table>
	
	<script>
		document
			.querySelector("#deleteButton1")
			.addEventListener("click", function(e) {
				// event가 더 진행안되게 하는 코드
				e.preventDefault();
				console.log("삭제 서브밋 버튼 클릭됨.");
				console.log("하지만 더이상 진행되지 않도록 함.");
				
				let c = confirm("삭제하시겠습니까?");
				console.log(c);
				
				if (c) {
					document.querySelector("#deleteForm1").submit();
				}
			});
	</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>

</body>
</html>