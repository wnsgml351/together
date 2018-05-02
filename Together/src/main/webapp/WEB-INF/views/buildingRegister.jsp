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

<script>
	$(document).ready(function(){
		var formObj=$("form");
		$("#Bregister").click(function(){
			//window.location="Rregister";
			formObj.attr("action","Bregist");
			formObj.attr("method","get");
			formObj.submit();
		});
		$("#BCancel").click(function(){
			//location.href="main";
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
		<h1>건물 등록 페이지</h1>
		<br>
		<hr>
	<form role="form" method="get">
		
		<div class="row">
			<div class="col-sm-4" style="background-color: lavender; height:50%">
				사진
				<br>
				
			</div>
			<div class="col-sm-8" style="background-color: lavenderblush;">
				<div class="form-group" style="width: 120px">
					<label for="sel1">건물 분류</label> 
					<select class="form-control" name="b_category">
						<option value="">선택</option>
						<option value="빌라">빌라</option>
						<option value="주택">주택</option>
						<option value="아파트">아파트</option>
					</select>
				</div>
				<br>
				<div class="form-group" style="width: 10%">
					<label for="inputdefault">이름</label> <input class="form-control"
						id="inputName" type="text" name="b_name">
				</div>

				<div class="form-group" style="width: 60%">
					<label for="inputdefault">주소</label> <input class="form-control"
						id="address" type="text" name="b_address">
				</div>
		
				<br>
				<div class="row">
					<div class="col-sm-3 text-center">
						<button id="Bregister"class="btn btn-primary btn-block">등록</button>
					</div>

					<div class="col-sm-3 text-center">
						<button id="BCancel" class="btn btn-warning btn-block">취소</button>
					</div>
				</div>

			</div>
			<input type="hidden" name="id" value="${sessionId.id}">
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