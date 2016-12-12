<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0"
	charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="../resources/realcss/sidemenu.css" />

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
	
	<link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,600,700' rel='stylesheet' type='text/css'>

	<link rel="stylesheet" href="../resources/realcss/reset.css"> <!-- CSS reset -->
	<link rel="stylesheet" href="../resources/realcss/style.css"> <!-- Resource style -->
	<script src="../resources/js/modernizr.js"></script> <!-- Modernizr -->
<style>
#container {
	display: flex;
	flex-direction: row;
}

@media ( max-width : 768px) {
	#container {
		flex-direction: column;
	}
}


@media (min-width: 425px) {
	#cd-lateral-nav {
		flex-basis: 220px;
		flex-shrink: 0;
	}
}

aside {
	flex-basis: 200px;
	flex-shrink: 0;
}

.content {
	display: flex;
	flex-direction: column;
}

@media ( min-width : 768px) {
	.content {
		min-width: 768px;
	}
}

</style>
</head>
<body>
	<header id="mainHeader">
		
		<nav id="cd-top-nav">
			<ul>
				<li><a href="#0">로그인</a></li>

			</ul>
		</nav>
		<a id="cd-menu-trigger" href="#0"><span class="cd-menu-text">Menu</span><span class="cd-menu-icon"></span></a>
	</header>
	
			<nav id="cd-lateral-nav">
		<ul class="cd-navigation">
		<img  id="mainLogo" src="../resources/img/Logo_white.svg">
			<li class="item-has-children">
				<a href="#0">project</a>
				<ul class="sub-menu">
					<li id="project-list"><a href="#0">프로젝트 리스트</a></li>
					<li id="project-register"><a href="#0">프로젝트 등록</a></li>
					<li id="projectInfo"><a href="#0">프로젝트 관리</a></li>
				</ul>
			</li> <!-- item-has-children ..-->

			<li class="item-has-children">
				<a href="#0">information</a>
				<ul class="sub-menu">
					<li id="info_board_edu"><a href="#0">창업교육</a></li>
					<li id="info_board_event"><a href="#0">멘토링</a></li>
					<li id="info_board_mentor"><a href="#0">행사</a></li>
				</ul>
			</li> <!-- item-has-children -->

			<li class="item-has-children">
				<a href="#0">community</a>
				<ul class="sub-menu">
					<li id="tipAndTech"><a href="#0">tip & tech</a></li>
					<li><a id="qaBoard" href="#0">Q & A</a></li>
					<li><a id="freeBoard" href="#0">자유 게시판</a></li>
					<li><a href="#0">Paris</a></li>
				</ul>
			</li> <!-- item-has-children -->
		</ul> <!-- cd-navigation -->

		<ul class="cd-navigation cd-single-item-wrapper">
			<li><a href="#0">로그인</a></li>
			<li><a href="#0">Register</a></li>
			<li><a href="#0">Pricing</a></li>
			<li><a href="#0">Support</a></li>
		</ul> <!-- cd-single-item-wrapper -->

		<ul class="cd-navigation cd-single-item-wrapper">
			<li><a class="current" href="#0">Journal</a></li>
			<li id="qaboard"><a href="#0">FAQ</a></li>
			<li><a href="#0">Terms &amp; Conditions</a></li>
			<li><a href="#0">Careers</a></li>
			<li><a href="#0">Students</a></li>
		</ul> <!-- cd-single-item-wrapper -->

		<div class="cd-navigation socials">
			<a class="cd-twitter cd-img-replace" href="#0">Twitter</a>
			<a class="cd-github cd-img-replace" href="#0">Git Hub</a>
			<a class="cd-facebook cd-img-replace" href="#0">Facebook</a>
			<a class="cd-google cd-img-replace" href="#0">Google Plus</a>
		</div> <!-- socials -->
	</nav>
	
	<script src="../resources/js/main.js"></script> <!-- Resource jQuery -->
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
								$('.loginForm').hide();
							} else {
								$('.logout').hide();
								$('.mypage').hide();
								/* $('#projectInfo').hide();
								$('#project-register').hide(); */
							}

							$('.logout').click(function() {
								alert('${login_id}님 로그아웃 되셧습니다!');
								location = '/teamsns/signup/logout';
							});

							$('#project-list').click(function() {
								location = '/teamsns/project/projectList';
							});

							$('#projectInfo').click(function() {
								location = '/teamsns/project/projectInfo';
							});

							$('#project-register').click(function() {
								location = '/teamsns/register/project-register';
							});

							$('#tipAndTech').click(function() {
								location = '/teamsns/board/tipAndTech';
							});
							$('#logo').click(function() {
								location = '/teamsns/signup/main-page';
							});
							$('#info_board_edu').click(function() {
								location = '/teamsns/info_board/edu';
							});
							$('#info_board_event').click(function() {
								location = '/teamsns/info_board/event';
							});
							$('#info_board_mentor').click(function() {
								location = '/teamsns/info_board/mentor';
							});
							$('#qaBoard').click(function() {
								location = '/teamsns/qaboard/qaBoard';
							});
							$('#freeBoard').click(function() {
								location = '/teamsns/freeboard/freeBoard';
							});
							$('#mainLogo').click(function() {
								location = '/teamsns/signup/main-page';
							});
							$('#mainLogo').click(function() {
								location = '/teamsns/signup/main-page';
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
							$('#pname, .part').keyup(function() {
								if ($(this).val().length > $(this).attr('maxlength')) {
									alert('제한길이 초과');
									$(this).val($(this).val().substr(0,
											$(this).attr('maxlength')));}
								});
							});
	</script>
</body>
</html>