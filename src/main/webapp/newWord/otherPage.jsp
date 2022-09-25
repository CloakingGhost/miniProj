<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="header.jsp"></jsp:include>

</head>
<body>
	       
	<ul>
		<c:forEach var="wdArr" items="${param.wordArr }">
               <li class="wd">${wdArr}</li>
        </c:forEach>
	</ul>
	<form action="" name="getWord" method='post'>
		<input type="hidden" name="word" value="${param.word }">
	</form>
	<div id="videos"></div>
</body>
</html>