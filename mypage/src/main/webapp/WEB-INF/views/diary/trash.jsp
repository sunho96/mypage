<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>table_form</title>
<meta charset="UTF-8">
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
<script src="assets/js/jquery.min.js"></script>
<script type="text/javascript">
	function save(num) {
		location.href="diary/save?diaryNum="+num;
	}
	function del(num) {
		location.href="diary/del?diaryNum="+num;
	}
</script>
</head>
<body>
	<div class="limiter">
		<div class="container-table10">
			<div class="wrap-table100">
				<div class="table100 ver1 m-b-110" align="center">
					<div class="table100-head">
						<table>
							<thead>
								<tr class="row100 head">
									<th></th>
									<th class="cell100 column1">작성일</th>
									<th class="cell100 column2">제목</th>
									<th class="cell100 column1">복구</th>
									<th class="cell100 column1">삭제</th>
								</tr>
							</thead>
						</table>
					</div>
					<div class="table100-body js-pscroll">
						<table>
							<tbody>
								<c:forEach var="d" items="${list }" varStatus="a">
									<c:if test="${d.del=='y' }">
										<input type="hidden" id="d_${a.index }" value="${d.diaryNum }">
										<tr class="row100 body">
											<td><input type="radio" name="check"></td>
											<td class="cell100 column1">${d.regDate }</td>
											<td class="cell100 column2"><a href="diary/view?diaryNum=${d.diaryNum}">${d.subject }</a></td>
											<td class="cell100 column1"><button
													onclick="save(${d.diaryNum})">복구</button></td>

											<td class="cell100 column1"><button
													onclick="del(${d.diaryNum})">삭제</button></td>
										</tr>
									</c:if>
								</c:forEach>
							</tbody>
						</table>

					</div>

				</div>

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