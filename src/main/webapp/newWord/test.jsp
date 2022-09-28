<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome to New Word</title>
<jsp:include page="header.jsp"></jsp:include>
</head>
<body>
	<br>
	<br>
	<div class="container">
		<img src="../image/main.jpg" width="500px" /><br />

		<form action="select.do" method="post">
			<div class="row">
				<div class="col-md-1">
					<span>Word</span>
				</div>
				<div class="col-md-9">
					<div class="border border-3 wrapping">
						<div id="word"></div>
					</div>
				</div>
				<div class="col-md-2">
					<!-- 랜덤선택 버튼 -->
					<button type="button" id="btn1" class="btn btn-danger btn-label">
						<i class="fa-sharp fa-solid fa-rotate" id="randomCho"></i> 랜덤선택
					</button>
				</div>
			</div>
			<div class="row">
				<div class="col-md-1">
					<span>Mean</span>
				</div>
				<div class="col-md-9">
					<div class="border border-3 wrapping">
						<div id='mean'></div>
					</div>
				</div>
				<div class="col-md-2">
					<!-- 정답확인 버튼 -->
					<button type="button" id="showBtn"
						class="btn btn-outline-danger btn-label">
						<i class="fa-sharp fa-solid fa-check" id="check"></i> 정답확인
					</button>
				</div>
			</div>
		</form>
		<br />
		<div class="row">
			<form action="./otherPage.jsp" method="get" name="form">
				<input type="hidden" id="saveWord" name="word"> <input
					type="hidden" id="saveArr" name="wordArr">
				<!-- 더보기 버튼 -->
				<button type="button" id="btn2" class="btn btn-secondary btn-label">
					<i class="fa-sharp fa-solid fa-video" id="showVideo"></i> 더보기
				</button>
			</form>
		</div>
	</div>
</body>
</html>