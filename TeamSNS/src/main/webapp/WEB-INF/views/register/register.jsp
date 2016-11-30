<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--
<< name 목록 >>
팀 이름 : team_name
팀 소개 : team_intro
프로젝트 기간
    시작일 : project_start
    종료일 : project_end
프로젝트 분야 : project_category
주요 업무(프로젝트 소개) : project_intro
모집 팀원 역할 : team_part
업무관련 기술태그 : required_skill
주요 활동 지역 : team_area
팀장 연락처 : user_number
팀장 이메일 : user_email
-->
<html>
<head>
    <meta charset="UTF-8">
    <title>TeamRegi</title>
    <!-- 부트스트랩 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <!-- 달력 -->
    <link rel="stylesheet" href="/resources/demos/style.css">
    <!-- 달력 -->
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <!-- 달력 -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>
<style>
    #main-div {
        width: 80em;
        border: solid;
    }
    
    form > div {
        margin: 20px;
        font-size: 25px;
    }
    
    .form-control {
        font-size: 20px;
    }
    
    .day,
    .leader {
        /* 시작일 / 종료일, 팀장 전화번호 / 이메일 라벨 */
        font-size: 15px;
    }
    
    #start-day,
    #end-day {
        width: 6em;
        font-size: 20px;
    }
    
    #label-leader-email {
        margin-right: 8px;
    }
    
    #team-area {
        width: 19em;
        font-size: 20px;
    }
</style>

<body>
    <div id="main-div">
        <form action="register" method="post">
            <div class="form-group form-inline" id="div-team-name">
                <label for="team_name" class="label label-default">팀 이름</label>
                <input type="text" class="form-control" id="team_name" name="team_name" placeholder="Hexa_Core"> </div>
            <br>
            <div id="div-team-info">
                <label for="team_intro" class="label label-default" id="label-team-info">팀 소개</label>
                <br>
                <textarea name="team_intro" id="team_intro" cols="30" rows="5"></textarea>
            </div>
            <br>
            <div>
                <label class="label label-default" id="label-project-date">프로젝트 기간</label>
                <br>
                <div class="form-group form-inline">
                    <label class="label label-info day">시작일</label>
                    <input type="text" id="project_start" class="form-control" name="project_start"> ~
                    <label class="label label-info day">종료일</label>
                    <input type="text" id="project_end" class="form-control" name="project_end"> </div>
            </div>
            <br>
            <div>
                <label class="label label-default" id="label-project-info">프로젝트 분야</label>
            </div>
            <br>
            <div>
                <label class="label label-default" id="label-member-part">모집 팀원 역할</label>
            </div>
            <br>
            <div>
                <label class="label label-default" id="label-member-main-biz">주요 업무</label>
            </div>
            <br>
            <div>
                <label class="label label-default" id="label-member-tech">업무관련 기술태그</label>
            </div>
            <br>
            <div class="form-group">
                <label class="label label-default" id="label-team-area">주요 활동 지역</label>
                <br>
                <input type="text" id="team-area" class="form-control"> </div>
            <br>
            <div class="form-group">
                <label for="leader-index" class="label label-default">팀장 연락처</label>
                <br>
                <div class="form-inline">
                    <label for="leader-phone" class="label label-info leader" id="label-leader-phone">phone</label>
                    <input type="text" class="form-control" id="leader-phone" value="01020020290" > </div>
                <div class="form-inline">
                    <label for="leader-email" class="label label-info leader" id="label-leader-email" >email</label>
                    <input type="text" class="form-control" id="leader-email" value="m4003811@gmail.com" > </div>
            </div>
            <br>
            <div>
                <input type="submit" class="btn btn-primary btn-lg" value="등록하기"> </div>
        </form>
    </div>
    <script>
        $(document).ready(function () {
            $("#project_start, #project_end").datepicker({
                dateFormat: 'yymmdd'
                , monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월']
                , dayNamesMin: ['일', '월', '화', '수', '목', '금', '토']
                , changeMonth: true, //월변경가능
                changeYear: true, //년변경가능
                showMonthAfterYear: true //년 뒤에 월 표시
            });
        })
        $(function () {});
    </script>
</body>
</html>