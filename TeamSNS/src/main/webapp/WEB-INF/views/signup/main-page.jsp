<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main Page</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="../resources/css/sidemenu.css" />

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<style>
* {
	margin: 0;
	padding: 0;
}

#car {
	position: fixed;
	left: 250px;
	width: 1680px;
	height: 300px;
}
#testForm{
	position: fixed;
	left: 280px;
	top: 800px;
}
</style>
</head>
<body>

	<div id="accordian">

		<img id="logo" src="../resources/css/Logo_wide.svg" />

		<div class="loginForm">

			<form action="login" method="post">
				<div class="box">
					<input type="text" name="user_id" id="user_id" class="user_id"
						placeholder="아이디"> <br> <input type="password"
						name="user_pw" id="user_pw" class="user_pw" placeholder="비밀번호">
					<br> <input type="submit" id="signIn" class="signIn"
						value="로그인"> <input type="hidden" name="query"
						value="<%=request.getQueryString()%>">
					<!-- 현재 페이지가 가지고 있는 주소  -->

				</div>
			</form>
			<button class="signUp" data-toggle="modal" data-target="#myModal">회원가입</button>
		</div>
		<br /> <br />

		<ul>
			<li>
				<h3>
					<span class="icon-dashboard"></span>프로젝트
				</h3>
				<ul>
					<li><a href="#">프로젝트 리스트</a></li>
					<li id="project-register"><a href="#">프로젝트 등록</a></li>
					<li id="projectInfo"><a href="#">프로젝트 관리</a></li>
				</ul>
			</li>
			<li class="active">
				<h3>
					<span class="icon-tasks"></span>정보
				</h3>
				<ul>
					<li><a href="#">창업교육</a></li>
					<li><a href="#">멘토링</a></li>
					<li><a href="#">행사</a></li>

				</ul>
			</li>
			<li>
				<h3>
					<span class="icon-calendar"></span>커뮤니티
				</h3>
				<ul>
					<li id="tipAndTech"><a href="#">Tip & Tech</a></li>
					<li><a href="#">자유게시판</a></li>
					<li><a href="#">Q & A</a></li>
				</ul>
			</li>
			<li>
				<h3>
					<span class="icon-heart"></span>null
				</h3>
				<ul>
					<li><a href="#">null</a></li>
					<li><a href="#">null</a></li>
					<li><a href="#">null</a></li>
					<li><a href="#">null</a></li>
				</ul>
			</li>
		</ul>
		<button class="mypage">마이페이지</button>
		<button class="logout">로그아웃</button>

	</div>
	<!-- end accordian-->

	<div id="car">
		<div id="carousel-example-generic" class="carousel slide"
			data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#carousel-example-generic" data-slide-to="0"
					class="active"></li>
				<li data-target="#carousel-example-generic" data-slide-to="1"></li>
				<li data-target="#carousel-example-generic" data-slide-to="2"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img src="../resources/css/carousel01.svg" alt="...">
					<div class="carousel-caption"></div>
				</div>
				<div class="item">
					<img src="../resources/css/carousel02.svg" alt="...">
					<div class="carousel-caption"></div>
				</div>
				<div class="item">
					<img src="../resources/css/carousel03.svg" alt="...">
					<div class="carousel-caption"></div>
				</div>
			</div>

			<!-- Controls -->
			<a class="left carousel-control" href="#carousel-example-generic"
				role="button" data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#carousel-example-generic"
				role="button" data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
		<!-- 캐러셀 -->
	</div>
	
	
	<!-- strat modal -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">×</span><span class="sr-only">Close</span>
					</button>
					<h4 class="modal-title" id="myModalLabel"></h4>
				</div>
				<div class="modal-body">
					<div id="div-main">
						<form action="main-page" method="post">

							<div>
								<h1>회원 가입</h1>
								<br>
								<div class="form-group form-inline" id="div_user_id">
									<label for="user_id" class="label label-default">아이디</label> <input
										type="text" class="form-control user_register" id="user_id"
										name="uid" placeholder="아이디 입력">
								</div>
								<div class="form-group form-inline" id="div_user_pw">
									<label for="user_pw" class="label label-default">비밀번호</label> <input
										type="password" class="form-control user_register"
										id="user_pw" name="pw" placeholder="비밀번호 입력">
								</div>
								<div class="form-group form-inline" id="div_user_email">
									<label for="user_email" class="label label-default">이메일</label>
									<input type="email" class="form-control user_register"
										id="user_email" name="email" placeholder="이메일 입력">
								</div>
								<div class="form-group form-inline" id="div_user_name">
									<label for="user_name" class="label label-default">이름</label> <input
										type="text" class="form-control user_register" id="user_name"
										name="name" placeholder="이름 입력">
								</div>
								<div class="form-group form-inline" id="div_user_nickname">
									<label for="user_nickname" class="label label-default">닉네임</label>
									<input type="text" class="form-control user_register"
										id="user_nickname" name="nickname" placeholder="닉네임을 입력하시오">
								</div>

								<div class="form-group form-inline" id="div_team_category">
									<label for="info_category" class="label label-default">성별</label><br>
									<div class="input-group user_gender">
										<span class="input-group-addon"> <input type="radio"
											name="gender" value="0">
										</span> <input type="text" class="form-control" aria-label=""
											value="남">
									</div>
									<div class="input-group user_gender">
										<span class="input-group-addon"> <input type="radio"
											name="gender" value="1">
										</span> <input type="text" class="form-control" aria-label=""
											value="여">
									</div>
								</div>

								<!-- <div>
									<label class="label label-default" id="label_project_date">생일</label>
									<div class="form-group form-inline">
										<label class="label label-info day"></label> <input
											type="date" id="user_birth" class="form-control datepicker"
											name="birth" placeholder="20161205">
									</div>
								</div> -->
								<div class="form-group">
									<label class="label label-default" id="label-team-area">주소</label>
									<br> <select name="address">
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
									<input type="tel" class="form-control user_register"
										id="user_number" name="phone" placeholder="전화번호를 입력하시오">
								</div>
								<div class="form-group form-inline" id="div_user_kkoid">
									<label for="user_kkoid" class="label label-default">카카오톡</label>
									<input type="text" class="form-control user_register"
										id="user_kkoid" name="kkoid" placeholder="카톡아이디 입력">
								</div>
								<br> 
								<input type="submit" class="btn btn-primary btn-lg"
									id="user_submit" value="등록 하기">
							</div>

						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--  end modal -->







	<!--ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ자바스크립트ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ -->
	<script>
		$(function() {
			$("#accordian h3").click(function() {
				$("#accordian ul ul").slideUp();
				if (!$(this).next().is(":visible")) {
					$(this).next().slideDown();
				}
			});
		});

		$(document)
				.ready(
						function() {
							if ('${insert_result}' == 'success') {
								alert('신규 회원 가입 성공!');
							} else if ('${insert_result}' == 'fail') {
								alert('신규 회원 가입 실패!');
							}

							if ('${success}' == 'success') {
								$('.loginForm').hide();
							} else {
								$('.logout').hide();
								$('.mypage').hide();
								$('#projectInfo').hide();
								$('#project-register').hide();
							}

							$('.logout').click(function() {
								alert('${login_id}님 로그아웃 되셧습니다!');
								location = '/teamsns/signup/logout';
							});

							$('#projectInfo').click(function() {
								location = '/teamsns/project/projectInfo';
							});

							$('#project-register')
									.click(
											function() {
												location = '/teamsns/register/project-register';
											});

							$('#tipAndTech').click(function() {
								location = '/teamsns/board/tipAndTech';
							});

							$("#start, #end").datepicker(
									{
										dateFormat : 'yymmdd',
										monthNamesShort : [ '1월', '2월', '3월',
												'4월', '5월', '6월', '7월', '8월',
												'9월', '10월', '11월', '12월' ],
										dayNamesMin : [ '일', '월', '화', '수',
												'목', '금', '토' ],
										changeMonth : true, //월변경가능
										changeYear : true, //년변경가능
										showMonthAfterYear : true
									//년 뒤에 월 표시
									});
							/* 글자수 체크1 */
							$('#pname, .part')
									.keyup(
											function() {
												if ($(this).val().length > $(
														this).attr('maxlength')) {
													alert('제한길이 초과');
													$(this)
															.val(
																	$(this)
																			.val()
																			.substr(
																					0,
																					$(
																							this)
																							.attr(
																									'maxlength')));
												}
											});

						});
	</script>

</body>
</html>