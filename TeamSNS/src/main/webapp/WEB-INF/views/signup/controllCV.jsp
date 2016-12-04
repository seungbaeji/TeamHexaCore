<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Main Page</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="../resources/css/sidemenu.css"/>

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
  
    <style>
        *{
            margin: 0;
            padding: 0;
        }
        .car{
        	position: fixed;
        	left: 250px;
        	width : 800px;
        	height : 800px;
        }
        
   .carousel-control {
   	height : 800px
   }
    </style>
</head>
<body>
   <div id="accordian">
      
       <img id="logo" src="../resources/css/Logo_wide.svg"/>
       
   <div class="loginForm">
    
        
        <button class="mypage">마이페이지</button>
        <button class="logout">로그아웃</button>
    </div>
      <br/>
      <br/>
   
	<ul>
		<li>
			<h3><span class="icon-dashboard"></span>프로젝트</h3>
			<ul>
				<li><a href="#">프로젝트 리스트</a></li>
				<li id="project-register"><a href="#">프로젝트 등록</a></li>
				<li id="projectInfo"><a href="#">프로젝트 관리</a></li>
				
			</ul>
		</li>
		<li class="active">
			<h3><span class="icon-tasks"></span>정보</h3>
			<ul>
				<li><a href="#">창업교육</a></li>
				<li><a href="#">멘토링</a></li>
				<li><a href="#">행사</a></li>
				
			</ul>
		</li>
		<li>
			<h3><span class="icon-calendar"></span>커뮤니티</h3>
			<ul>
				<li><a href="#">Tip & Tech</a></li>
				<li><a href="#">자유게시판</a></li>
				<li><a href="#">Q & A</a></li>
			</ul>
		</li>
		<li>
			<h3><span class="icon-heart"></span>null</h3>
			<ul>
				<li><a href="#">null</a></li>
				<li><a href="#">null</a></li>
				<li><a href="#">null</a></li>
				<li><a href="#">null</a></li>
			</ul>
		</li>
	</ul>
	<br>
	<br>
	
	<!-- <button id="projectInfo" type="button" class="btn btn-primary">프로젝트 관리</button> -->
</div> <!-- end accordian-->
    
 




    
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
                        <h4 class="modal-title" id="myModalLabel"></h4> </div>
                    <div class="modal-body">
                        <div id="div-main">
                            <form action="parent.html">
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
                                    <br>
                                    <input type="submit" class="btn btn-primary btn-lg" id="user_submit" value="등록 하기"> </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    
    
    
   
</body>
</html>