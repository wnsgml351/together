<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>


<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title></title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<link rel="stylesheet" href="./resources/css/main.css">
<link rel="stylesheet" href="./resources/css/bootstrap-reset.css">
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="./resources/js/main.js"></script>

</head>





<body style="padding-top: 50px;">
	<nav class="navbar navbar-default navbar-fixed-top no-margin">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header fixed-brand">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" id="menu-toggle">
				<span class="glyphicon glyphicon-th-large" aria-hidden="true"></span>
			</button>
			<a class="navbar-brand" style="padding: 7px 15px;" href="#"><span
				class="fa fa-4"><img src="./resources/img/logo6.png"></span></a>
		</div>
		<!-- navbar-header-->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li class="active">
					<button type="button" class="navbar-toggle pull-left">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
				</li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a data-toggle="dropdown"
					class="dropdown-toggle" href="#" aria-expanded="false"> <i
						class="glyphicon glyphicon-user"></i> <span
						class="badge badge-sm up bg-purple count"></span>
				</a></li>
				<li class="dropdown"><a data-toggle="dropdown"
					class="dropdown-toggle" href="#" aria-expanded="false"> <i
						class="fa fa-bell"></i> <span
						class="badge badge-sm up bg-pink count">11</span>
				</a></li>
				<li class="dropdown text-center"><a data-toggle="dropdown"
					class="dropdown-toggle" href="#"> <span class="username">로그인을
							해주세요</span> <span class="caret"></span>
				</a></li>
			</ul>

		</div>
		<!-- bs-example-navbar-collapse-1 -->

	</nav>
	<div id="wrapper">
		<!-- Sidebar -->
		<div id="sidebar-wrapper">
			<ul class="sidebar-nav nav-pills nav-stacked" id="menu">
				<li class="active"><a href="#"><span
						class="fa-stack fa-lg pull-left"><i
							class="fa fa-unlock fa-stack-1x "></i></span>로그인</a></li>
				<li><a href="#"><span class="fa-stack fa-lg pull-left"><i
							class="fa fa-registered fa-stack-1x "></i></span>회원가입</a></li>
				<li><a href="#"><span class="fa-stack fa-lg pull-left"><i
							class="glyphicon glyphicon-user fa-stack-1x "></i></span>My Page</a></li>
				<li><a href="#"> <span class="fa-stack fa-lg pull-left"><i
							class="fa fa-bell fa-stack-1x "></i></span>message
				</a></li>
				<li><a href="#"><span class="fa-stack fa-lg pull-left"><i
							class="fa fa-bars fa-stack-1x "></i></span>3CYS</a>
					<ul class="nav-pills nav-stacked" style="list-style-type: none;">
						<li><a href="#">제품 소개</a></li>
						<li><a href="#">설치 방법</a></li>
					</ul></li>
				<li><a href="#"><span class="fa-stack fa-lg pull-left"><i
							class="fa fa-bars fa-stack-1x "></i></span>기기등록 / 관리</a>
					<ul class="nav-pills nav-stacked" style="list-style-type: none;">
						<li><a href="#">기기 등록</a></li>
						<li><a href="#">기기수정 / 관리</a></li>
					</ul></li>
				<li><a href="#"><span class="fa-stack fa-lg pull-left"><i
							class="fa fa-bars fa-stack-1x "></i></span>상품 서비스</a>
					<ul class="nav-pills nav-stacked" style="list-style-type: none;">
						<li><a href="#">모니터링 서비스</a></li>
						<li><a href="#">상품 추천 서비스</a></li>
						<li><a href="#">독거노인 안심 서비스</a></li>
					</ul></li>
				<li><a href="#"><span class="fa-stack fa-lg pull-left"><i
							class="fa fa-bars fa-stack-1x "></i></span>고객지원</a>
					<ul class="nav-pills nav-stacked" style="list-style-type: none;">
						<li><a href="#">자주묻는 질문</a></li>
						<li><a href="#">1:1 문의하기</a></li>
					</ul></li>
			</ul>
		</div>
		<!-- /#sidebar-wrapper -->
		<!-- Page Content -->
		<div id="page-content-wrapper">
			<div class="container-fluid xyz">
				<div class="row">
					<div class="col-lg-12">
						<h1>
							메인메인
						</h1>
						<p>싫다싫다</p>
					</div>
				</div>
			</div>
		</div>
		<!-- /#page-content-wrapper -->
	</div>
	<!-- /#wrapper -->
	<!-- jQuery -->

	<script>
		$("#menu-toggle").click(function(e) {
			e.preventDefault();
			$("#wrapper").toggleClass("toggled");
		});
		$("#menu-toggle-2").click(function(e) {
			e.preventDefault();
			$("#wrapper").toggleClass("toggled-2");
			$('#menu ul').hide();
		});

		function initMenu() {
			$('#menu ul').hide();
			$('#menu ul').children('.current').parent().show();
			//$('#menu ul:first').show();
			$('#menu li a').click(function() {
				var checkElement = $(this).next();
				if ((checkElement.is('ul')) && (checkElement.is(':visible'))) {
					return false;
				}
				if ((checkElement.is('ul')) && (!checkElement.is(':visible'))) {
					$('#menu ul:visible').slideUp('normal');
					checkElement.slideDown('normal');
					return false;
				}
			});
		}
		$(document).ready(function() {
			initMenu();
		});
		//# sourceURL=pen.js
	</script>

</body>

</html>
