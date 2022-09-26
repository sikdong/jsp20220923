<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>스트링 파라미터를 다른 타입으로 변경</h1>
	<form action = "16StringParameter.jsp">
	영어 : <input type="text" name = "english"> <br>
	수학 : <input type="text" name = "math"> <br>
	국어 : <input type="text" name = "korean"> <br>
	
	<%-- submit 버튼에 평균 구하기 --%>
	<input type="submit" value = "평균 구하기">
	</form>
	
	<%
	String english = request.getParameter("english");
	Integer numEng = 0; 
	if (english != null){
		numEng = Integer.valueOf(english);
	}
	String math = request.getParameter("math");
	
	Integer numMath = 0; 
	if (math != null){
		numMath = Integer.valueOf(math);
	}
	String korean = request.getParameter("korean");
	Integer numKor = 0; 
	if (korean != null){
		numKor = Integer.valueOf(korean);
	}
	int avg = (numEng + numKor + numMath)/3;
	%>
	
	<p>세 과목의 평균은 <%=avg %> 입니다.</p>
	

</body>
</html>