<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Team Card</title>
<style>
@import url(http://fonts.googleapis.com/earlyaccess/jejugothic.css);
/*font-family: 'Jeju Gothic', sans-serif;*/
@import url(http://fonts.googleapis.com/earlyaccess/jejumyeongjo.css);
/*font-family: 'Jeju Myeongjo', serif;*/
@import url(http://fonts.googleapis.com/earlyaccess/jejuhallasan.css);
/*font-family: 'Jeju Hallasan', cursive;*/
@import url(http://fonts.googleapis.com/earlyaccess/kopubbatang.css);
/*font-family: 'KoPub Batang', serif;*/
@import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);
/*font-family: 'Nanum Gothic', sans-serif;*/
@import url(http://fonts.googleapis.com/earlyaccess/nanumbrushscript.css);
/*font-family: 'Nanum Brush Script', cursive;*/
@import url(http://fonts.googleapis.com/earlyaccess/nanumgothiccoding.css);
/*font-family: 'Nanum Gothic Coding', monospace;*/
@import url(http://fonts.googleapis.com/earlyaccess/nanumpenscript.css);
/*font-family: 'Nanum Pen Script', cursive;*/
@import url(http://fonts.googleapis.com/earlyaccess/notosanskr.css);
/*font-family: 'Noto Sans KR', sans-serif;*/
@import url(http://fonts.googleapis.com/earlyaccess/hanna.css);
/*font-family: 'Hanna', sans-serif;*/
@import url(http://fonts.googleapis.com/earlyaccess/nanummyeongjo.css);
/*font-family: 'Nanum Myeongjo', serif;*/


* {
	margin: 0px;
	padding: 0px;
	list-style: none;
}

body {
	margin: 16px;
}

div.districtset {
	margin-bottom: 20px;
}

div.cardlist {
	height: 170px; /* cardlist class의 높이 지정  */
	width: 500px;
	border : 1px solid gray; /* 외부 경계값 설정. 굵기, 선타입, 선색 */
	
	margin-left: auto;
	margin-right: auto;
	
	padding-left: 10px; /* border기준 안쪽으로 여백 주기  */
	padding-top: 10px;
	padding-right: 10px;
	
	box-shadow: 2px 2px 1px rgba(0, 0, 0, .2); /* 오른쪽, 위쪽, 그림자 범위, 그림자 색상(r, g, b, 흐림정도) */
	float: left; 	

}

#logo {
	display: inline;
	height: 50px;
	width: 50px;
	float: left;
}

h4.teamdesc {
	padding-left: 65px;
	font-family: 'Nanum Gothic';
}

h5.teamname {
	padding-top: 3px;
	padding-left: 65px;
	font-family: 'Nanum Gothic';
}

.district {
	margin-top: 5px;
	width: 500px;
	font-size: 12px;
	margin-bottom: 5px;
}

.district li {
	display: inline;
	border: 1px solid gray;
	box-shadow: 2px 2px 1px rgba(0, 0, 0, .2);
	margin-right: 5px;
	padding: 0px 3px 0px 3px;
}
.skillbox {
	margin-top: 20px;
}
.skills li {
	display: inline;
	border: 1px solid gray;
	font-size: 12px;
	padding: 0px 3px 0px 3px; /* 상 우 하 좌, 시계방향 */
	box-shadow: 2px 2px 1px rgba(0, 0, 0, .2)
}

.memberbox{
	margin-top: 20px;
}
.members li {
	display: inline;
	border: 1px solid gray;
	font-size: 12px;
	padding: 0px 3px 0px 3px;
	box-shadow: 2px 2px 1px rgba(0, 0, 0, .2)
}

.dates li {
	font-size: 12px;
	float: right;
}

.counts li{
	font-size: 12px;
	float: right;
}

</style>
</head>
<body>
<div class="districtset">
<h4 style="font-family: 'Noto Sans KR'">지역선택</h4>
<ul class="district">
	<li>서울특별시 </li>
	<li>부산광역시 </li>
	<li>대구광역시 </li>
	<li>인천광역시 </li>
	<li>광주광역시 </li>
	<li>대전광역시 </li>	
</ul>
<ul class="district">
	<li>울산광역시 </li>
	<li>세종특별자치시 </li>
	<li>경기도 </li>
	<li>강원도 </li>
	<li>충청북도 </li>
	<li>충청남도 </li>
</ul>
<ul class="district">
	<li>전라북도 </li>
	<li>전라남도 </li>
	<li>경상북도 </li>
	<li>경상남도 </li>
	<li>제주특별자치도 </li>
	<li>해외</li>
</ul>
</div>
<div class="cardlist">
	<img id="logo" src="https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRmHEcuCodTRyqammU2sZxpkTwxSiKVBE9xEntM8LA6sd5qoRVd"
		alt =" 이미지 로딩 실패시 나타나는 설명">
	<div class="counts">
	<ul>
		<li>조회수</li>
	</ul>
	</div>
	<div class="dates">
	<ul>
		<li>마감일: 2016.12.14</li>
		<li>등록일: 2016.11.18</li>
	</ul>
	</div>	
	<h4 class="teamdesc">팀 한줄 설명이 입력됩니다.</h4>
	<h5 class="teamname">팀 이름이 입력됩니다.</h5>
	<div class="skillbox">
		<ul class="skills">
			<li>php</li>
			<li>java</li>
			<li>css</li>
			<li>python</li>
			<li>html</li>
			<li>photoShop</li>
			<li>dreamWeaver</li>
			<li>matlab</li>
			<li>potran</li>
			<li>c#</li>
			<li>unity</li>
			<li>dreamWeaver</li>
			<li>matlab</li>
			<li>potran</li>
			<li>c#</li>
			<li>unity</li>
		</ul>
	</div>
	<div class="memberbox">
		<ul class="members">
			<li>참여자1</li>
			<li>참여자2</li>
			<li>참여자3</li>
			<li>참여자4</li>
			<li>참여자5</li>
			<li>참여자6</li>
		</ul>
	</div>
</div>




</body>
</html>