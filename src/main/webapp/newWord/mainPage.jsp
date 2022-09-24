<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%session.setAttribute("word", "알잘딱깔센"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="otherPage.jsp" method="post">
		<input type="submit" value="더보기">
	</form>
	<!-- 버튼을 누르면 랜덤 int로 단어 id를 뽑고 서블릿에서 db 단어와 뜻을 가져온다 가져온것은 다시원래홈페이지로 가져온다
가지고온 단어를 세션에 저장해서 다음페이지까지 가져가서 iframe으로  유튜브와 나무위키를 보여준다 -->
</body>
</html>