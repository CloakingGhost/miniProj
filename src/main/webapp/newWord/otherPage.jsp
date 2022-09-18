<%@ page language="java" contentType="text/html; charset=UTF-8"
<<<<<<< HEAD
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

=======
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
request.setCharacterEncoding("UTF-8");
String word = (String)request.getAttribute("word");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script src="//code.jquery.com/jquery-3.6.1.min.js"></script>
<!-- <script type="text/javascript" src="youtube.js"></script> -->
<script type="text/javascript">
$(document).ready(function () {
	let form = document.getWord;
	console.log(form.wrod.value);

// 	  let API_KEY = "AIzaSyDAd9oVE_UUmSSUZD2KjJabNmi4cRXOyxI";
// 	  let video = "";
// 	  let search = ;
//  	  console.log();
// 	  console.log(API_KEY);
	  });
</script>
<body>
<form action="" name="getWord">
<input type="hidden" name="wrod" value="<%=word %>">
</form>

<%= word%>
>>>>>>> refs/remotes/origin/stage1
</body>
</html>