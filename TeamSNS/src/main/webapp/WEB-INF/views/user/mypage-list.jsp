<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- <jsp:include page="../signup/include.jsp" flush="false"></jsp:include> --%>

<a href="mypage?uid=${login_id}">내 정보 수정</a>
<a href="my-board?uid=${login_id}">작성한 글 목록</a>

</body>
</html>