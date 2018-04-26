<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="UTF-8">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta name="description" content="">
<meta name="author" content="">
<style>
/*
.chartWrapper {
	position: relative;
}

.chartWrapper>canvas {
	position: absolute;
	left: 0;
	top: 0;
	pointer-events: none;
}

.chartAreaWrapper {
	width: 600px;
	overflow-x: scroll;
}
*/
</style>
<title>Document</title>


</head>
<body class="fixed-nav sticky-footer bg-light" id="page-top">

	<div>
		<jsp:include page="header.jsp" flush="false" />
	</div>

	<div class="content-wrapper">
		<div class="container-fluid">

			<div class="card mb-3">
				<div class="card-header">
					<i class="fa fa-area-chart"></i> 시간별 차트
				</div>
				<div class="card-body chartWrapper">
					<div class="chartAreaWrapper">
						<canvas id="myAreaChart" width="100%" height="30"></canvas>
					</div>
				</div>
				<div class="card-footer small text-muted">최신 업데이트 - 13:00 PM</div>
			</div>

		</div>

		<div class="row">
			<!--현재 소비전력-->
			<div class="col-lg-4">
				<div class="col-lg-10" style="max-width: 956px;">
					<div class="card mb-4">
						<div class="card-header text-center">
							<i class="fa fa-bolt"></i> 현재 전력 소비량
						</div>
						<div class="card-body text-center">
							<h6>04.01 ~ 04.20</h6>
							<p>
							<h1>356kWh</h1>
							</p>
							<p style="font-size: 12px;">
								전 월 평균 보다 24kWh 많이
								<br>
								사용중입니다.
							</p>
						</div>

						<div class="card-footer small text-muted">최신 업데이트 - 13:00 PM</div>
					</div>
				</div>
			</div>
			<!--현재 소비전력 end-->

			<!--예상 한달 소비전력-->
			<div class="col-lg-4">
				<div class="col-lg-10" style="max-width: 956px;">
					<div class="card mb-4">
						<div class="card-header text-center">
							<i class="fa fa-chart-line"></i> 한달 예상 전력 소비량
						</div>
						<div class="card-body text-center">
							<h6>04.01 ~ 04.30</h6>
							<p>
							<h1>396kWh</h1>
							</p>
							<p style="font-size: 12px;">
								전 월 평균 보다 8kWh 적은
								<br>
								소비량으로 마감 예정입니다.

							</p>
						</div>

						<div class="card-footer small text-muted">최신 업데이트 - 13:00 PM</div>
					</div>
				</div>
			</div>
			<!--한달 예상 소비전력 end-->

			<!--누진 단계-->
			<div class="col-lg-4">
				<div class="col-lg-10" style="max-width: 956px;">
					<div class="card mb-4">
						<div class="card-header text-center">
							<i class="fa fa-won-sign"></i> 누진 단계
						</div>
						<div class="card-body text-center">

							<h6>이미지 준비중</h6>
							</p>
							<p>
							<h1>2단계</h1>
							</p>
							<p style="font-size: 12px;">
								2단계로 마감 예정입니다.
								<br>
								....

							</p>
						</div>

						<div class="card-footer small text-muted">최신 업데이트 - 13:00 PM</div>
					</div>
				</div>
			</div>
			<!--한달 예상 소비전력 end-->
		</div>

		<footer class="sticky-footer" style="height: 62px; line-height: 62px;">
			<div class="container">
				<div class="text-center">
					<small>열심히 하자</small>
				</div>
			</div>
		</footer>

		<!-- 맨 위로 가기-->
		<a class="scroll-to-top rounded" href="#page-top"> <i class="fa fa-angle-up"></i>
		</a>

		<div>
			<jsp:include page="login.jsp" flush="false" />
		</div>

	</div>

	<!-- Page level plugin JavaScript-->
	<script src="./resources/vendor/chart.js/Chart.min.js"></script>
	<!-- Custom scripts for this page-->
	<!-- <script src="./resources/js/sb-admin-charts.min.js"></script>  -->
	<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
	<script>
	$(document).ready(function(){
		
		var chart = $("#myAreaChart")[0];
		chart.getContext("2d");
		
		var cData = {
				labels: [],
				datasets: [{
					label: "datas",
					backgroundColor: "rgba(255, 0, 0, 0.5)",
					borderColor: "rgba(255, 0, 0, 0.2)",
					data: [],
					fill: false
				}],
				
		};

		var cOption = {
			responsive: true
		};
		
		/*
		var animationAfter = {
				var sourceCanvas = this.chart.ctx.canvas;
		        // the -5 is so that we don't copy the edges of the line
		        var copyWidth = this.scale.xScalePaddingLeft - 5;
		        // the +5 is so that the bottommost y axis label is not clipped off
		        // we could factor this in using measureText if we wanted to be generic
		        var copyHeight = this.scale.endPoint + 5;
		        var targetCtx = document.getElementById("myChartAxis").getContext("2d");
		        targetCtx.canvas.width = copyWidth;
		        targetCtx.drawImage(sourceCanvas, 0, 0, copyWidth, copyHeight, 0, 0, copyWidth, copyHeight);
		}
		*/
		
		var myChart = new Chart(chart, {
			type: 'line',
			data: cData,
			option: cOption
		});
		
		$.ajax({
			url: "getAllData",
			success: function(data){
				insertData(myChart, data)
			},
			error: function(data){
				alert("실패 " + data);
			}
		});
	});
	
	function insertData(myChart, arr){
		var len = Object.keys(arr).length;
		var d;
		var dd;
		for(var i=0; i<len; i++){
			d = new Date(arr[i].reg_date);
			dd = splitDate(d);
			addData(myChart, dd, arr[i].watt);
		}
	};
	
	function splitDate(date){
		var result;
		
		result = date.getUTCFullYear() + "/";
		result += date.getMonth() + "/";
		result += date.getDate() + "/ ";
		result += date.getHours() + ":";
		result += date.getMinutes();
		
		return result;
	};
	
	function addData(chart, label, data) {
		chart.data.labels.push(label);
		chart.data.datasets.forEach((dataset) => {
			dataset.data.push(data);
		});
		chart.update();
	};
	</script>
</body>
</html>
