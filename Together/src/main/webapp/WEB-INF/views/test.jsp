<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype>
<html>

<head>
<meta charset="utf-8">
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/push.js/1.0.5/push.min.js"></script>
<script>
	function randomScalingFactor() {
		return Math.random() * 100;
	}
	$(document)
			.ready(
					function() {

						$("#click").click(function() {
							Push.create("내 이름은 영제 코난이죠");
						});

						var ctx = document.getElementById("myChart")
								.getContext('2d');
						var myChart = new Chart(
								ctx,
								{
									type : 'bar',
									data : {
										labels : [ "Red", "Blue", "Yellow",
												"Green", "Purple", "Orange" ],
										datasets : [
												{
													type : 'line',
													label : 'label 1',
													data : [
															randomScalingFactor(),
															randomScalingFactor(),
															randomScalingFactor(),
															randomScalingFactor(),
															randomScalingFactor(),
															randomScalingFactor() ],
													backgroundColor : 'rgb(119, 201, 147, 0.3)',
													borderWidth : 1
												},
												{
													type : 'bar',
													label : 'label 2',
													data : [
															randomScalingFactor(),
															randomScalingFactor(),
															randomScalingFactor(),
															randomScalingFactor(),
															randomScalingFactor(),
															randomScalingFactor() ],
													backgroundColor : 'rgb(226, 133, 228, 0.3)',
													borderWidth : 1
												},
												{
													type : 'line',
													label : 'label 3',
													data : [
															randomScalingFactor(),
															randomScalingFactor(),
															randomScalingFactor(),
															randomScalingFactor(),
															randomScalingFactor(),
															randomScalingFactor() ],
													backgroundColor : 'rgb(138, 181, 208, 0.3)',
													borderWidth : 1
												} ]
									},
									options : {
										animation : {

										},
										scales : {
											yAxes : [ {
												ticks : {
													beginAtZero : true
												}
											} ]
										}
									}
								});
					});
</script>
</head>

<body>
	<canvas id="myChart">
    </canvas>
	<button id="click">푸시</button>
</body>

</html>