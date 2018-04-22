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

<style>
.card-body-icon {
	position: absolute;
	z-index: 0;
	top: -10px !important;
	right: -0px !important;
	font-size: 3rem !important;
	-webkit-transform: rotate(15deg);
	-ms-transform: rotate(15deg);
	transform: rotate(0deg) !important;
}

.uicard {
	width: 100%;
	padding-bottom: 5px;
	padding-top: 5px;
	padding-left: 5px;
	padding-right: 5px;
	border: 1px solid lightgray;
	box-shadow: 2px 2px lightgray;
}
</style>


</head>
<body class="fixed-nav sticky-footer bg-light" id="page-top">

	<div>
		<jsp:include page="header.jsp" flush="false" />
	</div>

	<div class="content-wrapper">
		<div class="container-fluid">
			<!--모니터링 서비스-->
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="#">모니터링 서비스</a></li>
				<li class="breadcrumb-item active">일별 전력 소비량</li>
			</ol>



			<div class="uicard">

				<div class="row">

					<!--총 사용량(한달)-->
					<div class="col-xl-4 col-sm-6 mb-3">
						<div class="card text-white o-hidden h-100"
							style="background-color: rgb(232, 32, 120)">
							<div class="card-body">
								<div class="card-body-icon">
									<i class="fa fa-fw fa-arrow-up"></i>
								</div>
								<div class="mr-5">356kWh</div>
							</div>
							<a class="card-footer text-white clearfix small z-1" href="#">
								<span class="float-left">총 사용량</span> <span class="float-right">
									<i class="fa fa-angle-right"></i>
							</span>
							</a>
						</div>
					</div>

					<!--목표 사용량(한달)-->
					<div class="col-xl-4 col-sm-6 mb-3">
						<div class="card text-white o-hidden h-100"
							style="background-color: rgb(0, 123, 255)">
							<div class="card-body">
								<div class="card-body-icon">
									<i class="fa fa-fw fa-arrow-down"></i>
								</div>
								<div class="mr-5">390kWh</div>
							</div>
							<a class="card-footer text-white clearfix small z-1" href="#">
								<span class="float-left">목표 사용량</span> <span class="float-right">
									<i class="fa fa-angle-right"></i>
							</span>
							</a>
						</div>
					</div>

					<!--총 사용량(한달)-->
					<div class="col-xl-4 col-sm-6 mb-3">
						<div class="card text-white o-hidden h-100"
							style="background-color: rgb(154, 203, 49)">
							<div class="card-body">
								<div class="card-body-icon">
									<i class="fa fa-fw fa-minus"></i>
								</div>
								<div class="mr-5">5kWh</div>
							</div>
							<a class="card-footer text-white clearfix small z-1" href="#">
								<span class="float-left">오늘 사용량</span> <span class="float-right">
									<i class="fa fa-angle-right"></i>
							</span>
							</a>
						</div>
					</div>
				</div>



				<div class="card mb-3">
					<div class="card-header">
						<i class="fa fa-area-chart"></i> 시간별 차트
					</div>
					<div class="card-body">
						<canvas id="myAreaChart" width="100%" height="30"></canvas>
					</div>
					<div class="card-footer small text-muted">최신 업데이트 - 13:00 PM</div>
				</div>
			</div>

		</div>

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