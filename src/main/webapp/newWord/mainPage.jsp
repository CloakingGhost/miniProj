<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>



<!DOCTYPE html>
<html>
<head>
<jsp:include page="header.jsp"></jsp:include>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#wrapping {
	height: 90px;
	border: 1px solid gray;
}

#word {
	height: 90px;
	display: flex;
	justify-content: center;
	align-items: center;
	display: flex;
}

#mean {
	display: none;
	margin-bottom: 30px;
}
</style>
<script type="text/javascript">
	//	$.ajax({
	//	1. type : `post or get`,
	//	2. url : `url`,
	//	3. data : `서버에 전송할 데이터`,
	//	4. contentType : "전송할 데이터 타입",
	//	//기본 값 : "application / x-www-form-urlencoded; charset = UTF-8"  
	//	5. dataType : '서버로 부터 수신할 데이터 타입',
	//	//아무것도 지정하지 않으면 jQuery는 응답의 MIME 유형을 기반으로 해석을 시도
	//	6. success : `성공시 수행할 함수`,
	//	7. error : `에러 발생시 수행할 함수`
	//});

	$(document).ready(
			function() {

				let words = new Set();

				// select word
				$("#btn1").on(
						"click",
						function() {
							let wd = $("#word").text().trim();
							// ajax
							$.ajax({
								type : "post",
								url : "select.do",
								dataType : "text",
								success : function(str) {
									var newStr = JSON.parse(str);

									for (i in newStr) {
										$("#word").text(i)
										$("#mean").replaceWith(
												'<div id="mean">' + newStr[i]
														+ '</div>');
										$("#saveWord").attr("value", i);

										words.add(i);
										console.log(i + " / " + newStr[i]);
									}
								},
								error : function() {
									alert("다시확인");
								}
							})// ajax end
						})// select word end

				// 				//send words
				// 				$("#btn2").on("click", function() {
				// 					var form = document.form;
				// 				let wordsArr = Array.from(words);

				// 					// ajax
				// 					$.ajax({
				// 						type : "get",
				// 						url : "./otherPage.jsp",
				// 						traditional : true,
				// 						data : {
				// 							"words" : wordsArr
				// 						},
				// 						contentType : 'application/json; charset-utf-8;',
				// 						// dataType : "text",
				// 						success : function(data) {
				// 							console.log(wordsArr);
				// 							alert("전달됨");
				// 						},
				// 						error : function(xhr, status) {
				// 							alert(xhr + " : " + status);
				// 						}
				// 					});

				// 					form.submit();
				// 				})//send words end
				$("#btn2").on('click', function() {
					var form = document.form;
					let wordsArr = Array.from(words);
// 					var strWord = {
// 						jsonWord : wordsArr
// 					}
					var strWord={
	 						jsonWord : "asdf"
		 					}
					
					$.get('select.do', strWord, function() {
						alert("good");
					})
					form.submit();
				})

				$("#check1").on("click", function() {
					console.log(words);
				})

				$("#check2").on("click", function() {
					let wordsArr = Array.from(words);
					console.log(Array.isArray(wordsArr));
					console.log(wordsArr);
				})
				$("#check3").on("click", function() {
					let check = $("#saveWord").val()
					console.log(check);
				})
				$("#showBtn").on("click", function() {
					$('#mean').show()
				})
			})
</script>
</head>
<body>


	<div class="container">
		<div class="row">
			<form action="select.do" method="post">
				<div class="col-md-6">
					<span>단어 : </span>
					<div id="wrapping">
						<div id="word"></div>
					</div>
				</div>

				<div class="col-md-6">
					<span>뜻 : </span>
					<div id="wrapping">
						<div id='mean'></div>
					</div>
				</div>
				<input type="button" id="btn1" class="btn btn-danger" value="랜덤선택">
			</form>
		</div>
		<br />
		<div class="row">
			<form action="select.do" method="get" name="form">
				<input type="hidden" id="saveWord" name="word"> <input
					type="button" id="btn2" class="btn btn-secondary" value="더보기" />
			</form>
		</div>
		<input type="button" id="check1" value="확인용1"> <input
			type="button" id="check2" value="확인용2"> <input type="button"
			id="check3" value="확인용3"> <input type="button" id="showBtn"
			value="정답 확인">
	</div>




	<!-- 버튼을 누르면 랜덤 int로 단어 id를 뽑고 서블릿에서 db 단어와 뜻을 가져온다 가져온것은 다시원래홈페이지로 가져온다
가지고온 단어를 세션에 저장해서 다음페이지까지 가져가서 iframe으로  유튜브와 나무위키를 보여준다 -->
</body>
</html>