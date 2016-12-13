<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0"
	charset="UTF-8">
<title>Let's Team! Project List</title>
<link href="../resources/realcss/teamList.css" rel="stylesheet" type="text/css"></link>
<link href="../resources/realcss/fonts.css" rel="stylesheet" type="text/css"></link>
</head>
<body>
	<div id="container">
		<jsp:include page="../signup/include.jsp" flush="false"></jsp:include>
		<div id="main-index">
			<section class="content">
				<header class="districtset">
				   <h1 style="font-size: 36px">Project List</h1>
				      <ul class="district">
				         <!-- <li id ="all">전체선택</li> -->
				         <li id ="seoul">서울특별시 </li>
				         <li id ="busan">부산광역시 </li>
				         <li id ="daegu">대구광역시 </li>
				         <li id ="inchen">인천광역시 </li>
				         <li id ="gwangju">광주광역시 </li>
				         <li id ="daejeon">대전광역시 </li>   
				         <li id ="ulsan">울산광역시 </li>
				         <li id ="sejong">세종특별자치시 </li>
				         <li id ="gyeonggi">경기도 </li>
				         <li id ="gangwon">강원도 </li>
				         <li id ="nChungcheong">충청북도 </li>
				         <li id ="sChungcheong">충청남도 </li>
				         <li id ="nJeolla">전라북도 </li>
				         <li id ="sJeolla">전라남도 </li>
				         <li id ="nGyeongsang">경상북도 </li>
				         <li id ="sGyeongsang">경상남도 </li>
				         <li id ="jeju">제주특별자치도 </li>
				         <li id ="foreignCountry">해외</li>
				      </ul>
				    
				</header>
				<div id="main-section">
				
				
				<ul id="cardContainer">
				<c:forEach var="vo" items="${projectCardList }">
				<li class="projectCard">
				   <div class="cardTop">
				        <div class="cardCom01">
				        	<p class="districtOfProject">${vo.district } / </p>
				        	<p class="category">${vo.category }</p>
				            <p class="title"><a href="${vo.rbno }">${vo.title }</a></p>
				            <p class="pname">${vo.pname }</p>
				        </div>
				        <p class="cardCom02"> 조회수 ${vo.recruit_hits }
				            <br>
				            <br>모집마감일
				            <fmt:formatDate value="${vo.rcend }" pattern="yyyy.MM.dd" var="rcend"/>
				            <br>${rcend } </p>
				    </div>
				    <p class="intro">${vo.intro }</p>
				    <div class="cardCom03">
				        <p>요구기술</p>
				        <ul>
				        <c:forTokens var="skill" items="${vo.skills }" delims=",">
				            <li>${skill }</li>
				        </c:forTokens>
				        </ul>
				    </div>
				    <div class="cardCom04">
				        <p>모집역할</p>
				        <ul>
				        <c:forTokens var="part" items="${vo.parts }" delims=",">
				            <li>${part }</li>
				        </c:forTokens>
				        </ul>
				    </div>
				    <p class="cardCom05"></p>
				</li>
				</c:forEach>
				</ul>
				<form id="frm">
				   <input type="hidden" name="rbno">
				</form>
				
				</div><!-- end main-section -->


				<footer>footer</footer>
			
		
		</section>
		</div>
	<aside>날씨</aside>
	</div>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script type="text/javascript" src="../resources/js/projectList.js"></script>
	<script type="text/javascript" src="../resources/js/jquery-ui.min.js"></script>
</body>
</html>