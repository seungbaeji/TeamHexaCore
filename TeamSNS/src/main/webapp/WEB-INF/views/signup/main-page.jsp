<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page errorPage="/error/viewErrorMessage.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0"
	charset="UTF-8">
<title>Main Page</title>

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
		flex-basis: 230px;
		flex-shrink: 0;
	}
}

aside {
	flex-basis: 190px;
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

#car {
	width: 100%;
} 
@media (max-width: 425px) {
	#car {
		display: none;
	}
}

#main-section {
	padding: 30px;
	background-color:;
}

@media ( max-width : 768px) {
	#main-section {
		padding: 20px;
		flex-direction: column;
	}
}

#section1, #section2, #section3, #section4 {
	padding: 10px 15px;
	width: 50%;
	height: auto;
	display: inline-block;
	margin: -2px;
}

@media ( max-width : 767px) {
	#section1, #section2, #section3, #section4 {
		width: 100%;
	}
}

.main_table {
	font-size: 1.3rem;
	table-layout: fixed;
	width: 100%;
	height: auto;
	border-left: 3px solid #337ab7;
}

.main_table_name {
	white-space: nowrap;
	text-overflow: ellipsis;
	overflow: hidden;
}

.main_table_id {
	width: 70%;
	white-space: nowrap;
	text-overflow: ellipsis;
	overflow: hidden;
}

.main_table_date {
	width: 30%;
	white-space: nowrap;
	text-overflow: ellipsis;
	overflow: hidden;
}

.main_table_caption {
	font-size: 1.5rem;
}

h4 {
	color: #56595c;
	font-size: 1.5rem;
}

i {
	color: #337ab7;
}

