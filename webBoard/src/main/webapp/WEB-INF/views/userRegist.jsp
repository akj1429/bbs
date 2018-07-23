<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<link href='http://fonts.googleapis.com/css?family=Varela+Round' rel='stylesheet' type='text/css'>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.13.1/jquery.validate.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
<link rel="stylesheet" type="text/css" href="resources/css/general.css">
<script type="text/javascript">
$(document).ready(function(){
	var frm= document.register-form;
			$("#btnJoin").click(function(){
				alert("sdfdf"); 
				var id = $("#id").val();
				var password = $("#password").val();
				var pass_confirm = $("#password_confirm").val();
				var agree = frm.reg_agree.checked;
				if(id ==""){   
					alert("id를 입력하세요");
					return;
				}
				if(password ==""){
					alert("password를 입력하세요");
					return;
				}
				if( (password.length < 4) || (password.length > 15) ){
					alert("비밀번호는 4~15자 입니다");
					return;
				}
				if( password != pass_confirm ){
					alert("비밀번호를 확인해주세요");
					return;
				}
				if(!agree){
					alert("약관에 동의하여주십시오");
					return;
				}
			});
		});
</script>

<title>register</title>
</head>
<jsp:include page="/resources/css/ScriptCss.jsp"/>
<body>
<jsp:include page="header.jsp"/>

<!-- REGISTRATION FORM -->
<div class="text-center" style="padding:50px 0">
	<div class="logo">register</div>
	<!-- Main Form -->
	<div class="login-form-1">
		<form id="register-form" class="text-left" action="regUser.do" method="post">
			<div class="login-form-main-message"></div> 
			<div class="main-login-form">
				<div class="login-group">
					<div class="form-group">
						<label for="reg_username" class="sr-only">ID  </label>
						<input type="text" class="form-control" id="id" name="id" placeholder="username">
					</div>
					<div class="form-group">
						<label for="reg_password" class="sr-only">Password</label>
						<input type="password" class="form-control" id="password" name="password" placeholder="password">
					</div>
					<div class="form-group">
						<label for="reg_password_confirm" class="sr-only">Password Confirm</label>
						<input type="password" class="form-control" id="password_confirm" name="password_confirm" placeholder="password_confirm">
					</div>
					
					<div class="form-group login-group-checkbox">
						<input type="checkbox" class="" id="reg_agree" name="reg_agree">
						<label for="reg_agree">i agree with <a href="#">terms</a></label>
					</div>
				</div>
				<button type="button" class="login-button" id="btnJoin"><i class="fa fa-chevron-right"></i></button>
			</div>
			<div class="etc-login-form">
				<p>already have an account? <a href="login.do">login here</a></p>
			</div>
		</form>
	</div>
	<!-- end:Main Form -->
</div>
     
</body>


</html>