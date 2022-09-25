<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<jsp:include page="header.jsp"></jsp:include>
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
			<form action="./otherPage.jsp" method="get" name="form">
				<input type="hidden" id="saveWord" name="word"> 
				<input type="hidden" id="saveArr" name="wordArr"> 
				<input
					type="button" id="btn2" class="btn btn-secondary" value="더보기" />
			</form>
		</div>
		<input type="button" id="showBtn"
			value="정답 확인">
	</div>




	<!-- 버튼을 누르면 랜덤 int로 단어 id를 뽑고 서블릿에서 db 단어와 뜻을 가져온다 가져온것은 다시원래홈페이지로 가져온다
가지고온 단어를 세션에 저장해서 다음페이지까지 가져가서 iframe으로  유튜브와 나무위키를 보여준다 -->
</body>
</html>