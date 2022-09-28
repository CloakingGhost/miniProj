<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>search</title>
<jsp:include page="header.jsp"></jsp:include>
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1" />
<!-- Link Swiper's CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css" />
<!-- Swiper JS -->
<script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
<style type="text/css">
/*  Demo styles  */
html, body {
	width: 100%;
	height: 100%;
}

body {
	color: #000;
	margin: 0;
	padding: 0;
}

.swiper-slide {
	text-align: center;
	font-size: 18px;
	background: #fff;
	/* Center slide text vertically */
	display: -webkit-box;
	display: -ms-flexbox;
	display: -webkit-flex;
	display: flex;
	-webkit-box-pack: center;
	-ms-flex-pack: center;
	-webkit-justify-content: center;
	justify-content: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	-webkit-align-items: center;
	align-items: center;
	maring-top: 60px;
}

.swiper-slide div {
	display: block;
	width: 100%;
	height: 100%;
	object-fit: cover;
	maring-top: 60px;
}

.swiper {
	position: relative;
	margin-left: auto;
	margin-right: auto;
	width: 800px;
	height: 500px;
	margin: 35px 40px;
	border: 1px solid gray;
}
</style>

</head>

<body>
	<br>
	<div class="container">
		<form action="./mainPage.jsp" name="getWord" method="post">
			<input type="hidden" name="word" value="${param.word }" /> <input
				type="submit" value="뒤로가기" id="backBtn" class="btn btn-secondary">

		</form>
		<div class="section">
			<!-- Swiper -->
			<div class="swiper mySwiper">
				<div class="swiper-wrapper">
					<!-- videos -->
					<div class="swiper-slide" id="video1"></div>
					<div class="swiper-slide" id="video2"></div>
					<div class="swiper-slide" id="video3"></div>
					<div class="swiper-slide" id="video4"></div>
					<div class="swiper-slide" id="video5"></div>
					<div class="swiper-slide" id="video6"></div>
				</div>
				<div class="swiper-button-next"></div>
				<div class="swiper-button-prev"></div>
				<div class="swiper-pagination"></div>
			</div>
		</div>
		<div class="aside">
			<div class="list-group">
				<ul id="wordArr">
					<c:forEach var="item" items="${param.wordArr }">
						<li
							class="list-group-item list-group-item-action list-group-item-success words">${item}</li>
					</c:forEach>
				</ul>
			</div>
		</div>
	</div>
	<!-- Initialize Swiper -->

	<script type="text/javascript">
		var swiper = new Swiper(".mySwiper", {
			slidesPerView : 1,
			spaceBetween : 30,
			loop : true,
			pagination : {
				el : ".swiper-pagination",
				clickable : true,
			},
			navigation : {
				nextEl : ".swiper-button-next",
				prevEl : ".swiper-button-prev",
			},
		});
	</script>
</body>
</html>
