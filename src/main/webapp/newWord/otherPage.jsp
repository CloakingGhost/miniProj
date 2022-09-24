<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
request.setCharacterEncoding("UTF-8");
String word = (String) session.getAttribute("word");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script src="https://code.jquery.com/jquery-3.6.1.js"
	integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI="
	crossorigin="anonymous"></script>
<!-- <script src="//code.jquery.com/jquery-3.6.1.min.js"></script> -->
<!-- <script type="text/javascript" src="youtube.js"></script> -->
<script type="text/javascript">
	$(document).ready(function() {
		let form = document.getWord;
		console.log(form.word.value);

		// 	  let API_KEY = "AIzaSyDAd9oVE_UUmSSUZD2KjJabNmi4cRXOyxI";
		// 	  let video = "";
		// 	  let search = ;
		//  	  console.log();
		// 	  console.log(API_KEY);
	});
</script>
<body>
	<form action="" name="getWord">
		<input type="hidden" name="wrod" value="<%=word%>">
	</form>

	<%=word%>
</body>
</html>