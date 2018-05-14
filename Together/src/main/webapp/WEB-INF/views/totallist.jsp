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
<script src="https://code.highcharts.com/highcharts.js"></script>

<script src="https://code.highcharts.com/modules/exporting.js"></script>

<script src="https://code.highcharts.com/modules/export-data.js"></script>
 
<script>

	$(document).ready(function(){

		$(".super").click(function(){

			var groupNo=$(this).attr('id');

			//alert('건물'+groupNo);

		});

		

		$("button").click(function(){

			//alert('버튼 클릭'+$(this).attr('id'));

			var idvalue=$(this).attr('id');

		

			$(".consent").empty();

			$.ajax({

				url:"consentlist",

				data:{

					parent_group:idvalue

				},

				dataType:'json',

				success:function(data){

					//var dataArray=new Array();

					$("#container").empty();

					

					//alert('사이즈'+data.length);

					for(var i=0;i<data.length;i++){

						var item=$('<div></div><br>');

						var itemText2=$('<button class="btn btn-primary item" id="'+data[i].group_no+'"></button>').text('콘센트 일련번호:'+data[i].group_name).appendTo(item);

						item.appendTo($('.consent'));

					}

					$(".item").click(function(){

						var consentNo=$(this).attr('id');

						var dataArray=new Array();

						//alert('콘센트 번호'+consentNo);

						$.ajax({

							url:"AvgData",

							data:{

								plug_no:consentNo

							},

							dataType:'json',

							success:function(data){

								//alert('테스트'+data.length);

								var arr=new Array();

								for(var i=0;i<data.length;i++){

									arr[i]=data[i].ampere;

									//alert("배열값"+arr[i]);

								}

								square(arr);

							},

							error:function(){

								//alert('실패');

							}

							

						});

						

					});

				

				},

				error:function(){

					//alert('실패');

				}

				});

			

			/* $('.room').each(function(){ 

				 //var text = $(this).text(); 

				 var text = $(this).attr('id');

				  //console.log(test); 

				  alert(text); 

				 // 경고창으로 값을 확인 하고 싶다면 console.log나 alert 중 하나를 선택하셔서 확인 해보시면 됩니다. 

				}); */

			//var idvalue=$(".room").attr("id");

			//alert('아이디값'+idvalue); 

		});

		

	});

</script>

</head>

<body class="sticky-footer bg-dark" id="page-top">

	<div>

		<jsp:include page="header.jsp" flush="false" />

	</div>

	<div class="content-wrapper">
		<div class="container-fluid">
			<br>

			<div style="text-align: center;">

			<h1>전체 리스트</h1>

			</div>

			<br><hr>
			
			<div class="container" style="margin-top:30px">

		  <div class="row">

		    <div class="col-sm-4">

		      <div style="text-align: center;">

		      ${root}

		      </div>

		      <hr>

		      <c:forEach var="sub1" items="${sub1}">

		    		<div style="text-align: center;border: dotted;" class="super" id="${sub1.group_no }">${sub1.group_name}</div>

			  </c:forEach>

		     <br><hr>

		     <c:forEach var="sub2" items="${sub2}">

		    		<button class="btn btn-default room" style="margin: 15px" id="${sub2.group_no}">${sub2.group_name}</button>

			  </c:forEach>

		     <hr>

		     

		     <div class="consent">

		     	

		     </div>

		    </div>

		    <div class="col-sm-8">

		      	<div id="container" style="min-width: 310px; height: 400px; margin: 0 auto">

		      	</div>

				

		    </div>

		  </div>

		</div>

			
			
		</div>

		<div>
			<jsp:include page="footer.jsp" flush="false" />
		</div>
	</div>
<script>

	function square(arr) {

		//var arr4 = new Array(100, 2, 4, 8, 16, 32, 64, 128, 256, 512,518,520,2000,10000);

		

		Highcharts.chart('container', {

 

		title: {

		    text: 'chart'

		},

 

		xAxis: {

		    tickInterval: 1

		},

 

		yAxis: {

		    type: 'logarithmic',

		    minorTickInterval: 0.5

		},

 

		tooltip: {

		    headerFormat: '<b></b><br />',

		    pointFormat: '{point.x}시 평균 전력 소비량:{point.y}'

		},

 

 

 

		series: [{

		    data: [arr[0],arr[1],arr[2],arr[3],arr[4],arr[5],arr[6],arr[7],arr[8],arr[9]],

		    pointStart: 1

		}]

		});

		  

	}

 

</script>	
	
</body>

</html>