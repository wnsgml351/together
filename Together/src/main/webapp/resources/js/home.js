	$(document).ready(function(){
		
		changeData();
		setInterval(changeData, 25 * 1000);
		
		var chart = $("#myAreaChart")[0];
		chart.getContext("2d");
		
		var cData = {
				labels: [],
				datasets: [{
					label: "datas",
					backgroundColor: "rgba(255, 0, 0, 0.5)",
					borderColor: "rgba(255, 0, 0, 0.2)",
					data: [],
					fill: true
				}],
				
		};

		var cOption = {
			responsive: true
		};
		

		var myChart = new Chart(chart, {
			type: 'bar',
			data: cData,
			option: cOption		
		});
		
		
		/*
		 * var myChart = new Chart(chart).Line(cData, { onAnimationComplete:
		 * function () { var sourceCanvas = this.chart.ctx.canvas; // the -5 is
		 * so that we don't copy the edges of the line var copyWidth =
		 * this.scale.xScalePaddingLeft - 5; // the +5 is so that the bottommost
		 * y axis label is not clipped off // we could factor this in using
		 * measureText if we wanted to be generic var copyHeight =
		 * this.scale.endPoint + 5; var targetCtx =
		 * document.getElementById("myAreaChart2").getContext("2d");
		 * targetCtx.canvas.width = copyWidth; targetCtx.drawImage(sourceCanvas,
		 * 0, 0, copyWidth, copyHeight, 0, 0, copyWidth, copyHeight); }
		 * 
		 * });
		 */
		
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
	
	function changeData(){
		$.ajax({
			url:"getThisMonthSumData",
			success: function(data){
				console.log(data);
				$("#sum").text(data + "kWh");
			},
			error: function(){
				alert("실패");
			}
		});
	}
	
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