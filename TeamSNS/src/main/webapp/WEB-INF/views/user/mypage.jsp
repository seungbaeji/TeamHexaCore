<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 정보</title>


<!-- JQuery -->	
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<!-- 부트스트랩 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<!-- 달력 -->
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</head>

<!-- CSS 파일 -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/mypage-style.css" />

<body>

<div id="div-main">
<form id="user_info">

	<div>
	<h1>마이페이지</h1> <br/>
	
	<div class="form-group form-inline" id="div_user_id">
	<label for="user_id" class="label label-default">아이디</label>
	<input type="text" class="form-control user_register" id="user_id" name="uid" value="${user.uid }" placeholder="아이디" readonly>
	</div>
	
	<div class="form-group form-inline" id="div_user_pw">
	<label for="user_pw" class="label label-default">비밀번호</label>
	<input type="password" class="form-control user_register" id="user_pw" name="pw" value="${user.pw }" placeholder="비밀번호 입력">
	</div>
	
	<div class="form-group form-inline" id="div_user_email">
	<label for="user_email" class="label label-default">이메일</label>
	<input type="email" class="form-control user_register" id="user_email" name="email"
		value="${user.email }" placeholder="이메일 입력">
	</div>
	
	<div class="form-group form-inline" id="div_user_name">
	<label for="user_name" class="label label-default">이름</label>
	<input type="text" class="form-control user_register" id="user_name" name="name" 
		value="${user.name }" placeholder="이름" readonly>
	</div>
	
	<div class="form-group form-inline" id="div_user_nickname">
	<label for="user_nickname" class="label label-default">닉네임</label>
	<input type="text" class="form-control user_register" id="user_nickname" name="nickname" 
		value="${user.nickname }" placeholder="닉네임을 입력하시오">
	</div>
	
	<div class="form-group form-inline" id="div_team_category">
	<label for="info_category" class="label label-default">성별</label> <br/>	
	<div class="input-group user_gender">
	<span class="input-group-addon">
	<input type="radio" name="user_gender" value="남" aria-label="" disabled>
	</span>
	<input type="text" class="form-control" aria-label="" value="남" disabled> </div>
	<div class="input-group user_gender">
	<span class="input-group-addon">
	<input type="radio" name="user_gender" value="여" aria-label="" disabled>
	</span>
	<input type="text" class="form-control" aria-label="" value="여" disabled> </div>
	</div>
	
<%-- 	<div>
	<label class="label label-default" id="label_project_date">생일</label>
	<div class="form-group form-inline">
	<label class="label label-info day"></label>
	<input type="date" id="user_birth" class="form-control datepicker" name="birth" value="${user.birth }" readonly> </div>
	</div> --%>
	
	<div class="form-group">
	<label class="label label-default" id="label-team-area">주소</label> <br/>
	<select name="user_address">
		<option value="대한민국" selected="selected">대한민국</option>
		<option value="서울">서울</option>
		<option value="부산">부산</option>
		<option value="대구">대구</option>
		<option value="인천">인천</option>
		<option value="광주">광주</option>
		<option value="대전">대전</option>
		<option value="울산">울산</option>
		<option value="제주">제주</option>
		<optgroup label="경기">
			<option value="경기-안양">안양</option>
			<option value="경기-부천">부천</option>
		</optgroup>
		<optgroup label="강원"></optgroup>
		<optgroup label="충북"></optgroup>
		<optgroup label="충남"></optgroup>
		<optgroup label="전북"></optgroup>
		<optgroup label="전남"></optgroup>
		<optgroup label="경북"></optgroup>
		<optgroup label="경남"></optgroup>
	</select>
	</div>
	
	<div class="form-group form-inline" id="div_user_number">
	<label for="user_number" class="label label-default">전화번호</label>
	<input type="tel" class="form-control user_register" id="user_number" name="phone"
		value="${user.phone }" placeholder="전화번호를 입력하시오">
	</div>
	
	<div class="form-group form-inline" id="div_user_kkoid">
	<label for="user_kkoid" class="label label-default">카카오톡</label>
	<input type="text" class="form-control user_register" id="user_kkoid" name="kkoid"
		value="${user.kkoid }" placeholder="카톡아이디 입력">
	</div> <br/>
	
	</div>
	</form>
		
	<button class="btn btn-primary btn-lg" type="submit" id="user_update">수정</button>
	<button class="btn btn-primary btn-lg" type="submit" id="user_bye">탈퇴</button>
	<button class="btn btn-primary btn-lg" type="submit" id="cancel">취소</button>
	
</div>

<!-- 자바스크립트 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>
$(document).ready(function () {
	var user = $('#user_info');
	
	$('#user_update').click(function () {
		user.attr('action', 'update');
		user.attr('method', 'post');
		user.submit();
	});
	
	/* $('#user_bye').click(function() {
		var result = confirm('정말 탈퇴하시겠습니까? \n탈퇴시 작성하셨던 게시글은 삭제돼지 않습니다')
	}); */
	
	$('#cancel').click(function() {
		location = 'mypage-list';
	});
	
});

</script>


</body>
</html>