</style>
</head>
<body>

	
	
	
  	
  			<div id="container">
		
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
			<li class="item-has-children">
				<a href="#0">project</a>
				<ul class="sub-menu">
					<li><a href="#0">프로젝트 리스트</a></li>
					<li><a href="#0">프로젝트 등록</a></li>
					<li><a href="#0">프로젝트 관리</a></li>
				</ul>
			</li> <!-- item-has-children -->

			<li class="item-has-children">
				<a href="#0">information</a>
				<ul class="sub-menu">
					<li><a href="#0">창업교육</a></li>
					<li><a href="#0">멘토링</a></li>
					<li><a href="#0">행사</a></li>
				</ul>
			</li> <!-- item-has-children -->

			<li class="item-has-children">
				<a href="#0">community</a>
				<ul class="sub-menu">
					<li><a  id="tipAndTech" href="#0">tip & tech</a></li>
					<li><a href="#0">New York</a></li>
					<li><a href="#0">Milan</a></li>
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
			<li><a href="#0">FAQ</a></li>
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
		<!-- end accordian-->

		<div id="main-index">
			<section class="content">
				<header id="car">
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
								<img src="../resources/realcss/carousel01.svg" alt="...">
								<div class="carousel-caption"></div>
							</div>
							<div class="item">
								<img src="../resources/realcss/carousel02.svg" alt="...">
								<div class="carousel-caption"></div>
							</div>
							<div class="item">
								<img src="../resources/realcss/carousel03.svg" alt="...">
								<div class="carousel-caption"></div>
							</div>
						</div>

						<!-- Controls -->
						<a class="left carousel-control" href="#carousel-example-generic"
							role="button" data-slide="prev"> <span
							class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
							<span class="sr-only">Previous</span>
						</a> <a class="right carousel-control"
							href="#carousel-example-generic" role="button" data-slide="next">
							<span class="glyphicon glyphicon-chevron-right"
							aria-hidden="true"></span> <span class="sr-only">Next</span>
						</a>
					</div>
				</header>
				<!-- end carousel -->
				<!-- 메인섹션 시작 테이블 4개  -->
				<div id="main-section">
					<div id="section1">
						<!-- <div class="label label-info main_table_caption">프로젝트</div> -->
						<h4 class="main_header">
							<i class="material-icons" style="font-size: 1.7rem;">subject</i>
							프로젝트 리스트
						</h4>
						<table class="table main_table">
							<tr>
								<td class="main_table_name"><a href="">jasdkfjklasjfklsajflsaasdfsafafafsafsafsfsafsadasfdfsafsafsaf</a></td>
								<td class="main_table_id">asdfafasdfsafafsafsafsafsafsafdasfsaf</td>
								<td class="main_table_date">2016-12-06</td>
							</tr>
							<tr>
								<td class="main_table_name">adfsafsafafaf</td>
								<td class="main_table_id">a</td>
								<td class="main_table_date">a</td>
							</tr>
							<tr>
								<td class="main_table_name">b</td>
								<td class="main_table_id">b</td>
								<td class="main_table_date">b</td>
							</tr>
							<tr>
								<td class="main_table_name">c</td>
								<td class="main_table_id">c</td>
								<td class="main_table_date">c</td>
							</tr>
							<tr>
								<td class="main_table_name">d</td>
								<td class="main_table_id">d</td>
								<td class="main_table_date">d</td>
							</tr>
						</table>
					</div>
					<div id="section2">
						<!-- <div class="label label-info main_table_caption">정보</div> -->
						<h4 class="main_header">
							<i class="material-icons" style="font-size: 1.7rem;">widgets</i>
							Tip & Tech
						</h4>
						<table class="table main_table">
							<tr>
								<td class="main_table_name"><a href="">jasdkfjklasjfklsajflsaasdfsafafafsafsafsfsafsadasfdfsafsafsaf</a></td>
								<td class="main_table_id">뭐야 왜안돼</td>
								<td class="main_table_date">2016-12-06</td>
							</tr>
							<tr>
								<td class="main_table_name">adfsafsafafaf</td>
								<td class="main_table_id">a</td>
								<td class="main_table_date">a</td>
							</tr>
							<tr>
								<td class="main_table_name">b</td>
								<td class="main_table_id">b</td>
								<td class="main_table_date">b</td>
							</tr>
							<tr>
								<td class="main_table_name">c</td>
								<td class="main_table_id">c</td>
								<td class="main_table_date">c</td>
							</tr>
							<tr>
								<td class="main_table_name">d</td>
								<td class="main_table_id">d</td>
								<td class="main_table_date">d</td>
							</tr>
						</table>
					</div>
					<div id="section3">
						<!-- <div class="label label-info main_table_caption">커뮤니티</div> -->
						<h4 class="main_header">
							<i class="material-icons" style="font-size: 1.7rem;">forum</i> Q & A
						</h4>
						<table class="table main_table">
							<tr>
								<td class="main_table_name"><a href="">jasdkfjklasjfklsajflsaasdfsafafafsafsafsfsafsadasfdfsafsafsaf</a></td>
								<td class="main_table_id">ffasdfsafafsafsafsafsafsafdasfsaf</td>
								<td class="main_table_date">2016-12-06</td>
							</tr>
							<tr>
								<td class="main_table_name">adfsafsafafaf</td>
								<td class="main_table_id">a</td>
								<td class="main_table_date">a</td>
							</tr>
							<tr>
								<td class="main_table_name">b</td>
								<td class="main_table_id">b</td>
								<td class="main_table_date">b</td>
							</tr>
							<tr>
								<td class="main_table_name">c</td>
								<td class="main_table_id">c</td>
								<td class="main_table_date">c</td>
							</tr>
							<tr>
								<td class="main_table_name">d</td>
								<td class="main_table_id">d</td>
								<td class="main_table_date">d</td>
							</tr>
						</table>
					</div>
					<div id="section4">
						<!-- <div class="label label-info main_table_caption">몰라</div> -->
						<h4 class="main_header">
							<i class="material-icons" style="font-size: 1.7rem;">info</i> 정보
							게시판
						</h4>
						<table class="table main_table">
							<tr>
								<td class="main_table_name"><a href="">jasdkfjklasjfklsajflsaasdfsafafafsafsafsfsafsadasfdfsafsafsaf</a></td>
								<td class="main_table_id">작성자asdfsafafsafsafsafsafsafdasfsaf</td>
								<td class="main_table_date">2016-12-06</td>
							</tr>
							<tr>
								<td class="main_table_name">adfsafsafafaf</td>
								<td class="main_table_id">a</td>
								<td class="main_table_date">a</td>
							</tr>
							<tr>
								<td class="main_table_name">b</td>
								<td class="main_table_id">b</td>
								<td class="main_table_date">b</td>
							</tr>
							<tr>
								<td class="main_table_name">c</td>
								<td class="main_table_id">c</td>
								<td class="main_table_date">c</td>
							</tr>
							<tr>
								<td class="main_table_name">d</td>
								<td class="main_table_id">d</td>
								<td class="main_table_date">d</td>
							</tr>
						</table>
					</div>
				</div>
				<!-- 메인섹션 테이블 4개 끝 -->
				<footer> </footer>
			</section>
		</div>
		<!-- end main-index -->
		<aside>날씨</aside>

	</div>
	<!-- end container -->
    	

	
	<!--ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ자바스크립트ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ -->
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

		$(document).ready(function() {
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
													$(this).val($(this).val().substr(0,$(this).attr('maxlength')));
												}
											});

						});
	</script>

</body>
</html>