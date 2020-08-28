<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="../header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table>
	<tr><th>게시일</th><td>${diary.regDate }</td></tr>
	<tr><th>제목</th><td>${diary.subject }</td></tr>
	<tr><th>내용</th><td><pre>${diary.content }</pre></td></tr>
	<tr><th>삭제여부</th><td><pre>${diary.del }</pre></td></tr>
</table>
<button onclick="location.href='${path}/main#diaryList'">리스트 가기</button>
<button onclick="location.href='updateForm?diaryNum=${diary.diaryNum}'">수정하기</button>
<button onclick="location.href='delete?diaryNum=${diary.diaryNum}'">삭제하기</button>
</body>
</html>