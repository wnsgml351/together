<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="UTF-8">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta name="description" content="">
<meta name="author" content="">
<title>Document</title>
<script src="http://code.jquery.com/jquery-3.3.1.min.js"
	integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
	crossorigin="anonymous"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	
<style>
	.AppWrap{
		margin:8px;
		border:1px solid #000;
		padding:8px;
	}
	.TaskWrap{
		height:500px;
		border-bottom:1px solid #000;
	}
	.Task{
		padding:8px;
		border-bottom:1px dotted black;
	}
	.BtnReg{
		background-color:#0D54D5 !important;
		border-color:#0E2891 !important;
	}
	.room_num {
	background-color: lightblue;
	height: auto;
	border: 1px solid;
}

.room_pic {
	background-color: red;
	height: 500px;
	border: 1px solid;
}

.picture {
	height: 300px;
	witdh: 300px;
	border: 1px solid #fff;
	background-color: white;
}


</style>
<script>
$(document)
.ready(
		function() {
			$("#concentAdd")
					.click(
							function() {
								$('.test').empty();
								var room_value = $(
										'input[name=room_value]')
										.val();
								/* 			alert(room_value); */

								if (room_value == ""
										|| room_value == false) {
									alert("갯수를 입력해주세요");
								}
								for (var i = 0; i < room_value; i++) {
									//alert("반복값:"+i);	
									var item = $('<div></div>')
											.addClass('item');
									$(
											'<br><div>일련번호: <input type="text" name="concent_num"></div>')
											.appendTo(item);
									$(
											'<br><div>콘센트 이름: <input type="text" name="concent_name"></div>')
											.appendTo(item);
									$('<hr>').appendTo(item);

									item.appendTo($('.test'));
								}

							});
		});
</script>
</head>
<body class="fixed-nav sticky-footer bg-light" id="page-top">
	<div>
		<jsp:include page="header.jsp" flush="false" />
	</div>
	<div class="content-wrapper">
		<br>
		<h1>방 등록 및 콘센트 등록</h1>
		<br>
		<hr>
		<form role="form" method="get">

			<div class="row">
				<div class="col-sm-4"
					style="background-color: lavender; height: 850px">
					건물 정보
					<hr>
					<p>${build.b_category }</p>
					<p>${build.b_name }</p>
					<p>${build.b_address }</p>
				</div>
				
				<div class="col-xs-4 col-sm-6 room_num" style="background-color: lavenderblush;">
						<div>방 이름</div>
						<input type="text" required>
						<div>방 개수</div>
						<div>
							<input type="number" min="1" name="room_value">개
							<button type="button" class="btn btn-info btn-lg" id="concentAdd">콘센트
								입력하기</button>
							<!-- <button type="button" class="btn btn-info btn-lg" id="concentDel">콘센트
								지우기</button> -->
								
								<div class="test"></div>
						</div>
						<button class="btn-danger" style="float:right">
							<a href="/testproject">확인</a>
						</button>
					</div>
				<input type="hidden" name="id" value="${sessionId.id}">
			</div>
			<div class="AppContent">
						<div class="TaskWrap"></div>
			</div>
		</form>

		<footer class="sticky-footer" style="height: 62px; line-height: 62px;">
			<div class="container">
				<div class="text-center">
					<small>열심히 하자</small>
				</div>
			</div>
		</footer>

		<!-- 맨 위로 가기-->
		<a class="scroll-to-top rounded" href="#page-top"> <i
			class="fa fa-angle-up"></i>
		</a>

		<div>
			<jsp:include page="login.jsp" flush="false" />
		</div>

	</div>

	<!-- Page level plugin JavaScript-->
	<script src="./resources/vendor/chart.js/Chart.min.js"></script>
	<!-- Custom scripts for this page-->
	<script src="./resources/js/sb-admin-charts.min.js"></script>
</body>
</html>