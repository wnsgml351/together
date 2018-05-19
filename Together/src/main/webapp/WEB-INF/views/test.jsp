<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">
<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>

<script src="https://code.highcharts.com/stock/highstock.js"></script>
<script src="https://code.highcharts.com/stock/modules/exporting.js"></script>
<script src="https://code.highcharts.com/stock/modules/export-data.js"></script>
<style>
#container {
	max-width: 800px;
	min-width: 320px;
	height: 400px;
}
</style>
<script>
	$(document).ready(
			function() {
				Highcharts.setOptions({
					global : {
						useUTC : false
					}
				});

				// Create the chart
				Highcharts.stockChart('container', {
					chart : {
						events : {
							load : function() {

								// set up the updating of the chart each second
								var series = this.series[0];
								setInterval(function() {
									var x = (new Date()).getTime(), // current time
									y = Math.round(Math.random() * 100);
									series.addPoint([ x, y ], true, true);
								}, 1000);
							}
						}
					},

					rangeSelector : {
						buttons : [ {
							count : 1,
							type : 'minute',
							text : '1M'
						}, {
							count : 5,
							type : 'minute',
							text : '5M'
						}, {
							type : 'all',
							text : 'All'
						} ],
						inputEnabled : false,
						selected : 0
					},

					title : {
						text : 'Live random data'
					},

					exporting : {
						enabled : false
					},

					series : [ {
						name : 'Random data',
						showInNavigator: true,
						data : (function() {
							// generate an array of random data
							var data = [], time = (new Date()).getTime(), i;

							for (i = -999; i <= 0; i += 1) {
								data.push([ time + i * 1000,
										Math.round(Math.random() * 100) ]);
							}
							return data;
						}())
					} ]
				});

			});
</script>
<title>테스트 페이지 데스네</title>
</head>
<body>
	<h1>테스트 페이지 데스네</h1>
	<hr>
	<div id="container" style="width: 100%; height: 400px;"></div>
	<button id="gogo">긔긔</button>
</body>
</html>