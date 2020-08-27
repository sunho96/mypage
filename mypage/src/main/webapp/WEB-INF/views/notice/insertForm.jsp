<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../header.jsp"%>
<%@ include file="../member/sessionChk.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>table_form</title>
<meta charset="UTF-8">
</head>
<body>
<form action="diary/insert" method="post">
<input type="hidden" name="memberNum" value="${memberNum}">
	<table border="1">
		<tr>
			<th>제목</th>
			<td><input type="text" name="subject" required="required" autofocus="autofocus"></td>
		</tr>
		<tr>
			<th>내용</th>
			<td><pre><textarea rows="20" cols="40" name="content" required="required"></textarea>
				</pre></td>
		</tr>
		<tr>
			<th colspan="2"><input type="submit" value="확인"></th>
	</table>
	</form>
</body>
</html>