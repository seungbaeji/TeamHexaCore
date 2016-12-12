<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
	
	<link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,600,700' rel='stylesheet' type='text/css'>

	<link rel="stylesheet" href="../resources/realcss/reset.css"> <!-- CSS reset -->
	<link rel="stylesheet" href="../resources/realcss/style.css"> <!-- Resource style -->
	<script src="../resources/js/modernizr.js"></script> <!-- Modernizr -->
<style type="text/css">
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
</body>
</html>