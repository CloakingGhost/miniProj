<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	<iframe width="560" height="315"
		src="https://www.youtube.com/results?search_query=${words.word} }"></iframe>
	<div style="width: 500px; height: 315px; overflow: auto;">
		<jsp:include page="namuLink.jsp" />

	</div>
	<div style="width: 500px; height: 315px; overflow: auto;">
		<jsp:include page="youtubeLink.jsp" />

	</div>

</body>
</html>