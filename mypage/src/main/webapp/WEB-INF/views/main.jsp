<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
		$("#noticeList").load("notice/list");
		$("#noticeInsertForm").click(function() {
			$("#noticeList").load("notice/insertForm");
		});
		$("#diaryInsertForm").load("diary/insertForm");
		$("#diaryList").load("diary/list");
	})
</script>
</head>
<body class="is-preload">

	<div id="logo" align="center" style="margin-top: 50px;">
		<img alt="" src="images/logo_white1.png" width="200px">
	</div>
	<div align="right">
		<a href="logout" style="color: white;">로그아웃 </a> <a
			href="memberUpdate_form" style="color: white;">회원정보수정</a>
	</div>
	<!-- Wrapper-->
	<div id="wrapper">

		<!-- Nav -->
		<nav id="nav">
			<a href="#" class="icon solid fa-home"><span>Home</span></a> <a
				href="#contact" class="icon solid fa-piggy-bank"><span>AccountBook</span></a>
			<a href="#diaryWrite" class="icon solid fa-pen"><span>write
					Diary</span></a> <a href="#diaryList" class="icon solid fa-book"><span>read
					Diary</span></a> <a href="#notice" class="icon solid fa-book"><span>notice</span></a>
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

			<!-- DiaryWrite -->
			<article id="diaryWrite" class="panel">
				<header>
					<h2>Diary</h2>
					<h5>write your story</h5>
				</header>
				<div id="diaryInsertForm"></div>
			</article>
			<!-- DiaryList -->
			<article id="diaryList" class="panel">
				<header>
					<h2>Diary</h2>
					<h5>read your story</h5>
				</header>
				<div id="diaryList"></div>
			</article>

			<!-- Notice -->
			<article id="notice" class="panel">
				<header>
					<h2>Notice</h2>
				</header>
				<div id="noticeList" align="center"></div>
				<div id="noticeInsertForm">입력</div>
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