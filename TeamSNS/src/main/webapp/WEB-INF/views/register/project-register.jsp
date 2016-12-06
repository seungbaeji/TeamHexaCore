<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<!--
<< name 목록 >>
팀 이름 : team_name
팀 소개 : team_info
프로젝트 기간
    시작일 : project_start
    종료일 : project_end
프로젝트 분야 : team_category
모집 팀원 역할 : team_part
주요 업무(프로젝트 소개) : project_intro
업무관련 기술태그 : required_skill
주요 활동 지역 : team_area
팀장 연락처 : user_number
팀장 이메일 : user_email
<< id 목록 >>
category_study
category_contest
-->

<head>
<meta charset="UTF-8">
<title>TeamRegi</title>
<!-- 부트스트랩 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<!-- 달력 -->
<link rel="stylesheet" href="/resources/demos/style.css">
<!-- 달력 -->
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<!-- 달력 -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>
<style>
#team_register_main_div {
	width: 800px;
	border: solid;
	margin: 20px;
}

form>div {
	margin: 20px;
	font-size: 25px;
}

h1 {
	background-color: aquamarine;
}

.form-control {
	font-size: 20px;
}

#team_name {
	width: 480px;
}

.day, .leader {
	/* 시작일 / 종료일, 팀장 전화번호 / 이메일 라벨  / 카카오톡 */ 
	font-size: 15px;
}

#project_start, #project_end, #project_recruit_start,
	#project_recruit_end {
	width: 6em;
	font-size: 20px;
}

#label_user_email {
	margin-right: 8px;
}

#team_area {
	width: 19em;
	font-size: 20px;
}

.team_part {
	width: 420px;
}

.required_skill {
	width: 240px;
	display: inline-block;
}

#team_part_1 {
	background-color: goldenrod;
}

.category_type1 {
	width: 150px;
}
</style>

