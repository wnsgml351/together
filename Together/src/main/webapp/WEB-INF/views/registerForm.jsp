<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
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
<body>
	<h1>회원가입</h1>
	<form action="register" method="post">
	<div>
		<div>
			아이디: <input type="text" name="id" id="id"><input
				type="button" id="confirmId" value="중복확인"><br>
		</div>
		<div>
			<div id="success-join-id"></div>
			<div id="error-join-id"></div>
		</div>
	</div>

	<div>
		비밀번호: <input type="password" name="password" id="password"
			onkeyup="checkPassword()" placeholder="비밀번호 8~16자리 입력해주세요">
	</div>

	<div>
		비밀번호 확인: <input type="password" name="repassword" id="repassword"
			onkeyup="checkPassword()" placeholder="비밀번호 확인">
		<div id="success-join-repassword"></div>
		<div id="error-join-repassword"></div>
	</div>

	<div>
		이름: <input type="text" name="name" id="name"><br>
	</div>

	<button>회원가입</button>
</form>
</body>
</html>