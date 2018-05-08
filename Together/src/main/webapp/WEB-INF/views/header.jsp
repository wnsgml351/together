<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="X-UA-Compatible" content="ie=edge">

<link rel="icon" type="image/png"  href="./resources/img/favicon.ico"/>

<link href="./resources/css/sb-admin.css" rel="stylesheet">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
<link href="./resources/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>

<!--네비게이션-->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark static-top" id="mainNav">
	<a class="navbar-brand" href="#"><img src="./resources/img/logo2_1.png"></a>
	<button class="navbar-toggler navbar-toggler-right collapsed" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="navbar-collapse collapse" id="navbarResponsive">
		<ul class="navbar-nav navbar-sidenav" id="exampleAccordion">
			<li class="nav-item" data-toggle="tooltip" data-placement="right"><a class="nav-link" href="#"> <i class="fa fa-fw fa-home"></i> <span class="nav-link-text">Home</span>
			</a></li>
			<li class="nav-item" data-toggle="tooltip" data-placement="right"><a class="nav-link" href="#"> <i class="fa fa-fw fa-user-circle"></i> <span class="nav-link-text">MyPage</span>
			</a></li>
			<li class="nav-item" data-toggle="tooltip" data-placement="right"><a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseComponents" data-parent="#exampleAccordion"> <i class="fa fa-fw fa-plus"></i> <span class="nav-link-text">기기등록 / 관리</span>
			</a>
				<ul class="sidenav-second-level collapse" id="collapseComponents">
					<li><a href="#">기기등록</a></li>
					<li><a href="#">기기수정 / 관리</a></li>
				</ul></li>
			<li class="nav-item" data-toggle="tooltip" data-placement="right"><a class="nav-link" href="#"> <i class="fa fa-fw fa-area-chart"></i> <span class="nav-link-text">실시간 전력량</span>
			</a></li>
			<li class="nav-item" data-toggle="tooltip" data-placement="right"><a class="nav-link" href="#"> <i class="fa fa-fw fa-bullhorn"></i> <span class="nav-link-text">독거노인 안심서비스</span>
			</a></li>
			<li class="nav-item" data-toggle="tooltip" data-placement="right"><a class="nav-link" href="#"> <i class="fa fa-fw fa-cart-plus"></i> <span class="nav-link-text">상품 추천 서비스</span>
			</a></li>
			<li class="nav-item" data-toggle="tooltip" data-placement="right"><a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseExamplePages" data-parent="#exampleAccordion" aria-expanded="false"> <i class="fa fa-fw fa-question-circle"></i> <span class="nav-link-text">고객지원</span>
			</a>
				<ul class="sidenav-second-level collapse" id="collapseExamplePages">
					<li><a href="#">자주 묻는 질문</a></li>
					<li><a href="#">1:1 문의</a></li>
				</ul></li>
		</ul>
		<!--사이드 end-->

		<ul class="navbar-nav sidenav-toggler">
			<li class="nav-item"><a class="nav-link text-center" id="sidenavToggler"> <i class="fa fa-fw fa-angle-left"></i>
			</a></li>
		</ul>
		<!-- 사이드 숨김표시 end-->


		<!--상단바 ul-->
		<ul class="navbar-nav ml-auto">
			<li class="nav-item dropdown"><a class="nav-link dropdown-toggle mr-lg-2" id="control" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="fa fa-fw fa-bolt" style="color: #868e96"></i> <span class="d-lg-none" style="color: #868e96">전기 메세지 <span class="badge badge-pill badge-primary">New</span>
				</span> <span class="indicator text-primary d-none d-lg-block"> <i class="fa fa-fw fa-circle"></i>
				</span>
			</a>
				<div class="dropdown-menu" aria-labelledby="control" style="min-width: 20rem;">
					<h6 class="dropdown-header">메세지</h6>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#"> <strong>300호 전력 확인해주세요</strong> <span class="small float-right text-muted">11:21 AM</span>
						<div class="dropdown-message small">평소보다 많은 전력량을 사용하고 있습니다.</div>
					</a>
				</div></li>

			<li class="nav-item dropdown"><a class="nav-link dropdown-toggle mr-lg-2" id="messagesDropdown" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="fa fa-fw fa-bell" style="color: #868e96"></i> <span class="d-lg-none" style="color: #868e96">메세지 <span class="badge badge-pill badge-primary">New</span>
				</span> <span class="indicator text-primary d-none d-lg-block"> <i class="fa fa-fw fa-circle"></i>
				</span>
			</a>
				<div class="dropdown-menu" aria-labelledby="messagesDropdown" style="min-width: 20rem;">
					<h6 class="dropdown-header">메세지</h6>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#"> <strong>독거노인 안심 서비스</strong> <span class="small float-right text-muted">12:18 PM</span>
						<div class="dropdown-message small">안심 서비스가 등록되었습니다.</div>
					</a>
				</div></li>

			<li class="nav-item"><a class="nav-link"> ${login.id} 반갑습니다. </a></li>

			<li class="nav-item"><a href="logout" class="nav-link"> <i class="fa fa-fw fa-sign-out"></i> Logout
			</a></li>
		</ul>

	</div>
</nav>
<!--네비게이션 end-->


<!-- Core plugin JavaScript-->
<script src="./resources/vendor/jquery-easing/jquery.easing.min.js"></script>
<!-- Custom scripts for all pages-->
<script src="./resources/js/sb-admin.min.js"></script>
<script>
	$('#toggleNavPosition').click(function() {
		$('body').toggleClass('fixed-nav');
		$('nav').toggleClass('fixed-top static-top');
	});
</script>
<script>
	$('#toggleNavColor').click(function() {
		$('nav').toggleClass('navbar-dark navbar-light');
		$('nav').toggleClass('bg-dark bg-light');
		$('body').toggleClass('bg-dark bg-light');
	});
</script>