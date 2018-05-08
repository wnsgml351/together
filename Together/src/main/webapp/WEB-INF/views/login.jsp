<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
    <link href="./resources/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="./resources/css/sb-admin.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="./resources/css/util.css">
	<link rel="stylesheet" type="text/css" href="./resources/css/main.css">


    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>

<!-- 로그인 페이지 -->
<body class="text-center" >
    <div class="limiter">
		<div class="container-login100 bg-opacity" style="background: purple; background: rgba(111, 66, 193, 0.5)">
			<div class="wrap-login100">
				<form action="login" method="post" class="login100-form validate-form">
					<span class="login100-form-title p-b-5">
						<img src="./resources/img/logo_1.png">
					</span>
					<span class="login100-form-title p-b-48" style="font-size: 20px;">
                        <b>Power Manager Home</b>
					</span>

					<div class="wrap-input100 validate-input text-left" style="margin-bottom: 37px;">
						<input class="input100" type="text" name="id" autofocus="autofocus">
						<span class="focus-input100" data-placeholder="아이디"></span>
					</div>

					<div class="wrap-input100 validate-input text-left" data-validate="Enter password">
						<span class="btn-show-pass">
							<i class="zmdi zmdi-eye"></i>
						</span>
						<input class="input100" type="password" name="password">
						<span class="focus-input100" data-placeholder="비밀번호"></span>
					</div>

					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<button class="login100-form-btn">
								로그인
							</button>
						</div>
					</div>

					<div class="text-center p-t-115">
                        <a class="txt2" href="#">아이디</a> / <a class="txt2" href="#">비밀번호 찾기</a><br>
						<a class="txt2" href="register">회원이 아니신가요?</a>
                        
                    </div>

				</form>
			</div>
		</div>
	</div>
	<script src="./resources/js/login.js"></script>
</body>