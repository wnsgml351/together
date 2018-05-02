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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
	$(document).ready(function(){
		var user=$("#userid").val();
		
		//alert("user넘오온거:"+user);
		$("#super").click(function(){
			//window.location="Rregister";
			var SelectType=$("#super").val();
			alert('클릭'+SelectType);
			$('.roomClick').empty();
			$.ajax({
				url:"rootCheck",
				data:{
					id:user,
					selectType:SelectType
				},
				dataType:'json',
				success:function(data){
					//alert('성공'+data.today);
					$('.test').empty();
					var item=$('<div></div>').addClass('item');
					var itemText1=$('<p></p>').text('해당 사용자의 이번달 사용량:'+data.total).appendTo(item);
					var itemText1=$('<p></p>').text('해당 사용자의 오늘 사용량:'+data.today).appendTo(item);
					
					item.appendTo($('.test'));
					
				}
			});
			
		});
		
		$("#sub1").click(function(){
			var SelectType=$("#sub1").val();
			alert('클릭'+SelectType);
			$('.roomClick').empty();
			$.ajax({
				url:"rootCheck",
				data:{
					id:user,
					selectType:SelectType
				},
				dataType:'json',
				success:function(data){
					//alert('성공'+data.today);
					$('.test').empty();
					var item=$('<div></div>').addClass('item');
					var itemText1=$('<p></p>').text('해당 사용자의 이번달 사용량:'+data.total).appendTo(item);
					var itemText1=$('<p></p>').text('해당 사용자의 오늘 사용량:'+data.today).appendTo(item);
					
					item.appendTo($('.test'));
					
				}
			});
		});
		
		$("#sub2").click(function(){
			var SelectType=$("#sub2").val();
			alert('클릭'+SelectType);
			$('.roomClick').empty();
			$.ajax({
				url:"rootCheck",
				data:{
					id:user,
					selectType:SelectType
				},
				dataType:'json',
				success:function(data){
					//alert('성공'+data.today);
					$('.test').empty();
					var item=$('<div></div>').addClass('item');
					var itemText1=$('<p></p>').text('해당 사용자의 이번달 사용량:'+data.total).appendTo(item);
					var itemText1=$('<p></p>').text('해당 사용자의 오늘 사용량:'+data.today).appendTo(item);
					
					item.appendTo($('.test'));
					
				}
			});
		});
		
		$("#sub3").click(function(){
			var SelectType=$("#sub3").val();
			alert('클릭'+SelectType);
			
			$.ajax({
				url:"rootCheck",
				data:{
					id:user,
					selectType:SelectType
				},
				dataType:'json',
				success:function(data){
					//alert('성공'+data.today);
					$('.test').empty();
					$('.roomClick').empty();
					var item=$('<div></div>').addClass('item');
					var itemText1=$('<p></p>').text('해당 사용자의 이번달 사용량:'+data.total).appendTo(item);
					var itemText1=$('<p></p>').text('해당 사용자의 오늘 사용량:'+data.today).appendTo(item);
					item.appendTo($('.test'));
					
					var roomitem=$('<div></div>').addClass('consentItem');
					var consentBtn1=$('<button></button>').text('콘센트1').attr('style','margin:15px').attr('id','consent1').attr('value','31').addClass('btn btn-primary').appendTo(roomitem);
					var consentBtn2=$('<button></button>').text('콘센트2').attr('style','margin:15px').attr('id','consent2').attr('value','32').addClass('btn btn-primary').appendTo(roomitem);
					var consentBtn3=$('<button></button>').text('콘센트3').attr('style','margin:15px').attr('id','consent3').attr('value','33').addClass('btn btn-primary').appendTo(roomitem);
					var consentBtn3=$('<button></button>').text('콘센트4').attr('style','margin:15px').attr('id','consent4').attr('value','34').addClass('btn btn-primary').appendTo(roomitem);
					roomitem.appendTo($('.roomClick'));
					
					$("#consent1").click(function(){
						var SelectType=$("#consent1").val();
						alert('클릭'+SelectType);
						//$('.roomClick').empty();
						$.ajax({
							url:"rootCheck",
							data:{
								id:user,
								selectType:SelectType
							},
							dataType:'json',
							success:function(data){
								//alert('성공'+data.today);
								$('.test').empty();
								var item=$('<div></div>').addClass('item');
								var itemText1=$('<p></p>').text('해당 사용자의 이번달 사용량:'+data.total).appendTo(item);
								var itemText1=$('<p></p>').text('해당 사용자의 오늘 사용량:'+data.today).appendTo(item);
								
								item.appendTo($('.test'));
								
							}
						}); 
					});
					$("#consent2").click(function(){
						var SelectType=$("#consent2").val();
						alert('클릭'+SelectType);
						//$('.roomClick').empty();
						$.ajax({
							url:"rootCheck",
							data:{
								id:user,
								selectType:SelectType
							},
							dataType:'json',
							success:function(data){
								//alert('성공'+data.today);
								$('.test').empty();
								var item=$('<div></div>').addClass('item');
								var itemText1=$('<p></p>').text('해당 사용자의 이번달 사용량:'+data.total).appendTo(item);
								var itemText1=$('<p></p>').text('해당 사용자의 오늘 사용량:'+data.today).appendTo(item);
								
								item.appendTo($('.test'));
								
							}
						}); 
					});
					$("#consent3").click(function(){
						var SelectType=$("#consent3").val();
						alert('클릭'+SelectType);
						//$('.roomClick').empty();
						$.ajax({
							url:"rootCheck",
							data:{
								id:user,
								selectType:SelectType
							},
							dataType:'json',
							success:function(data){
								//alert('성공'+data.today);
								$('.test').empty();
								var item=$('<div></div>').addClass('item');
								var itemText1=$('<p></p>').text('해당 사용자의 이번달 사용량:'+data.total).appendTo(item);
								var itemText1=$('<p></p>').text('해당 사용자의 오늘 사용량:'+data.today).appendTo(item);
								
								item.appendTo($('.test'));
								
							}
						}); 
					});
					$("#consent4").click(function(){
						var SelectType=$("#consent4").val();
						alert('클릭'+SelectType);
						//$('.roomClick').empty();
						$.ajax({
							url:"rootCheck",
							data:{
								id:user,
								selectType:SelectType
							},
							dataType:'json',
							success:function(data){
								//alert('성공'+data.today);
								$('.test').empty();
								var item=$('<div></div>').addClass('item');
								var itemText1=$('<p></p>').text('해당 사용자의 이번달 사용량:'+data.total).appendTo(item);
								var itemText1=$('<p></p>').text('해당 사용자의 오늘 사용량:'+data.today).appendTo(item);
								
								item.appendTo($('.test'));
								
							}
						}); 
					});
				}
			});
		});
		
		
		
	});
