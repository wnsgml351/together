$(document).ready(function(){
    var options = {
        chart: {
            renderTo: "container",
            type: "bar"
        },
        series: {
            name: "data",
            data: [4, 5, 6]
        },
        title: {
        	text: "제목"
        },
        yAxis: {
        	categories: ['앙', '김', '옥', '띄']
        },
        xAxis: {
        	
        }
    }

    var chart = new Highcharts.Chart(options);
});