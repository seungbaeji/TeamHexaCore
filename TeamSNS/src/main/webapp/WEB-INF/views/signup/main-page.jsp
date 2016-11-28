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
        <button class="signIn">로그인</button>
        <button class="signUp" data-toggle="modal" data-target="#myModal">회원가입</button>
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

	<!-- strat modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
                        <h4 class="modal-title" id="myModalLabel"></h4> </div>
                    <div class="modal-body">
                        <div id="div-main">
                            <form method="post">
                                <div>
                                    <h1>회원 가입</h1>
                                    <br>
                                    <div class="form-group form-inline" id="div_user_id">
                                        <label for="user_id" class="label label-default">아이디</label>
                                        <input type="text" class="form-control user_register" id="user_id" name="user_id" placeholder="아이디 입력"> </div>
                                    <div class="form-group form-inline" id="div_user_pw">
                                        <label for="user_pw" class="label label-default">비밀번호</label>
                                        <input type="password" class="form-control user_register" id="user_pw" name="user_pw" placeholder="비밀번호 입력"> </div>
                                    <div class="form-group form-inline" id="div_user_email">
                                        <label for="user_email" class="label label-default">이메일</label>
                                        <input type="email" class="form-control user_register" id="user_email" name="user_email" placeholder="이메일 입력"> </div>
                                    <div class="form-group form-inline" id="div_user_name">
                                        <label for="user_name" class="label label-default">이름</label>
                                        <input type="text" class="form-control user_register" id="user_name" name="user_name" placeholder="이름 입력"> </div>
                                    <div class="form-group form-inline" id="div_user_nickname">
                                        <label for="user_nickname" class="label label-default">닉네임</label>
                                        <input type="text" class="form-control user_register" id="user_nickname" name="user_nickname" placeholder="닉네임을 입력하시오"> </div>
                                    <div class="form-group form-inline" id="div_user_number">
                                        <label for="user_number" class="label label-default">전화번호</label>
                                        <input type="tel" class="form-control user_register" id="user_number" name="user_number" placeholder="전화번호를 입력하시오"> </div>
                                    <div class="form-group form-inline" id="div_user_kkoid">
                                        <label for="user_kkoid" class="label label-default">카카오톡</label>
                                        <input type="text" class="form-control user_register" id="user_kkoid" name="user_kkoid" placeholder="카톡아이디 입력"> </div>
                                    <div class="form-group form-inline" id="div_user_img">
                                        <label for="user_kkoid" class="label label-default">사진</label>
                                        <input type="text" class="form-control user_register" id="user_img" name="user_img" placeholder="사진 저장 경로"> </div>    
                                    <br>
                                    <input type="submit" class="btn btn-primary btn-lg" id="user_submit" value="등록 하기"> </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div> <!--  end modal -->






<!--ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ자바스크립트ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ -->
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