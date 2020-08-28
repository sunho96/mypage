<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>table_form</title>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

	<div class="container">
		<table class="table">
			<thead>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>작성일</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="d" items="${list }">
					<c:if test="${d.del=='n' }">
						<tr>
							<td>${d.diaryNum }</td>
							<td><a href="diary/view?diaryNum=${d.diaryNum}">${d.subject }</a></td>
							<td>${d.regDate }</td>
						</tr>
					</c:if>
				</c:forEach>
			</tbody>
		</table>
	</div>

</body>
</html>
