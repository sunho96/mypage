<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../header.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>table_form</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
<form action="${path }/notice/insert" method="post">
	<table border="1">
		<tr>
			<th>제목</th>
			<td><input type="text" name="subject" required="required" autofocus="autofocus"></td>
		</tr>
		<tr>
			<th>내용</th>
			<td><pre>
					<textarea rows="5" cols="10" name="content" required="required"></textarea>
				</pre></td>
		</tr>
		<tr>
			<th colspan="2"><input type="submit" value="확인"></th>
	</table>
	</form>
</body>
</html>