<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>table_form</title>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css"
	href="table/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="table/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="table/vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="table/vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="table/vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="table/css/table_util.css">
<link rel="stylesheet" type="text/css" href="table/css/table_main.css">
<!--===============================================================================================-->
<script type="text/javascript">
	function insertForm() {
		location.href = "notice/insertForm";
	}
</script>
</head>
<body>

	<div class="limiter">

		<div class="container-table10">

			<div class="wrap-table100">
				<header>
					<h2>
						NOTICE
						<p>
						<p>
					</h2>

				</header>
				<div class="table100 ver1 m-b-110" align="center">
					<!-- table_main.css -> .table100.ver1 th ->  배경 색상 조절 -->
					<!-- 				   .table100.ver1 .table100-body tr:nth-child(even) -> 짝수간격으로 배경색 조절-->
					<div class="table100-head">
						<table>
							<thead>
								<tr class="row100 head">
									<th class="cell100 column1">번호</th>
									<th class="cell100 column1">제목</th>
									<th class="cell100 column1">날짜</th>
								</tr>
							</thead>
						</table>
					</div>
					<div class="table100-body js-pscroll">
						<table>
							<tbody>
								<c:forEach var="n" items="${list }">
									<tr class="row100 body">
										<td class="cell100 column1">${n.noticeNum }</td>
										<td class="cell100 column1"><a
											href="notice/select?noticeNum=${n.noticeNum }">${n.subject }</a></td>
										<td class="cell100 column1">${n.regDate }</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>

					</div>

				</div>
				<a href="${path }/notice/insertForm">입력</a>
			</div>
		</div>
	</div>


	<!--===============================================================================================-->
	<script src="table/vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script src="table/vendor/bootstrap/js/popper.js"></script>
	<script src="table/vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script src="table/vendor/select2/select2.min.js"></script>
	<!--===============================================================================================-->
	<script src="table/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script>
		$('.js-pscroll').each(function() {
			var ps = new PerfectScrollbar(this);

			$(window).on('resize', function() {
				ps.update();
			})
		});
	</script>
	<!--===============================================================================================-->
	<script src="table/js/main.js"></script>

</body>
</html>