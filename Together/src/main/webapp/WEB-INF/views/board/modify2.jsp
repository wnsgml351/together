<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SmartEditor</title>

<!-- SmartEditor를 사용하기 위해서 다음 js파일을 추가 (경로 확인) -->
<script type="text/javascript"
	src="/Together/resources/editor/js/HuskyEZCreator.js" charset="utf-8"></script>
<!-- jQuery를 사용하기위해 jQuery라이브러리 추가 -->
<script src="https://code.jquery.com/jquery-3.3.1.min.js"
	integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
	crossorigin="anonymous"></script>


<script type="text/javascript">
	var oEditors = [];
	$(function() {
		nhn.husky.EZCreator.createInIFrame({
			oAppRef : oEditors,
			elPlaceHolder : "ir1", //textarea에서 지정한 id와 일치해야 합니다. 
			//SmartEditor2Skin.html 파일이 존재하는 경로
			sSkinURI : "/Together/resources/editor/SmartEditor2Skin.html",
			htParams : {
				// 툴바 사용 여부 (true:사용/ false:사용하지 않음)
				bUseToolbar : true,
				// 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
				bUseVerticalResizer : true,
				// 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
				bUseModeChanger : true,
				fOnBeforeUnload : function() {
				}
			},
			fOnAppLoad : function() {
				//기존 저장된 내용의 text 내용을 에디터상에 뿌려주고자 할때 사용
				oEditors.getById["ir1"].exec("PASTE_HTML", [ "" ]);
			},
			fCreator : "createSEditor2"
		});

		//저장버튼 클릭시 form 전송
		$("#save").click(function() {
			oEditors.getById["ir1"].exec("UPDATE_CONTENTS_FIELD", []);
			$("#frm").submit();
		});
		$("#cancel").click(function() {
			window.location = "listPage";
		});
	});
</script>


<script>
	//버튼 jquery
	$(document).ready(function() {

		var formObj = $("form[role='form']");

		console.log(formObj);

		$(".btn-danger").on("click", function() {
			self.location = "/Together/board/listPage";
		});

		$(".btn-primary").on("click", function() {
			formObj.submit();
		});
	})
</script>
</head>
<body>
	<form id="frm" role="form" method="post">
		<table width="100%">
			<tr>
				<td>제목 <input type="text" id="title" name="title"
					value="${boardVO.title}" style="width: 610px" /></td>
			</tr>

			<tr>
				<td><textarea rows="10" cols="30" id="ir1" name="content"
						style="width: 650px; height: 350px;">${boardVO.content}</textarea></td>
			</tr>

			<tr>
				<td>작성자 <input type="text" id="writer" name="writer"
					value="${boardVO.writer}" readonly="readonly" /></td>
			</tr>

		</table>
	</form>
	<button type="submit" class="btn btn-primary">저장</button>
	<button type="submit" class="btn btn-danger">취소</button>

</body>
</html>
