<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String cp = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>
.room_num {
	background-color: lightblue;
	height: 500px;
	border: 1px solid;
}

.room_pic {
	background-color: red;
	height: 500px;
	border: 1px solid;
}

.picture {
	height: 300px;
	witdh: 300px;
	border: 1px solid #fff;
	background-color: white;
}

.modal-body {
	overflow-y: scroll;
}
</style>

<script>
	$(document)
			.ready(
					function() {
						$("#concentAdd")
								.click(
										function() {
											$('.test').empty();
											var room_value = $(
													'input[name=room_value]')
													.val();
											/* 			alert(room_value); */

											if (room_value == ""
													|| room_value == false) {
												alert("갯수를 입력해주세요");
											}
											for (var i = 0; i < room_value; i++) {
												//alert("반복값:"+i);	
												var item = $('<div></div>')
														.addClass('item');
												$(
														'<br><div>일련번호:<input type="text" name="concent_num"></div>')
														.appendTo(item);
												$(
														'<br><div>콘센트 이름:<input type="text" name="concent_name"></div>')
														.appendTo(item);
												$('<hr>').appendTo(item);

												item.appendTo($('.test'));
											}

										});
					});
</script>

</head>
<body>
	<div class="container show-grid" style="width: 1500px;">
		<div class="row">
			<h3>방 등록 및 콘센트 등록</h3>
			<div class="col-sm-9">
				<div class="row">
				<form action="concent_save" method="post">
					<div class="col-xs-8 col-sm-6 room_pic">
						<div>건물 사진</div>
						<div class="picture"></div>
					</div>
					<div class="col-xs-4 col-sm-6 room_num" style="overflow-y: scroll;">
						<div>방 이름</div>
						<input type="text" required>
						<div>방 개수</div>
						<div>
							<input type="number" min="1" name="room_value">개
							<button type="button" class="btn btn-info btn-lg" id="concentAdd">콘센트
								입력하기</button>
							<!-- <button type="button" class="btn btn-info btn-lg" id="concentDel">콘센트
								지우기</button> -->
								
								<div class="test"></div>
						</div>
						<button type="submit" class="btn-danger" style="float:right">
							<a href="/web/">확인</a>
						</button>
					</div>


					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>