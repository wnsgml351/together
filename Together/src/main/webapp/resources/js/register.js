/**
 * 
 */


$(document).ready(function(){
	var id_status = false;
	var pattern = /\s/g + "";
	$("#confirmId").click(function(){
		
		var id_value = "id="+$("#id").val();
		alert(id_value);
		if(id_value.match(pattern) || id_value.length > 2){

			$.ajax({
				type:"get",
				url:"confirmId",
				data:id_value,
				dataType:"text",
				success:function(data){
					alert(data);
					if(data=='1'){
						
						document.getElementById("success-join-id").innerHTML="사용가능한 아이디입니다.";
						document.getElementById("error-join-id").innerHTML="";
						id_status = true;
						return id_status;
					}else{
						$("#id").focus();
						$("#id").val("");
						document.getElementById("success-join-id").innerHTML="";
						document.getElementById("error-join-id").innerHTML="이미 사용중인 아니디입니다.";
						id_status = false;
						return id_status;
					}
				}
			});
		}else{
			document.getElementById("success-join-id").innerHTML="";
			document.getElementById("error-join-id").innerHTML="아이디를 입력하세요";
			$("#id").focus();
			
			id_status = false;
			return id_status;
		}
		
	});
	
	
	
});