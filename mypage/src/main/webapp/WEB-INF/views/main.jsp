<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
=======
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
>>>>>>> refs/remotes/origin/master
<%@ include file="member/sessionChk.jsp"%>
<%@ include file="header.jsp"%>
<!DOCTYPE HTML>
<html>
<head>
<title>MyPage</title>
<meta charset="utf-8" />
<link rel="stylesheet" href="assets/css/main.css" />
<script type="text/javascript">
	$(function() {
<<<<<<< HEAD
		$("#notice1").load("notice/list");
=======
		$("#noticeList").load("notice/list");
>>>>>>> refs/remotes/origin/master
		$("#noticeInsertForm").click(function() {
<<<<<<< HEAD
			$("#notice1").load("notice/insertForm");
		})
=======
			$("#noticeList").load("notice/insertForm");
		});
		$("#diaryInsertForm").load("diary/insertForm");
>>>>>>> refs/remotes/origin/master
	})
</script>
</head>
<body class="is-preload">

	<div id="logo" align="center" style="margin-top: 50px;">
		<img alt="" src="images/logo_white1.png" width="200px">
	</div>
<<<<<<< HEAD
	<a href="logout">로그아웃</a>
	<a href="table_form">테이블</a>
	<a href="memberUpdate_form">회원정보수정</a>

=======
	<div align="right" >
	<a href="logout" style="color: white;">로그아웃 </a>
	<a href="memberUpdate_form" style="color: white;">회원정보수정</a>
</div>
>>>>>>> refs/remotes/origin/master
	<!-- Wrapper-->
	<div id="wrapper">

		<!-- Nav -->
		<nav id="nav">
<<<<<<< HEAD
			<a href="#" class="icon solid fa-home"><span>Home</span></a> <a href="#contact" class="icon solid fa-piggy-bank"><span>AccountBook</span></a> <a href="#work" class="icon solid fa-pen"><span>Write</span></a>
			<a href="notice/insertForm" class="icon solid fa-book"><span>Diary</span></a> <a href="#notice" class="icon solid fa-book"><span>notice</span></a> <a href="https://twitter.com/ajlkn"
				class="icon brands fa-instagram"><span>Community</span></a>
=======
			<a href="#" class="icon solid fa-home"><span>Home</span></a> <a
				href="#contact" class="icon solid fa-piggy-bank"><span>AccountBook</span></a>
			<a href="#diary" class="icon solid fa-pen"><span>Diary</span></a>
			<a href="notice/insertForm" class="icon solid fa-book"><span>Diary</span></a>
			<a href="#notice" class="icon solid fa-book"><span>notice</span></a>
			<a href="https://twitter.com/ajlkn" class="icon brands fa-instagram"><span>Community</span></a>
>>>>>>> refs/remotes/origin/master
		</nav>

		<!-- Main -->
		<div id="main">

			<!-- Me -->
			<article id="home" class="panel intro">
				<header>
					<h1>Jane Doe</h1>
					<p>Senior Astral Projectionist</p>
				</header>
				<a href="#work" class="jumplink pic"> <span class="arrow icon solid fa-chevron-right"><span>See my work</span></span> <img src="images/me.jpg" alt="" />
				</a>
			</article>

			<!-- Diary -->
			<article id="diary" class="panel">
				<header>
<<<<<<< HEAD
					<h2>Work</h2>
				</header>
				<p>Phasellus enim sapien, blandit ullamcorper elementum eu, condimentum eu elit. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia luctus elit eget interdum.</p>
				<section>
					<div class="row">
						<div class="col-4 col-6-medium col-12-small">
							<a href="#" class="image fit"><img src="images/pic01.jpg" alt=""></a>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<a href="#" class="image fit"><img src="images/pic02.jpg" alt=""></a>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<a href="#" class="image fit"><img src="images/pic03.jpg" alt=""></a>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<a href="#" class="image fit"><img src="images/pic04.jpg" alt=""></a>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<a href="#" class="image fit"><img src="images/pic05.jpg" alt=""></a>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<a href="#" class="image fit"><img src="images/pic06.jpg" alt=""></a>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<a href="#" class="image fit"><img src="images/pic07.jpg" alt=""></a>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<a href="#" class="image fit"><img src="images/pic08.jpg" alt=""></a>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<a href="#" class="image fit"><img src="images/pic09.jpg" alt=""></a>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<a href="#" class="image fit"><img src="images/pic10.jpg" alt=""></a>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<a href="#" class="image fit"><img src="images/pic11.jpg" alt=""></a>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<a href="#" class="image fit"><img src="images/pic12.jpg" alt=""></a>
						</div>
					</div>
				</section>
=======
					<h2>Diary</h2>
				</header>			
					<div id="diaryInsertForm"></div>
>>>>>>> refs/remotes/origin/master
			</article>

			<!-- Notice -->
			<article id="notice" class="panel">
<<<<<<< HEAD
			<div id="notice1" align="center">
				</div>
				<div class="col-4 col-6-medium col-12-small">
					<a href="#" class="image fit"><img src="images/pic12.jpg" alt=""> </a>
				</div>
=======
				<div id="noticeList" align="center"></div>
				<div id="noticeInsertForm">입력</div>
>>>>>>> refs/remotes/origin/master
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