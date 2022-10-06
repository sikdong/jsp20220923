<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ attribute name="left"  type="java.lang.Integer"%>
<%@ attribute name="right" type="java.lang.Integer"%>
<%@ attribute name="active" %>

<nav aria-label="Page navigation example">
  <ul class="pagination">
    <li class="page-item"><a class="page-link" href="#">Previous</a></li>
    <c:forEach begin="${left }" end="${right }" var="idx">
    <li class="page-item ${idx == active? 'active' :''}">
    <a class="page-link" href="#">${idx }</a></li> 
    </c:forEach>
    <li class="page-item"><a class="page-link" href="#">Next</a></li>
  </ul>
</nav>