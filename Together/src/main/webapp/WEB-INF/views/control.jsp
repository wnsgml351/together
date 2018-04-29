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
<link href="./resources/css/switch.css" rel="stylesheet">
<title>Document</title>

<style>
.card-body-icon {
	position: absolute;
	z-index: 0;
	top: 5px !important;
	right: -0px !important;
	font-size: 3rem !important;
	-webkit-transform: rotate(15deg);
	-ms-transform: rotate(15deg);
	transform: rotate(0deg) !important;
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
				<li class="breadcrumb-item active">전력제어(원격 시스템)</li>
			</ol>



			<div class="row">
				<!--총 사용량(한달)-->
				<div class="col-xl-12 col-sm-6 mb-3">
					<div class="card text-dark o-hidden h-100"
						style="background-color: light;">
						<div class="card-header">
							<i class="fa fa-bolt"></i> 1번 콘센트 (IoT 스마트 PDU 5구형)
						</div>
						<div class="card-body">
							<div class="mr-5">

								<!-- 1번수구 -->
								<div class="switch_1">
									<input type="checkbox" name="switch1" class="switch1-checkbox"
										id="myonoffswitch" checked> <label
										class="switch1-label" for="myonoffswitch"
										style="margin-bottom: 0px;"> <span
										class="switch1-inner"></span>
									</label>
								</div>

							</div>
						</div>
						<a class="card-footer text-white clearfix small z-1" href="#">

						</a>
					</div>
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