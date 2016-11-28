<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main Page</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="../resources/CSS/sidemenu.css"/>

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>    
    
<style>
	*{
		margin: 0;
		padding: 0;
	}

</style>
</head>
<body>

<div id="accordian">
      
       <img id="logo" src="../resources/CSS/Logo_wide.svg"/>
       
   <div class="loginForm">
        <form method="post" name="" action="">
           <div class="box">
            <input type="text" class="iText" value="아이디">
            <br>
            <input type="password" name="" id="" class="iText" value="asdf">
            <br>
           <!-- <p>
              <span class="fleft"><input type="checkbox" id=""><label for=""> 아이디 저장</label></span> 
              <span class="fright"><a href="">아이디 찾기</a>&nbsp;|&nbsp;<a href="">비밀번호 찾기</a></span>
            </p>-->
          </div>
        </form>
        <a href="#" id="" class="signIn">로그인</a>
        <a href="#" id="" class="signUp">회원가입</a>
      </div>
      <br/>
      <br/>
   
	<ul>
		<li>
			<h3><span class="icon-dashboard"></span>Dashboard</h3>
			<ul>
				<li><a href="#">Reports</a></li>
				<li><a href="#">Search</a></li>
				<li><a href="#">Graphs</a></li>
				<li><a href="#">Settings</a></li>
			</ul>
		</li>
		<li class="active">
			<h3><span class="icon-tasks"></span>Tasks</h3>
			<ul>
				<li><a href="#">Today's tasks</a></li>
				<li><a href="#">Urgent</a></li>
				<li><a href="#">Overdues</a></li>
				<li><a href="#">Recurring</a></li>
				<li><a href="#">Settings</a></li>
			</ul>
		</li>
		<li>
			<h3><span class="icon-calendar"></span>Calendar</h3>
			<ul>
				<li><a href="#">Team Calendar</a></li>
				<li><a href="#">Private Calendar</a></li>
				<li><a href="#">Settings</a></li>
			</ul>
		</li>
		<li>
			<h3><span class="icon-heart"></span>Favourites</h3>
			<ul>
				<li><a href="#">Global favs</a></li>
				<li><a href="#">My favs</a></li>
				<li><a href="#">Team favs</a></li>
				<li><a href="#">Settings</a></li>
			</ul>
		</li>
	</ul>
</div> <!-- end accordian-->




   <script>
        $(function(){
	$("#accordian h3").click(function(){
		$("#accordian ul ul").slideUp();
		if(!$(this).next().is(":visible"))
		{
			$(this).next().slideDown();
		}
	});
});
    </script>

</body>
</html>