</script>

</head>
<body class="fixed-nav sticky-footer bg-light" id="page-top">
	<div>
		<jsp:include page="header.jsp" flush="false" />
	</div>
	<div class="content-wrapper">
		<br>
		<h1>사용자가 등록한 리스트 페이지</h1>
		<br>
		<hr>
		<input type="hidden" id="userid" name="userid" value="${sessionId.id}">
		<div class="container" style="margin-top:30px">
		  <div class="row">
		    <div class="col-sm-4">
		      <h2>상세 정보</h2>
		     
		      <br><hr>
		      <div class="test">
		      	
		      </div>
		      <hr class="d-sm-none">
		    </div>
		    <div class="col-sm-8">
		      	<button class="btn btn-default btn-lg btnSelect" id="super" value="1" style="margin-left:15px">root</button>
			 	<br><br>
			 	<hr>
				<div class="btn-group" style="width:100%">
					
				      <button class="btn btn-success btn-lg" id="sub1" value="2" style="margin: 15px">
				      	방1
				      </button>
			
				      <button class="btn btn-success btn-lg"id="sub2" value="3" style="margin: 15px">
				      	방2
				      </button>
				      
				 
				      <button class="btn btn-success btn-lg"id="sub3" value="4" style="margin: 15px">
				      	주방
				      </button>
				    
				</div>
				<br><hr>
				<div class="roomClick">
					
				</div>	
				
		    </div>
		  </div>
		</div>
		
		<!-- <div class="container">
		  <div class="row">
		    <div class="col-sm-4">
		      <h3>이름</h3>
		      <br>
		      <p>이번 달 소비전력:</p>
		      <p>오늘 데이터:</p>
		      <p>어제 데이터:</p>
		    </div>
		    <div class="col-sm-8">
		      <h3>Column 2</h3>
		      <p>Four buttons in a group:</p>
		      
		      <button class="btn btn-primary">우리 집</button>
			 	<br><br>
				<div class="btn-group" style="width:100%">
				  <button class="btn btn-primary">Apple</button>
				  <button class="btn btn-primary">Samsung</button>
				  <button class="btn btn-primary">Sony</button>
				  <div class="btn-group">
				      <button class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
				      Sony
				      </button>
				      <div class="dropdown-menu">
				        <a class="dropdown-item" href="#">Tablet</a>
				        <a class="dropdown-item" href="#">Smartphone</a>
				      </div>
				    </div>
				</div>
		    </div>
		  </div>
		</div> -->


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