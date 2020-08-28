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
		$("#diaryList2").load("diary/catagory");
		$("#diaryTrash2").load("diary/trash");
		$("#diaryView").load("diary/view");
	});
</script>
<style type="text/css">
</style>
</head>
<body class="is-preload">

	<div id="logo" align="center" style="margin-top: 50px;">
		<img alt="" src="images/logo_white1.png" width="280px">
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
			<a href="#diaryWrite" class="icon solid fa-pen"><span>write Diary</span></a> 
			<a href="#diaryList" class="icon solid fa-book"><span>read Diary</span></a> 
			<a href="#notice" class="icon solid fa-bullhorn"><span>notice</span></a>
			<a href="https://twitter.com/ajlkn" class="icon brands fa-instagram"><span>Community</span></a>
		</nav>

		<!-- Main -->
		<div id="main">

			<!-- Me -->
			<article id="home" class="panel intro">
				<header>
					<h1 style="font-family:'Cafe24'; font-size: 50px" >${member.nickName }</h1>
					<p>당신의 웹다이어리<span style="font-family: 'Dynalight'; font-size: 50px "> My Page</span></p>
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
				<div id="diaryList2"></div>
				<div align="right" style="margin-right: 30px;" >
					<a href="#diaryTrash" class="icon solid fa-trash"
						style="color: black; widows: 100%;"></a>
				</div>
			</article>

			<!-- DiaryTrash -->
			<article id="diaryTrash" class="panel">
				<header>
					<h2>Diary</h2>
				</header>
				<div id="diaryTrash2"></div>
			</article>


			<!-- DiaryView -->
			<article id="diaryView" class="panel">
				<header>
					<h2>Diary</h2>
				</header>
				<div id="diaryView"></div>
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