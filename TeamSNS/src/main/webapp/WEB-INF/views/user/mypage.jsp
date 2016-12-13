<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0"
	charset="UTF-8">
<title>Let's Team! My page</title>
 <!-- 부트스트랩 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<!-- 자바스크립트 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<style>

@media ( min-width : 768px) {
	.content {
		padding: 40px;
	}
}

@media ( max-width : 767px) {
	.content {
		padding: 20px;
	}
}
#main-section {
	min-width: 650px;
}

#mypage_section1 {
	background-color: gray;
	width: 100%;
	height: 35rem;
	margin-bottom: 1rem;
}
   
#mypage_section2 {
	background-color: gray;
 	width: 100%; 
}

.mylabel {
	font-size: 3rem;
}

#section1_button {
	float: right;
}

.table_mypage {
	font-size: 1.5rem;
}

.table_mypage_td1 {
	/* width: 12rem; */
}

.table_board_list {
	table-layout: fixed;
}

.table_mypage_board {
/* 	width: 17rem; */
	text-align: center;
}

.table_mypage_title {
	/* width: 50rem; */
	white-space: nowrap;
	text-overflow: ellipsis;
	overflow: hidden;
	text-align: center;
}

.table_mypage_bno {
	/* width: 7rem; */
}

.table_mypage_date {
	/* width: 12rem; */
	text-align: center;
}

.table_mypage_count {
	/* width: 8rem; */
}
</style>

</head>
<body>
<%-- <jsp:include page="../signup/include.jsp" flush="false"></jsp:include> --%>

<%-- <a href="mypage?uid=${login_id}">내 정보 수정</a>
<a href="my-board?uid=${login_id}">작성한 글 목록</a>
 --%>
<div id="container">
		<jsp:include page="../signup/include.jsp" flush="false"></jsp:include>
		<div id="main-index">
			<section class="content">
				<header>
					<h1>My Page</h1>
				</header>
				<div id="main_section">
					<div id="mypage_section1" >
						<label class="label label-default mylabel">내정보</label>
						<br/><br/><br/>
						<table class="table table_mypage">
							<tr>
							<td class="table_mypage_td1">ID</td>
							<td>${user.uid}</td>
							</tr>
							<tr>
							<td class="table_mypage_td1">이름</td>
							<td>${user.name }</td>
							</tr>
							<tr>
							<td class="table_mypage_td1">이메일</td>
							<td>${user.email }</td>
							</tr>
							<tr>
							<td class="table_mypage_td1">카톡</td>
							<td>${user.kkoid }</td>
							</tr>
							<tr>
							<td class="table_mypage_td1">주소</td>
							<td>${user.address }</td>
							</tr>
						</table>
						<div id="section1_button">
				<!-- 		<input type="button" class="btn btn-primary btn-lg" value="수정하기"> -->
							<a href="myinfo-update" class="btn btn-primary btn-lg">수정</a>
						</div>
					</div>
		
					<div id="mypage_section2">
					<label class="label label-default mylabel">내가 쓴 글</label>
					<br>
					<br>
					<br>
					<table class="table table_board_list">
					<tr>
					<th class="table_mypage_bno">글번호</th>
					<th class="table_mypage_board">게시판</th>
					<th class="table_mypage_title">제목</th>
					<th class="table_mypage_date">등록일</th>
					<th class="table_mypage_count">조회수</th>
					</tr>
				
					
					<c:forEach var="board" items="${boardVO }">
					<tr>
					<td class="table_mypage_bno">${board.bno }</td>
					<td class="table_mypage_board">${board.bk }</td>
					<td class="table_mypage_title">${board.title }</td>
					<td class="table_mypage_date">${board.regdate }</td>
					<td class="table_mypage_count">${board.hits }</td>
					</tr>
					</c:forEach>
				
					</table>페이지 링크 하든가 </div>
				</div><!-- end main-section -->

				<footer>footer</footer>


			</section>
			
		</div>
		<aside>날씨</aside>
	</div>

<script>
$(document).ready(function() {
	if('${update_result}' == 'success') {
		alert('내 정보 수정 성공!');
	} else if('${update_result}' == 'fail') {
		alert('내 정보 수정 실패ㅠㅠ');
	}
});

</script>



</body>
</html>