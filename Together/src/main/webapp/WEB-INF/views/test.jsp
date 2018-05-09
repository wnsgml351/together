<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
<script>
	$(document).ready(function() {
		$("#checkbox").click(function(e) {
			if($("#checkbox").is(":checked")){
				alert("1");
			}else{
				alert("2");
			}
			// e.preventDefault();
			
		});
	});
</script>
<title>Insert title here</title>
</head>
<body>
	<h1>test</h1>
	<input type="checkbox" id="checkbox">
</body>
</html>