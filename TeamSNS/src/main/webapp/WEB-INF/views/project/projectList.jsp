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
			<li>전체선택</li>
			<li>서울특별시 </li>
			<li>부산광역시 </li>
			<li>대구광역시 </li>
			<li>인천광역시 </li>
			<li>광주광역시 </li>
			<li>대전광역시 </li>	
			<li>울산광역시 </li>
			<li>세종특별자치시 </li>
			<li>경기도 </li>
			<li>강원도 </li>
			<li>충청북도 </li>
			<li>충청남도 </li>
			<li>전라북도 </li>
			<li>전라남도 </li>
			<li>경상북도 </li>
			<li>경상남도 </li>
			<li>제주특별자치도 </li>
			<li>해외</li>
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
		<li>등록일: ${vo.rcstart }</li>
		<li>마감일: ${vo.rcend }</li>
	</ul>
	</div>	
	<h4 class="teamdesc"><a href="">${vo.intro }</a></h4>
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
			</tr>
			<tr class="memberPhotos">
				<td><img src="http://writedirection.com/website/wp-content/uploads/2016/09/blank-profile-picture-973460_960_720.png" alt="참여자1"></td>
				<td><img src="http://writedirection.com/website/wp-content/uploads/2016/09/blank-profile-picture-973460_960_720.png" alt="참여자2"></td>
				<td><img src="http://writedirection.com/website/wp-content/uploads/2016/09/blank-profile-picture-973460_960_720.png" alt="참여자3"></td>
				<td><img src="http://writedirection.com/website/wp-content/uploads/2016/09/blank-profile-picture-973460_960_720.png" alt="참여자4"></td>
				<td><img src="http://writedirection.com/website/wp-content/uploads/2016/09/blank-profile-picture-973460_960_720.png" alt="참여자5"></td>
				<td><img src="http://writedirection.com/website/wp-content/uploads/2016/09/blank-profile-picture-973460_960_720.png" alt="참여자6"></td>
			</tr>
		</table>	
	</div>
</div>
</c:forEach>

</body>
</html>