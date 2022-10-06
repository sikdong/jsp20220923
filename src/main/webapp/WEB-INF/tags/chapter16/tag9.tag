<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ tag dynamic-attributes="map" %>

<div>
	<c:forEach items="${map}" var = "map">
		<p> ${map.value }</p>
		<br>
		<br>
	</c:forEach>
	
</div>