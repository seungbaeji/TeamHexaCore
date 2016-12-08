<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <title>프로젝트 정보</title>
    <!-- 부트스트랩 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>
<!-- name 목록

-->
<style>
    body {
        width: 1400px;
    }
    
    #div_info_list_main {
        width: 800px;
        border: solid;
        margin: 20px;
        float: left;
    }
    
    #div_info_list_main > div {
        margin: 20px;
        font-size: 20px;
    }
    
    .team_part {
        width: 420px;
    }
    
    #form_team_part {
        width: 350px;
    }
    
    #team_part_1 {
        background-color: goldenrod;
    }
    
    .required_skill {
        width: 240px;
        display: inline-block;
    }
    
    #content {
        overflow: hidden;
    }
    
    aside {
        position: fixed;
        right: 20px;
        top: 20px;
        width: 520px;
        margin: 20px;
        background-color: aqua;
        font-size: 20px;
    }
    
    aside > div {
        margin: 20px;
        font-size: 20px;
    }
    
    table {
        font-size: 15px;
    }
    
    .table_member_name {
        width: 80px;
    }
    
    #table_leader_phone {
        width: 100px;
    }
    
    #table_member_part {
        width: 320px;
    }
    
    .date {
        width: 200px;
    }
    
    #team_name {
        width: 480px;
    }
    
    #team_category {
        width: 300px;
    }
    
    #team_area {
        width: 200px;
    }
    
    #team_info_name {
        height: auto;
        font-size: 40px;
    }
</style>

<body>
    <div id="content">
        <div id="div_info_list_main">
            <div>
                <input class="form-control" type="text" name="" id="team_info_name" placeholder="모집글 제목">
                <br>
                <label class="label label-default">프로젝트 이름</label>
                <input class="form-control" type="text" name="" id="team_name">
                <br>
                <label class="label label-default">카테고리</label>
                <input class="form-control" type="text" name="" id="team_category">
                <br>
                <div id="div_team_intro">
                    <label for="team_intro" class="label label-default" id="label_team_intro">프로젝트 소개</label>
                    <br>
                    <textarea class="form-control" name="team_intro" id="team_intro" cols="50" rows="5"></textarea>
                </div>
                <br>
                <div>
                    <label class="label label-default" id="label_project_date">프로젝트 기간</label>
                    <br>
                    <div class="form-group form-inline">
                        <label class="label label-info day">시작일</label>
                        <input type="text" id="project_start" class="form-control" name="project_start"> ~
                        <label class="label label-info day">종료일</label>
                        <input type="text" id="project_end" class="form-control" name="project_end"> </div>
                </div>
                <br>
                <hr style="border: solid 1px black;">
                <div>
                    <label class="label label-default" id="label_project_recruit_date">모집 기간</label>
                    <br>
                    <div class="form-group form-inline">
                        <label class="label label-info day">시작일</label>
                        <input type="text" id="project_recruit_start" class="form-control datepicker" name="project_recruit_start"> ~
                        <label class="label label-info day">종료일</label>
                        <input type="text" id="project_recruit_end" class="form-control datepicker" name="project_recruit_end"> </div>
                </div>
                <br>
                <label class="label label-default">활동 구역</label>
                <input class="form-control" type="text" name="" id="team_area"> </div>
            <br>
            <div>
                <label class="label label-default" id="label_team_part">모집 팀원 역할</label>
                <div>
                    <input type="text" class="form-control team_part" maxlength="20" name="team_part_1" id="team_part_1">
                    <input type="text" class="form-control team_part" maxlength="20" name="team_part_2">
                    <input type="text" class="form-control team_part" maxlength="20" name="team_part_3">
                    <input type="text" class="form-control team_part" maxlength="20" name="team_part_4">
                    <input type="text" class="form-control team_part" maxlength="20" name="team_part_5">
                    <input type="text" class="form-control team_part" maxlength="20" name="team_part_6"> </div>
            </div>
            <br>
            <div>
                <label for="required_skill" class="label label-default" id="label_required_skill">업무관련 기술태그</label>
                <div>
                    <input type="text" class="form-control required_skill" maxlength="10" id="required_skill" name="required_skill_1">
                    <input type="text" class="form-control required_skill" maxlength="10" name="required_skill_2">
                    <input type="text" class="form-control required_skill" maxlength="10" name="required_skill_3">
                    <input type="text" class="form-control required_skill" maxlength="10" name="required_skill_4">
                    <input type="text" class="form-control required_skill" maxlength="10" name="required_skill_5">
                    <input type="text" class="form-control required_skill" maxlength="10" name="required_skill_6">
                    <input type="text" class="form-control required_skill" maxlength="10" name="required_skill_7">
                    <input type="text" class="form-control required_skill" maxlength="10" name="required_skill_8">
                    <input type="text" class="form-control required_skill" maxlength="10" name="required_skill_9">
                    <input type="text" class="form-control required_skill" maxlength="10" name="required_skill_10"> </div>
            </div>
            <br>
            <div> <a href="#" class="btn btn-primary btn-lg" role="button">목록으로</a> </div>
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
                        <td>누구ㅁㅁ</td>
                        <th>ID</th>
                        <td>abcd@abcd.com</td>
                        <td>0100100100</td>
                    </tr>
                </table>
            </div>
            <br>
            <div>
                <label class="label label-default">모집 팀원 현황</label>
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
            <br>
            <hr>
            <div>
                <form action="">
                    <div class="form-group">
                        <label for="form_team_part" class="label label-default">모집 팀원 역할</label>
                        <input type="text" class="form-control" id="form_team_part" name="" maxlength="20" placeholder="역할을 입력하시오"> </div>
                    <input type="submit" class="btn btn-primary btn-lg" value="지원하기"> </form>
            </div>
        </aside>
    </div>
    <script>
        $(document).ready(function () {
            $('input').attr("readonly", "readonly");
            $('textarea').attr("readonly", "readonly");
            $('#form_team_part').attr("readonly", false);
            /* 글자수 체크1 */
            $('#form_team_part').keyup(function () {
                if ($(this).val().length > $(this).attr('maxlength')) {
                    alert('제한길이 초과');
                    $(this).val($(this).val().substr(0, $(this).attr('maxlength')));
                }
            });
        });
    </script>
</body>

</html>