<body>
	<div id="team_register_main_div">
		<form action="project-register" method="post">
			<div>
				<h1>프로젝트 등록</h1>
				<br>
				<div class="form-group form-inline" id="div-team-name">
					<label for="team_name" class="label label-default">프로젝트 이름</label>
					<br> <input type="text" class="form-control" id="team_name"
						name="pname" placeholder="Hexa_Core 25자 내로 작성" maxlength="25"
						required>
				</div>
				<br>
				<div class="form-group form-inline" id="div_team_category">
					<label for="info_category" class="label label-default">프로젝트 분야</label> <br>
					<div class="input-group category_type1">
						<span class="input-group-addon"> 
						<input type="radio" name="category" value="스터디"
							onclick="this.form.team_category_etc.disabled=true" aria-label="">
						</span> <input type="text" class="form-control"
							aria-label="" value="스터디" disabled="true">
					</div>
					<div class="input-group category_type1">
						<span class="input-group-addon"> <input type="radio"
							name="category" value="공모전"
							onclick="this.form.team_category_etc.disabled=true" aria-label="">
						</span> <input type="text" class="form-control"
							aria-label="" value="공모전" disabled="true">
					</div>
					<!-- team_category=etc & team_category_etc = 텍스트값 -->
					<div class="input-group">
						<span class="input-group-addon"> <input type="radio"
							name="category" value="etc"
							onclick="this.form.team_category_etc.disabled=false"
							aria-label="">
						</span> <input type="text" name="category_etc"
							class="form-control category_type2" aria-label=""
							placeholder="기타" disabled="true">
					</div>
				</div>
				<br>
				<div id="div_team_intro">
					<label for="team_intro" class="label label-default"
						id="label_team_intro">프로젝트 소개</label> <br>
					<textarea name="intro" id="team_intro" cols="50" rows="5"
						onkeyup="javascript:fnChkByte(this,'500')"></textarea>
					<span id="byteInfo">0</span>/500Byte
				</div>
				<div>
					<label class="label label-default" id="label_project_date">프로젝트 기간</label>
					<div class="form-group form-inline">
						<label class="label label-info day">시작일</label> 
						<input type="text" id="project_start" class="form-control datepicker" name="start"> ~ 
						<label class="label label-info day">종료일</label> 
						<input type="text" id="project_end" class="form-control datepicker" name="end">
					</div>
				</div>
				<br>
				<hr style="border: solid 1px black;">
				<div>
					<div class="form-group form-inline" id="div_recruit_name">
						<label for="team_name" class="label label-default">모집글 제목</label>
						<br> <input type="text" class="form-control"
							id="team_recruit_name" name="title"
							placeholder="Hexa_Core 25자 내로 작성" maxlength="25" required>
					</div>
					<br> <label class="label label-default"
						id="label_project_recruit_date">모집 기간</label> <br>
					<div class="form-group form-inline">
						<label class="label label-info day">시작일</label> 
						<input type="text" id="project_recruit_start" class="form-control datepicker" name="rcstart"> ~ 
						<label class="label label-info day">종료일</label> 
						<input type="text" id="project_recruit_end" class="form-control datepicker" name="rcend">
					</div>
				</div>
				<br>
				<div>
					<label class="label label-default" id="label_team_part">모집 팀원 역할</label>
					<div>
						<input type="text" class="form-control team_part" maxlength="20" name="part1" id="team_part_1" placeholder="팀장 역할"> 
						<input type="text" class="form-control team_part" maxlength="20" name="part2">
						<input type="text" class="form-control team_part" maxlength="20" name="part3"> 
						<input type="text" class="form-control team_part" maxlength="20" name="part4">
						<input type="text" class="form-control team_part" maxlength="20" name="part5"> 
						<input type="text" class="form-control team_part" maxlength="20" name="part6">
					</div>
				</div>
				<br>
				<div>
					<label for="required_skill" class="label label-default" id="label_required_skill">업무관련 기술태그</label>
					<div>
						<input type="text" class="form-control required_skill" maxlength="10" name="skill_1"> 
						<input type="text" class="form-control required_skill" maxlength="10" name="skill_2"> 
						<input type="text" class="form-control required_skill" maxlength="10" name="skill_3"> 
						<input type="text" class="form-control required_skill" maxlength="10" name="skill_4"> 
						<input type="text" class="form-control required_skill" maxlength="10" name="skill_5"> 
						<input type="text" class="form-control required_skill" maxlength="10" name="skill_6"> 
						<input type="text" class="form-control required_skill" maxlength="10" name="skill_7"> 
						<input type="text" class="form-control required_skill" maxlength="10" name="skill_8"> 
						<input type="text" class="form-control required_skill" maxlength="10" name="skill_9"> 
						<input type="text" class="form-control required_skill" maxlength="10" name="skill_10">
					</div>
				</div>
				<br>
				<div class="form-group">
					<label class="label label-default" id="label-team-area">주요
						활동 지역</label> <br> <select name="district">
						<option value="전국" selected="selected">전국</option>
						<option value="서울">서울</option>
						<option value="부산">부산</option>
						<option value="대구">대구</option>
						<option value="인천">인천</option>
						<option value="광주">광주</option>
						<option value="대전">대전</option>
						<option value="울산">울산</option>
						<option value="제주">제주</option>
						<optgroup label="경기">
							<option value="경기-안양">안양</option>
							<option value="경기-부천">부천</option>
						</optgroup>
						<optgroup label="강원"></optgroup>
						<optgroup label="충북"></optgroup>
						<optgroup label="충남"></optgroup>
						<optgroup label="전북"></optgroup>
						<optgroup label="전남"></optgroup>
						<optgroup label="경북"></optgroup>
						<optgroup label="경남"></optgroup>
					</select>
				</div>
				<br>
				<div class="form-group">
					<label class="label label-default">팀장 연락처</label> <br>
					<div class="form-inline">
						<label for="user_number" class="label label-info leader" id="label_user_number">phone</label> 
						<input type="tel" class="form-control" id="user_number" value="01065534043" name="phone">
					</div>
					<div class="form-inline">
						<label for="user_email" class="label label-info leader" id="label_user_email">email</label> 
						<input type="email" class="form-control" id="user_email" value="itwill@it.com" name="email">
					</div>
					<div class="form-inline">
						<label for="user_kkoid" class="label label-info leader" id="label_user_kkoid">카카오톡 ID</label> 
						<input type="text" class="form-control" id="user_kkoid" value="hexacore" name="kkoid">
					</div>
				</div>
				<br>
				<div>
					<input type="submit" class="btn btn-primary btn-lg" value="등록하기">
				</div>
			</div>
		</form>
	</div>
	<script>
        /* 달력 */
        $(document).ready(function () {
            $(".datepicker").datepicker({
                dateFormat: 'yymmdd'
                , monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월']
                , dayNamesMin: ['일', '월', '화', '수', '목', '금', '토']
                , changeMonth: true, //월변경가능
                changeYear: true, //년변경가능
                showMonthAfterYear: true //년 뒤에 월 표시
            });
            /* 글자수 체크1 */
            $('#team_name, .team_part').keyup(function () {
                if ($(this).val().length > $(this).attr('maxlength')) {
                    alert('제한길이 초과');
                    $(this).val($(this).val().substr(0, $(this).attr('maxlength')));
                }
            });
        });
        /* 글자수 체크2 */
        function fnChkByte(obj, maxByte) {
            var str = obj.value;
            var str_len = str.length;
            var rbyte = 0;
            var rlen = 0;
            var one_char = "";
            var str2 = "";
            for (var i = 0; i < str_len; i++) {
                one_char = str.charAt(i);
                if (escape(one_char).length > 4) {
                    rbyte += 2; //한글2Byte
                }
                else {
                    rbyte++; //영문 등 나머지 1Byte
                }
                if (rbyte <= maxByte) {
                    rlen = i + 1; //return할 문자열 갯수
                }
            }
            if (rbyte > maxByte) {
                alert("한글 " + (maxByte / 2) + "자 / 영문 " + maxByte + "자를 초과 입력할 수 없습니다.");
                str2 = str.substr(0, rlen); //문자열 자르기
                obj.value = str2;
                fnChkByte(obj, maxByte);
            }
            else {
                document.getElementById('byteInfo').innerText = rbyte;
            }
        }
    </script>
</body>

</html>