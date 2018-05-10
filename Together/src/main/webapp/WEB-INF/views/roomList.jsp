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

 

<style>

	.list{

		width: 180px;

		height: 150px;

	}

</style>

<script>

	$(document).ready(function(){

		$('#test').click(function(){

			var roomId=$("#room_name").val();

			var consentId=$("#consent_name").val();

 

			//alert("방 이름:"+roomId+"콘센트 이름:"+consentId);

			//ajax2번호출

			$.ajax({

				url:"roomConfirm",

				data:{

					group_name:roomId

				},

				success:function(data){

					alert('성공'+data);

					$.ajax({

						url:"groupRepeat",

						data:{

							group_name:consentId,

							parent_group:data

						},success:function(data){

							alert('콘센트 등록');

							$("#room_name").val('');

							$("#consent_name").val('');

						},error:function(){

							alert('콘센트 등록 실패');

						}

						

					});

				},

				error:function(){

					alert('방 이름을 다시 입력하세요.');

					$("#room_name").val('');

					$("#consent_name").val('');

				}

			}); 

		});

		

		$("#consentlist").click(function(){

			//window.location.href="consentList";

			var roomId=$("#room_name").val();

			$(".consent").empty();

			alert(roomId+'에 대한 콘센트 리스트가 보여집니다.');

			$.ajax({

				url:"roomConfirm",

				data:{

					group_name:roomId

				},

				success:function(data){

					//alert("그룹넘버:"+data);

					$.ajax({

						url:"consentlist",

						data:{

							parent_group:data

						},

						dataType:'json',

						success:function(data){

							//alert('콘센트 리스트 성공');

							var item=$('<div></div>').addClass('item');

							//alert('사이즈'+data.length);

							var itemText1=$('<p></p>').text('해당 방 이름:'+roomId).appendTo(item);

							for(var i=0;i<data.length;i++){

								var itemText2=$('<p></p>').text('해당 콘센트 일련번호:'+data[i].group_name).appendTo(item);

								item.appendTo($('.consent'));

							}

						},

						error:function(data){

							alert('콘센트 리스트 실패');	

						}

					});

				}

			});

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

		<center>

			<h1>사용자가 등록한 방 리스트 페이지</h1>

		</center>

		<br>

		<hr>

		<div class="container" style="margin-top:30px">

		  	

		       <%--  ${groups[0].group_name}<br>

		        ${groups[1].group_name}<br> --%>

		        <div class="row">

		    	<c:forEach var="item" items="${groups}">

		    		<button class="btn btn-secondary list" name="${item.group_no}" style="margin-left: 30px;margin-bottom: 30px;">${item.group_name}</button>

				</c:forEach>

				</div>

				

				<hr><br>

					<div class="form-group">

									<label for="inputdefault">방 이름</label> 

									<!-- <input class="form-control" type="text" id="room_name" name="room_name" style="width: 20%"> -->

									<select id="room_name" class="custom-select mb-2 mr-sm-2 mb-sm-0">

										<option selected>Choose...</option>

										<c:forEach var="item" items="${groups}">

		    								<option value="${item.group_name}">${item.group_name}</option>

										</c:forEach>

									</select>

									<br><br>

									

									<br>

									<label for="inputdefault">콘센트 일련번호</label> 

									<input class="form-control" type="text" id="consent_name" name="consent_name">

					</div>				

						<button class="btn btn-primary pull-right" id="test" style="width: 180px;">콘센트 등록하기</button>

						<br><br>

						<button class="btn btn-dark pull-right" id="consentlist" style="width: 180px;">콘센트 리스트</button>

				<br><hr>

				

				<div class="consent">

				

				</div>

		

	
			
		</div>

		<div>
			<jsp:include page="footer.jsp" flush="false" />
		</div>
	</div>
</body>

</html>