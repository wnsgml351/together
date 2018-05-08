	$(document).ready(function(){
		alert("띠용");
		/*
		 * changeData(); setInterval(changeData, 25 * 1000);
		 */	
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
		
	
		$.ajax({
			url: "getRecent12H",
			type: "get",
			dataType: "json",
			success:function(data){
				alert(data[0].reg_string_date); 
				insertData(myChart,data)
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
		var dd = "label";
		
		for(var i=0; i<len; i++){
			/*
			 * d = new Date(arr[i].reg_string_date); dd = splitDate(d);
			 */
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
		k
		return result;
	};
	
	function addData(chart, label, data) {
		chart.data.labels.push(label);
		chart.data.datasets.forEach((dataset) => {
			dataset.data.push(data);
		});
		chart.update();
	};