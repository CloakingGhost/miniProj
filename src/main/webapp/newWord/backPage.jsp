<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script>
	window.onload = function () {
		 let word = "";
		  function getWord() {
		    word = document.getElementById("inner").textContent;
		  }
		};
	</script>
	<p id="inner">알잘딱깔센</p>
	<form action="mainPage.jsp" id="more">
		<input type="submit" value="더보기" onclick="getWord()" />
	</form>
</body>
</html>