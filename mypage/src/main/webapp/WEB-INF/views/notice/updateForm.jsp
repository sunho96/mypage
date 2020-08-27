<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../header.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>table_form</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="../table/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="../table/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="../table/vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="../table/vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="../table/vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="../table/css/table_util.css">
<link rel="stylesheet" type="text/css"
	href="../table/css/table_main.css">
<!--===============================================================================================-->
</head>
<body>
	<form action="${path }/notice/update" method="post">
		<input type="hidden" name="noticeNum" value="${notice.noticeNum }">
		<table border="1">
			<tr>
				<th>제목</th>
				<td><input type="text" name="subject"
					value="${notice.subject }" required="required"
					autofocus="autofocus"></td>
			</tr>
			<tr>
				<th>내용</th>
				<td><pre>
					<textarea rows="5" cols="10" name="content" required="required">${notice.content }</textarea>
				</pre></td>
			</tr>
			<tr>
				<th colspan="2"><input type="submit" value="확인"></th>
		</table>
	</form>

	<!--===============================================================================================-->
	<script src="../table/vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script src="../table/vendor/bootstrap/js/popper.js"></script>
	<script src="../table/vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script src="../table/vendor/select2/select2.min.js"></script>
	<!--===============================================================================================-->

</body>
</html>