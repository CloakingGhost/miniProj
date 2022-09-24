<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="java.util.*
	,com.google.gson.*"%>


<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
request.setCharacterEncoding("UTF-8");
response.setContentType("text/html; charset=UTF-8");
String str = request.getParameter("words");

// Gson gson = new Gson();
JsonObject obj = new JsonObject();



String word = request.getParameter("word");
%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="header.jsp"></jsp:include>
<script type="text/javascript" src="script.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<body>
	<form action="mainPage.jsp" name="getWord">
		<input type="hidden" id="wordOfForm" name="word" value="<%=word%>">
		<input type="submit" class="btn btn-secondary" value="돌아가기" />
	</form>
	<div class="bd-toc mt-3 mb-5 my-lg-0 ps-xl-3 mb-lg-5 text-muted">
		<button
			class="btn btn-link link-dark p-md-0 mb-2 mb-md-0 text-decoration-none bd-toc-toggle d-md-none"
			type="button" data-bs-toggle="collapse" data-bs-target="#tocContents"
			aria-expanded="false" aria-controls="tocContents">
			On this page
			<svg class="bi d-md-none ms-2" aria-hidden="true">
				<use xlink:href="#chevron-expand"></use></svg>
		</button>
		<strong class="d-none d-md-block h6 my-2">On this page</strong>
		<hr class="d-none d-md-block my-2">
		<div class="collapse bd-toc-collapse" id="tocContents">
			<nav id="TableOfContents">
				<ul>
					<c:forEach items="${words}" var="item">

						<li><a href="#">${item }</a></li>
					</c:forEach>

				</ul>
			</nav>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div id="videos"></div>
			</div>
		</div>
	</div>
</body>
</html>