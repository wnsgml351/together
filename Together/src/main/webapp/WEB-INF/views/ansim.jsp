<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
<script src="https://code.jquery.com/jquery-3.3.1.min.js"
	integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
	crossorigin="anonymous"></script>
<script>
			$(document).ready(function () {
						var chart = $("#chartCanvas")[0].getContext("2d");
						var month = new Array();
						<c:forEach items="${dataMonth}" var="month" >
							var json = new Object();
							month.push("${month.watt}");
						</c:forEach>
						
						var cData = {
								labels: ["1월", "2월", "3월", "4월", "5월"],
								datasets: [{
									data: month,
									backgroundColor: "rgba(255, 0, 0, 0.5)",
									borderColor: "rgba(255, 0, 0, 0.2)",
									fill: false
								}],
								
						};

						var cOption = {
							responsive: true
						};

						var myChart = new Chart(chart, {
							type: "line",
							data: cData,
							option: cOption
						});
						
						function insertData(arr){
							var len = Object.keys(arr).length;
							var d;
							var dd;
							for(var i=0; i<len; i++){
								d = new Date(arr[i].reg_date);
								dd = splitDate(d);
								addData(myChart, dd, arr[i].watt);
								sleep(1000);
							}
						}
						
						function splitDate(date){
							var result;
							
							result = date.getUTCFullYear() + "/";
							result += date.getMonth() + "/";
							result += date.getDate() + "/ ";
							result += date.getHours() + ":";
							result += date.getMinutes();
							
							return result;
						}

							function addData(chart, label, data) {
								chart.data.labels.push(label);
								chart.data.datasets.forEach((dataset) => {
									dataset.data.push(data);
								});
								chart.update();
							};
							
						});
		</script>
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

.uicard {
	width: 100%;
	padding-bottom: 5px;
	padding-top: 5px;
	padding-left: 5px;
	padding-right: 5px;
	border: 1px solid lightgray;
	box-shadow: 2px 2px lightgray;
}

.safety {
	width: 50px;
	height: 50px;
	background: green;
	border-radius: 100px;
}

.danger {
	width: 50px;
	height: 50px;
	background: red;
	border-radius: 100px;
}
</style>


</head>
<body class="fixed-nav sticky-footer bg-light" id="page-top">

	<div>
		<jsp:include page="header.jsp" flush="false" />
	</div>

	<div class="container-fluid">
	
	<!--모니터링 서비스-->
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="#">독거노인 안심 서비스</a></li>
				<li class="breadcrumb-item active">월별 전력 소비량</li>
			</ol>

		<div>


			<div class="card mb-3">
				<div class="card-header">
					<i class="fa fa-area-chart"></i> 월별 차트
				</div>
				<div class="card-body chartWrapper">
				<div class="pull-right">
					<c:choose>
						<c:when test="${list < 10 || list > 100}">
							<div class="danger" style="display: inline-block;"></div>
							<div style="display: inline-block; font-size:20px;">
								<b>위험</b>
							</div>
						</c:when>
						<c:otherwise>
							<div class="safety" style="display: inline-block; margin-left:"></div>
							<div style="display: inline-block; font-size:20px;">
								<b>안전</b>
							</div>
						</c:otherwise>
					</c:choose>
					</div>
					<div class="chartAreaWrapper">
						<canvas id="chartCanvas" width="80%" height="30"></canvas>
					</div>
				</div>
				<div class="card-footer small text-muted">최신 업데이트 - 13:00 PM</div>
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

		<%-- <div>
			<jsp:include page="login.jsp" flush="false" />
		</div> --%>
	</div>

	<!-- Page level plugin JavaScript-->
	<script src="./resources/vendor/chart.js/Chart.min.js"></script>
	<!-- Custom scripts for this page-->
	<script src="./resources/js/sb-admin-charts.min.js"></script>

</body>
</html>