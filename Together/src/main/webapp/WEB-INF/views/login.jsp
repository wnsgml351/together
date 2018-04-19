<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- 로그인 모달-->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">로그인</h5>
				<button class="close" type="button" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">×</span>
				</button>
			</div>
			<div class="modal-body">
				<form>
					<div class="form-group">
						<label for="exampleInputEmail1">ID</label> <input
							class="form-control" id="exampleInputEmail1" type="text"
							placeholder="ID">
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">Password</label> <input
							class="form-control" id="Password" type="password"
							placeholder="Password">
					</div>
					<a class="btn btn-primary btn-block" href="#">Login</a>
				</form>
			</div>
			<div class="text-center">
				<a class="d-block small" href="#">회원가입</a> <a class="d-block small"
					style="margin-bottom: 20px" href="#">비밀번호 찾기</a>
			</div>
		</div>
	</div>
</div>