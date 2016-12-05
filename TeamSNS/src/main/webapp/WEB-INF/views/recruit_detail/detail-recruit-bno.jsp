<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로젝트 상세보기</title>

<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/detail-recruit-style.css" />
<!-- 부트스트랩 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>
<body>
	<div id="content">
        <div id="div_info_list_main">
            <div>
 
                <label class="label label-default">프로젝트 이름</label>
                <input class="form-control" type="text" name="pname" value="${dto.project.pname }">
                <br/>
                <label class="label label-default">카테고리</label>
                <input class="form-control" type="text" name="category" value="${dto.project.category }">
                <br>
                <label class="label label-default">모집 기간</label>
                <input class="form-control date" type="text" name="start_recruit"
                value="<fmt:formatDate value="${dto.recruit.start }" pattern="yy-MM-dd" />"> ~
                <input class="form-control date" type="text" name="end_recruit"
                value="<fmt:formatDate value="${dto.recruit.end }" pattern="yy-MM-dd" />">
                <br>
                <label class="label label-default">활동 구역</label>
                <input class="form-control" type="text" name="district" value="${dto.project.district }"> </div>
            <div id="div_team_intro">
                <label for="team_intro" class="label label-default" id="label_team_intro">프로젝트 소개</label>
                <br>
                <textarea class="form-control" name="team_intro" id="team_intro" cols="50" rows="5">${dto.project.intro }</textarea>
            </div>
            <div>
                <label class="label label-default" id="label_team_part">모집 팀원 역할</label>
                <div>
                	<c:forEach var="parts" items="${dto.parts }">
                	<input type="text" class="form-control team_part" maxlength="20" name="team_parts"
                	value="${parts.part }"/>
                	</c:forEach>
                    <!-- <input type="text" class="form-control team_part" maxlength="20" name="team_part_1" id="team_part_1">
                    <input type="text" class="form-control team_part" maxlength="20" name="team_part_2">
                    <input type="text" class="form-control team_part" maxlength="20" name="team_part_3">
                    <input type="text" class="form-control team_part" maxlength="20" name="team_part_4">
                    <input type="text" class="form-control team_part" maxlength="20" name="team_part_5">
                    <input type="text" class="form-control team_part" maxlength="20" name="team_part_6"> --> </div>
            </div>
            <div>
                <label for="required_skill" class="label label-default" id="label_required_skill">업무관련 기술태그</label>
                <div>
                    <input type="text" class="form-control required_skill" maxlength="10" id="required_skill" name="required_skill_1"
                    value="${dto.skills.skill_1 }">
                    <input type="text" class="form-control required_skill" maxlength="10" name="required_skill_2"
                    value="${dto.skills.skill_2 }">
                    <input type="text" class="form-control required_skill" maxlength="10" name="required_skill_3"
                    value="${dto.skills.skill_3 }">
                    <input type="text" class="form-control required_skill" maxlength="10" name="required_skill_4"
                    value="${dto.skills.skill_4 }">
                    <input type="text" class="form-control required_skill" maxlength="10" name="required_skill_5"
                    value="${dto.skills.skill_5 }">
                    <input type="text" class="form-control required_skill" maxlength="10" name="required_skill_6"
                    value="${dto.skills.skill_6 }">
                    <input type="text" class="form-control required_skill" maxlength="10" name="required_skill_7"
                    value="${dto.skills.skill_7 }">
                    <input type="text" class="form-control required_skill" maxlength="10" name="required_skill_8"
                    value="${dto.skills.skill_8 }">
                    <input type="text" class="form-control required_skill" maxlength="10" name="required_skill_9"
                    value="${dto.skills.skill_9 }">
                    <input type="text" class="form-control required_skill" maxlength="10" name="required_skill_10"
                    value="${dto.skills.skill_10 }"> </div>
            </div>
        </div>
        <aside>
            <div>
                <label class="label label-default">팀장</label>
                <table class="table">
                    <tr>
                        <th class="table_member_name">이름</th>
                        <th>ID</th>
                        <th>EMAIL</th>
                        <th id="table_leader_phone">PHONE</th>
                    </tr>
                    <tr>
                        <td>${dto.team_leader.name}</td>
                        <th>${dto.team_leader.kkoid }</th>
                        <td>${dto.team_leader.email }</td>
                        <td>${dto.team_leader.phone }</td>
                    </tr>
                </table>
            </div>
            <br>
            <br>
            <div>
                <label class="label label-default">멤버 모집 현황</label>
                <table class="table">
                    <tr>
                        <th class="table_member_name">이름</th>
                        <th>ID</th>
                        <th id="table_member_part">역할</th>
                    </tr>
                    <tr>
                        <td>누구ㅁㅁ</td>
                        <th>ㅁㅁㅁㅁ</th>
                        <td>ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ</td>
                    </tr>
                </table>
            </div>
            <div>
                <button type="button" class="btn btn-primary">지원하기</button>
            </div>
        </aside>
    </div>
    <script>
        $(document).ready(function () {
            $('input').attr("readonly", "readonly");
            $('textarea').attr("readonly", "readonly");
        });
    </script>
    
</body>
</html>