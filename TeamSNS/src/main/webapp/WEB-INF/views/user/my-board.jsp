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
	</tr>
	
	<c:forEach var="vo" items="${board }">
		<tr>
			<td>${vo.bk }</td>
			<td>${vo.bno }</td>
			<td>${vo.title }</td>
			
		</tr>
	</c:forEach>
</table>

</body>
</html>