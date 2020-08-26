<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보수정</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/login.css" />

<style type="text/css">
.logo {
	padding-left: 20px;
}

.login {
	height: 80%;
	border-radius: 10px;
}

.login:hover {
	box-shadow: 0px 0px 20px 10px rgba(102, 186, 255, 0.4);
}

#loginbutton {
	height: 100%;
	border: none;
	width: 30%;
	border: none;
}
</style>
</head>
<body class="is-preload">
	<!-- Wrapper-->
	<div id="wrapper">
		<!-- Main -->
		<div id="main">
			<!--회원정보 수정 -->
			<h2 align="center">회원정보수정</h2>
			<article id="LoginForm" class="panel">
				<form action="memberUpdate.html" method="post">
					<div align="center">
						<div class="row">
						
							<div class="off-1">
								<tr>
									<td>${member.email}이메일 고정</td>
								</tr>
							</div>
							
							 <div class="off-1">
								<input type="password" class="login" name="password"
									placeholder="Password Update" required="required" value="${member.password}"/>
							</div>
					<!-- 		<div class="off-1">
								<input type="submit" class="login" id="loginbutton"
									value="login">
							</div>  -->
						</div>
						<!-- 	이메일 고정 비번 비번 확인 이름 고정 별명 수정 전화번호 수정 -->
					</div>
				</form>
			</article>
		</div>
	</div>

	<div align="center">
		<a href="main">메인가기(테스트)</a>
	</div>

	<!-- Footer -->
	<div id="footer">
		<ul class="copyright">
		</ul>
	</div>
	</div>
	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>


</body>
</html>