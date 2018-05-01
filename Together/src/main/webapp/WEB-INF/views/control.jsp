<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
<title>관리</title>
<style>
.switch {
	position: relative;
	display: inline-block;
	width: 60px;
	height: 34px;
	vertical-align: middle;
}

/* Hide default HTML checkbox */
.switch input {
	display: none;
}

/* The slider */
.slider {
	position: absolute;
	cursor: pointer;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	background-color: #ccc;
	-webkit-transition: .4s;
	transition: .4s;
}

.slider:before {
	position: absolute;
	content: "";
	height: 26px;
	width: 26px;
	left: 4px;
	bottom: 4px;
	background-color: white;
	-webkit-transition: .4s;
	transition: .4s;
}

input:checked+.slider {
	background-color: #2196F3;
}

input:focus+.slider {
	box-shadow: 0 0 1px #2196F3;
}

input:checked+.slider:before {
	-webkit-transform: translateX(26px);
	-ms-transform: translateX(26px);
	transform: translateX(26px);
}

/* Rounded sliders */
.slider.round {
	border-radius: 34px;
}

.slider.round:before {
	border-radius: 50%;
}

p {
	margin: 0px;
	display: inline-block;
	font-size: 15px;
	font-weight: bold;
}
</style>
<script>
	$(document)
			.ready(
					function() {
						var check = $("input[type='checkbox']");

						var url = "http://net.yjc.ac.kr:100/isocketsapi?cmd=getControlPortStatus&devid=361A24C0B62ABA394510230920B88641&port=1";

						$.ajax({
							url : url,
							dataType : "json",
							success : function(data) {
								// alert("성공 - " + data.status);
								if (data.status == "on") {
									// $("p").toggle();
									check.trigger("click");
								}
							}
						});

						check
								.click(function() {
									var command = "http://net.yjc.ac.kr:100/isocketsapi?cmd=setControlPortStatus&devid=361A24C0B62ABA394510230920B88641&port=1&on=";
									if (check.is(":checked") == true) {
										$.ajax({
											url : command + "1",
											dataType : "json",
											success : function(data) {
												if (data.result == "success") {
													alert("성공");
												} else {
													alert("실패1");
												}
											},
											error : function(data) {
												alert("실패");
											}
										});
										// isocketsapi?cmd=setControlPortStatus&devid=디바이스번호&port=포트번호&on=[0/1]
									} else {
										$.ajax({
											url : command + "0",
											dataType : "json",
											success : function(data) {
												if (data.result == "success") {
													alert("성공");
												} else {
													alert("실패1");
												}

											},
											error : function(data) {
												alert("실패");
											}
										});
									}
									$("p").toggle();

								});
					});
</script>
</head>
<body>
	<div>
		<jsp:include page="header.jsp" flush="false" />
	</div>
	<div class="jumbotron">
		<label class="switch"> <input type="checkbox" id="checkbox"> <span class="slider round"></span>
		</label>
		<p>OFF</p>
		<p style="display: none;">ON</p>
	</div>


</body>
</html>