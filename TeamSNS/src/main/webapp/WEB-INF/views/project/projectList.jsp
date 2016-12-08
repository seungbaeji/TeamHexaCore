<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="../resources/css/teamList.css" rel="stylesheet" type="text/css"></link>
</head>
<body>
<div class="districtset">
	<h4 style="font-family: 'Noto Sans KR'">지역선택</h4>
		<ul class="district">
			<li id ="all"><a href="projectList?districtList">전체선택</a></li>
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
</div>

<c:forEach var="vo" items="${projectCardList }">
<div class="cardlist" >
	<img id="logo" src="https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRmHEcuCodTRyqammU2sZxpkTwxSiKVBE9xEntM8LA6sd5qoRVd"
		alt =" 이미지 로딩 실패시 나타나는 설명">
	<div class="counts">
	<ul>
		<li>조회수: ${vo.recruit_hits }</li>
	</ul>
	</div>
	<div class="dates">
	<ul>
		<li>모집 시작일: ${vo.rcstart }</li>
		<li>모집 마감일: ${vo.rcend }</li>
	</ul>
	</div>	
	<h4 class="teamdesc"><a href="${vo.pid }">${vo.intro }</a></h4>
	<h5 class="teamname">${vo.pname }</h5>
	<div class="skillbox">
		<ul class="skills">
			<c:forTokens var="skill" items="${vo.skills }" delims=",">
			<li>${skill }</li>
			</c:forTokens>
		</ul>
	</div>
	<div class="memberbox">
		<table>
			<tr class="memberNames">
				<c:forTokens var="part" items="${vo.parts }" delims=",">
				<th>${part }</th>
				</c:forTokens>
<!-- 			</tr>
			<tr class="memberPhotos">
				<td><img src="http://writedirection.com/website/wp-content/uploads/2016/09/blank-profile-picture-973460_960_720.png" alt="참여자1"></td>
				<td><img src="http://writedirection.com/website/wp-content/uploads/2016/09/blank-profile-picture-973460_960_720.png" alt="참여자2"></td>
				<td><img src="http://writedirection.com/website/wp-content/uploads/2016/09/blank-profile-picture-973460_960_720.png" alt="참여자3"></td>
				<td><img src="http://writedirection.com/website/wp-content/uploads/2016/09/blank-profile-picture-973460_960_720.png" alt="참여자4"></td>
				<td><img src="http://writedirection.com/website/wp-content/uploads/2016/09/blank-profile-picture-973460_960_720.png" alt="참여자5"></td>
				<td><img src="http://writedirection.com/website/wp-content/uploads/2016/09/blank-profile-picture-973460_960_720.png" alt="참여자6"></td>
			</tr> -->
		</table>	
	</div>
</div>
</c:forEach>

<form id="frm">
	<input type="hidden" name="pid">
</form>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>
$(document).ready(function(){
	
	var districtObjects = {
		all : {name: "전체선택", toggle: 0},
		seoul: {name: "서울", toggle: 0}, 
		busan: {name: "부산", toggle: 0}, 
		daegu: {name: "대구", toggle: 0}, 
		inchen: {name: "인천", toggle: 0}, 
		gwangju: {name: "광주", toggle: 0}, 
		daejeon: {name: "대전", toggle: 0}, 
		ulsan: {name: "울산", toggle: 0}, 
		sejong: {name: "세종", toggle: 0}, 
		gyeonggi: {name: "경기", toggle: 0},
		gangwon: {name: "강원", toggle: 0},
		nChungcheong: {name: "충청북도", toggle: 0}, 
		sChungcheong: {name: "충청남도", toggle: 0}, 
		nJeolla: {name: "전라북도", toggle: 0}, 
		sJeolla: {name: "전라남도", toggle: 0},
		nGyeongsang: {name: "경상북도", toggle: 0},
		sGyeongsang: {name: "경상남도", toggle: 0},
		jeju: {name: "제주", toggle: 0}, 
		foreignCountry: {name: "해외", toggle: 0} 	
	} 
	
	var districts = [];

	$(".district li").click(function(){
		var target = $(this); // 클릭 했을때의 li
		var district = $(this).attr('id'); // li의 id에 입력된 string값
		districts = []; // 검색할 지역 리스트
		
		console.log(district);
		console.log(districtObjects[district].name + ', ' + districtObjects[district].toggle);
		var x = districtObjects[district].toggle;
		
		// 지역이름 색 바꾸기
		if (x == 0){
			changeColor1(target);
			districtObjects[district].toggle = 1;
		} else {
			changeColor2(target);
			districtObjects[district].toggle = 0;
		}
		
		// 선택한 지역이름 리스트로 저장하기
		for (var y in districtObjects){
			if (districtObjects[y].toggle == 1) {
				districts.push(districtObjects[y].name);
			}	
		}
		
		// 전체선택시 선택한 지역이름 리스트 비우기
		if (districtObjects.all.toggle == 1){
			districts = [];
		}
		console.log(districts);
		
		var url = "/teamsns/projects/" + districts;
		$.getJSON(url, function(result){
			console.log("프로젝트 개수:" + result.length);
			
		})
		
		
		
		
		
		
		
		
	});
	
	
	$('.teamdesc a').click(function() {
		var frm = $('#frm');
		event.preventDefault();
		var pid = $(this).attr("href");
		frm.find("[name='pid']").val(pid);
		frm.attr("action", "projectDetail");
		frm.attr("method", "get");
		frm.submit();
	});

});


function changeColor1(target){
		target.css('backgroundColor', 'lightblue');
		target.css('color', 'white');
}
	
function changeColor2(target){
		target.css('backgroundColor', 'white');
		target.css('color', 'black');
}

</script>
</body>
</html>