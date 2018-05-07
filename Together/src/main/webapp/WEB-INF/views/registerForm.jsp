<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
	crossorigin="anonymous">
<link href="./resources/css/sb-admin.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="./resources/css/util.css">
<link rel="stylesheet" type="text/css" href="./resources/css/main.css">




<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
	integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"
	integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T"
	crossorigin="anonymous"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="./resources/js/register.js"></script>

<script>
	// 회원가입시 비밀번호 확인여부를 실시간으로 나타나게 해줌.
	function checkPassword() {
		var password = $("#password").val();
		var repassword = $("#repassword").val();

		// 비밀번호가 입력전이나, 빈 상태일때.
		if (password == null || password == "") {
			$("#error-join-repassword").html("비밀번호를 입력하세요.");
			$("#success-join-repassword").html("");
		} else {
			// 비밀번호와 재입력의 일치여부
			if (password != repassword) {
				$("#error-join-repassword").html("비밀번호가 일치하지 않습니다.");
				$("#success-join-repassword").html("");
			} else {
				// 비밀번호가 8자리가 되는지 여부
				if (password.length < 8) {
					$("#error-join-repassword").html(
							"비밀번호가 너무 짧습니다. 8자리 이상 해주세요");
					$("#success-join-repassword").html("");
				} else if (password.length > 16) {
					$("#error-join-repassword").html(
							"비밀번호가 너무 길어요. 16자리 미만으로 해주세요");
					$("#success-join-repassword").html("");
				} else {
					$("#error-join-repassword").html("");
					$("#success-join-repassword").html("비밀번호가 일치합니다.");
				}
			}
		}
	}
</script>
</head>

<!-- 회원가입 페이지 -->
<body class="text-center">
	<div class="limiter">
		<div class="container-login100 bg-opacity"
			style="background: purple; background: rgba(111, 66, 193, 0.5)">
			<div class="wrap-login100" style="width: 500px;">
				<form class="login100-form validate-form" action="register"
					method="post">
					<span class="login100-form-title p-b-5"> <img
						src="./resources/img/logo_1.png">
					</span> <span class="login100-form-title p-b-48" style="font-size: 20px;">
						<b>Power Manager Home</b>
					</span>
					<div style="margin-bottom: 37px;">
						<div class="wrap-input100 validate-input text-left"
							style="display: inline-block;">
							<input class="input100" style="width: 68%; display: inline-block"
								type="text" name="id" id="id" autocomplete="off" autofocus="autofocus"> <span
								class="focus-input100" data-placeholder="아이디"></span> <input
								class="btn btn-outline-primary pull-right" style="float:right" type="button"
								id="confirmId" value="중복확인">
						</div>
						<div class="text-left">
							<div id="success-join-id"></div>
							<div id="error-join-id"></div>
						</div>
					</div>

					<div class="wrap-input100 validate-input text-left"
						data-validate="Enter password" style="margin-bottom: 37px;">
						<span class="btn-show-pass"> <i class="zmdi zmdi-eye"></i>
						</span> <input class="input100" type="password" name="password"
							id="password" onkeyup="checkPassword()"> <span
							class="focus-input100" data-placeholder="비밀번호"></span>
					</div>

					<div class="text-left" style="margin-bottom: 37px;">
						<div class="wrap-input100 validate-input text-left"
							data-validate="Enter password">
							<span class="btn-show-pass">
							</span> <input class="input100" type="password" name="repassword"
								id="repassword" onkeyup="checkPassword()"> <span
								class="focus-input100" data-placeholder="비밀번호 확인"></span>
						</div>
						<div id="success-join-repassword"></div>
						<div id="error-join-repassword"></div>
					</div>

					<div class="wrap-input100 validate-input text-left"
						style="margin-bottom: 37px;">
						<input class="input100" type="text" name="name" id="name">
						<span class="focus-input100" data-placeholder="이름"></span>
					</div>

					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<button class="login100-form-btn">회원가입</button>
						</div>
					</div>

				</form>
			</div>
		</div>
	</div>
	<script src="./resources/js/main.js"></script>
</body>
</html>