<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Team Card</title>
<style>
div.cardlist {
	height: 200px; /* cardlist class의 높이 지정  */
	border : 1px solid gray; /* 외부 경계값 설정. 굵기, 선타입, 선색 */
	
	padding-left: 10px; /* border기준 안쪽으로 여백 주기  */
	padding-top: 10px;
	
	box-shadow: 2px 2px 1px rgba(0, 0, 0, .2); /* 오른쪽, 위쪽, 그림자 범위, 그림자 색상(r, g, b, 흐림정도) */ 	
}

p.title{
	margin: 0px; /* 기본으로 설정되어 있던 16px의 margin을 삭제 */
	height: 50px;
}

img.logo {
	float: left;
	height: 50px;
	width: 50px;

}


</style>
</head>
<body>

<div class="cardlist">
	<p class ="title"> 
		<img class="logo" src="https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRmHEcuCodTRyqammU2sZxpkTwxSiKVBE9xEntM8LA6sd5qoRVd"
		alt =" 이미지 로딩 실패시 나타나는 설명">
	<div class="teamdesc">팀 한줄 설명이 입력됩니다.</div>
	<div class="teamname">팀 이름이 입력됩니다.</div>
	<p>
	
	
	</p>
</div>



</body>
</html>