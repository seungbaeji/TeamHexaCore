<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>내가 작성한 글 리스트</h1>

<table>
	<tr>
		<th>게시판</th>
		<th>글번호</th>
		<th>제목</th>
		<th>작성시간</th>
	</tr>
	
	<c:forEach var="board" items="${vo }}">
		<tr>
			<td>${board.bk }</td>
			<td>${board.bno }</td>
			<td>${board.title }</td>
			<td><fmt:formatDate value="${board.regdate }" pattern="yy-MM-dd HH:mm:ss" /></td>
		</tr>
	</c:forEach>
</table>

</body>
</html>