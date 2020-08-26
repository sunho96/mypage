<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>my page</title>
<meta charset="utf-8" />
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
	height: 100%; border : none;
	width: 30%;
	border: none;
}
</style>
</head>
<body class="is-preload">
	<div id="logo" align="center"></div>
	<!-- Wrapper-->
	<div id="wrapper">
		<!-- Main -->
		<div id="main">

			<!-- LoginForm -->
			<article id="LoginForm" class="panel">
				<form action="login" method="post">
					<div align="center">
						<img alt="" src="images/logo_white1.png" width="120%"
							style="padding-bottom: 50px" class="logo">
						<div class="row">
							<div class="off-1">
								<input type="text" class="login" name="email"
									placeholder="Email" required="required"/>
							</div>
							<div class="off-1">
								<input type="password" class="login" name="password"
									placeholder="Password" required="required"/>
							</div>
							<div class="off-1">
								<input type="submit" class="login" id="loginbutton"
									value="login">
							</div>
						</div>
					</div>
				</form>
			</article>
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