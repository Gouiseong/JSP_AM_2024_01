<%@ page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
Map<String, Object> articleRow = (Map<String, Object>) request.getAttribute("articleRow");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"">
<title>게시물 삭제</title>
</head>
<body>

	<h2>게시물 삭제</h2>

	<div><%=articleRow.get("id")%>번 게시글이 삭제되었습니다.
	</div>

	<a style="color: green" href="list">리스트로 돌아가기</a> 

</body>
</html>