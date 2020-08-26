<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ include file="member/sessionChk.jsp" %>
	<%@ include file="header.jsp" %>
<!DOCTYPE HTML>
<html>
<head>
<title>MyPage</title>
<meta charset="utf-8" />
<link rel="stylesheet" href="assets/css/main.css" />
<script type="text/javascript">
	$(function () {
		$("#notice").load("notice/list");
	})
</script>
</head>
<body class="is-preload">
	<div id="logo">
		<img alt="" src="images/logo_white1.png">
	</div>
	<a href="logout">로그아웃</a>
	<a href="table_form">테이블</a>
	<a href="memberUpdate_form">회원정보수정</a>
	<!-- Wrapper-->
	<div id="wrapper">

		<!-- Nav -->
		<nav id="nav">
			<a href="#" class="icon solid fa-home"><span>Home</span></a> <a
				href="#contact" class="icon solid fa-piggy-bank"><span>AccountBook</span></a>
			<a href="#work" class="icon solid fa-pen"><span>Write</span></a> <a
				href="loginForm" class="icon solid fa-book"><span>Diary</span></a>
			<a href="#notice" class="icon solid fa-book"><span>notice</span></a>
			
			<a href="https://twitter.com/ajlkn" class="icon brands fa-instagram"><span>Community</span></a>
		</nav>

		<!-- Main -->
		<div id="main">

			<!-- Me -->
			<article id="home" class="panel intro">
				<header>
					<h1>Jane Doe</h1>
					<p>Senior Astral Projectionist</p>
				</header>
				<a href="#work" class="jumplink pic"> <span
					class="arrow icon solid fa-chevron-right"><span>See
							my work</span></span> <img src="images/me.jpg" alt="" />
				</a>
			</article>

			<!-- Work -->
			<article id="work" class="panel">
				<header>
					<h2>Work</h2>
				</header>
				<p>Phasellus enim sapien, blandit ullamcorper elementum eu,
					condimentum eu elit. Vestibulum ante ipsum primis in faucibus orci
					luctus et ultrices posuere cubilia luctus elit eget interdum.</p>
				<section>
					<div class="row">
						<div class="col-4 col-6-medium col-12-small">
							<a href="#" class="image fit"><img src="images/pic01.jpg"
								alt=""></a>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<a href="#" class="image fit"><img src="images/pic02.jpg"
								alt=""></a>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<a href="#" class="image fit"><img src="images/pic03.jpg"
								alt=""></a>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<a href="#" class="image fit"><img src="images/pic04.jpg"
								alt=""></a>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<a href="#" class="image fit"><img src="images/pic05.jpg"
								alt=""></a>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<a href="#" class="image fit"><img src="images/pic06.jpg"
								alt=""></a>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<a href="#" class="image fit"><img src="images/pic07.jpg"
								alt=""></a>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<a href="#" class="image fit"><img src="images/pic08.jpg"
								alt=""></a>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<a href="#" class="image fit"><img src="images/pic09.jpg"
								alt=""></a>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<a href="#" class="image fit"><img src="images/pic10.jpg"
								alt=""></a>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<a href="#" class="image fit"><img src="images/pic11.jpg"
								alt=""></a>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<a href="#" class="image fit"><img src="images/pic12.jpg"
								alt=""></a>
						</div>
					</div>
				</section>
			</article>

			<!-- Notice -->
			<article id="notice" class="panel">		
				<div id="notice"></div>
			</article>

		</div>

		<!-- Footer -->
		<div id="footer">
			<ul class="copyright">
				<li>&copy; Untitled.</li>
				<li>mypage</li>
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