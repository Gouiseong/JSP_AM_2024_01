
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
String title = (String) request.getAttribute("title");
String body = (String) request.getAttribute("body");
int id = (int) request.getAttribute("id");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"">
<title>게시물 목록</title>
</head>
<body>

	<a href="../home/main">메인으로 이동</a>

	<form>
		제목 : <input type="text"><%=title%><br> 내용 : <input
			type="text"><%=body%><br>

	</form>

	<button onclick="alert('<%=id%>번 글이 생성되었습니다.')">글 작성</button>

	<div>
		<a style="color: green" href="list">리스트로 돌아가기</a>
	</div>
</body>
</html>