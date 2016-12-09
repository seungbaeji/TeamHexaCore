<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html >
<html>
<head>
    <meta charset="UTF-8">
    <title>Main Page</title>

<link rel="stylesheet" href="../resources/realcss/sidemenu.css"/>

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>

    <style>
        *{
            margin: 0;
            padding: 0;
        }
        
        #projectInfo{
            position: relative;
            display: block;
            margin-left: auto;
            margin-right: auto;
        }
        
        .projectList{
            position: fixed;
            left: 250px;
            width: 900px;
            height: 500px;
            border: 1px solid black;
        }
        #project_start{
            width: 150px;
            margin-right: 0;
            
            position: relative;
        }
        #start_pro{
            margin-left: 25px;
        }
        
        #project_end{
            width: 150px;
            position: relative;
            left: -80px;
        }
        #pro_start{
            float: left;
            width: 400px;
            
        }
        #pro_end{
            margin-left: 25px; 
        }
        #project_start{
            left: -80px;
        }
        #project_recruit_start{
            width: 150px;
            
        }
        #project_recruit_end{
            width: 150px;
        }
        #label_project_date{
            float: left;
        }
        #label_project_recruit_date{
            margin-left: 400px;
            margin-right: 0;
        }
        #prostart-label{
            left: -50px;
        }
        #team_area{
            width: 200px;
        }
   
    </style>
</head>
<body>
   
<jsp:include page="../signup/include.jsp" flush="false"></jsp:include>


<div class="projectList">
    <table class="table table-hover table-borerd">
         <tr>
             <td>카테고리</td>
             <td>프로젝트 이름</td>
             <td>프로젝트 소개</td>
             <td>시작일</td>
             <td>종료일</td>
         </tr>
		 <c:forEach var ="vo" items="${projectList}">
		 <tr id="${vo.rbno}" data-target="#myprojectModal" data-toggle="modal" class="projectOne">
		 	<td>${vo.category}</td>
		 	<td>${vo.pname}</td>
		 	<td>${vo.intro}</td>
		 	<td>${vo.start}</td>
		 	<td>${vo.end}</td>
		 	
		 </tr>
		 </c:forEach>
		   
    </table>
    
</div>    
    
    <!-- 모달 팝업 -->
	<div class="modal fade bs-example-modal-lg" id="myprojectModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
	  <div class="modal-dialog modal-lg">
	    <div class="modal-content">
	      <div class="modal-header">
		<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
		<h4 class="modal-title" id="myModalLabel">팀관리</h4>
	      </div>
	      <div class="modal-body">
              <label class="label label-default">프로젝트 제목</label>
		        <input class="form-control" type="text" id="team_info_name" 
				name="title" value="${dto.recruit.title }"/>
              <label class="label label-default">프로젝트 이름</label>
                <input class="form-control" type="text" id="team_name" 
				name="pname"  value="${dto.project.pname }"/>
              <label class="label label-default">카테고리</label>
                <input class="form-control" type="text" id="team_category"
				name="category" value="${dto.project.category }"/>
              <label for="team_intro" class="label label-default" id="label_team_intro">프로젝트 소개</label>
              <textarea class="form-control" id="team_intro" cols="50" rows="5"
				name="intro">${dto.project.intro }</textarea>             
              <label class="label label-default" id="label_project_date">프로젝트 기간</label>
              <label class="label label-default" id="label_project_recruit_date">모집 기간</label>
              <br>
              
              <div id="pro_start">
              <label  id="start_pro" class="label label-info day">시작일</label>
              <input type="text" id="project_start" class="form-control" name="start" value=""> 
				
              <label  id="pro_end" class="label label-info day">종료일</label>
              <input type="text" id="project_end" class="form-control" 
				name="end" value="">
              </div>
              
                  
              <div>
                  
            <label id="prostart-label" class="label label-info day">시작일</label>
			<input type="text" id="project_recruit_start" class="form-control datepicker" 
				value = ""> 
			<label class="label label-info day">종료일</label>
			<input type="text" id="project_recruit_end" class="form-control datepicker" 
				value=""/>
			</div>
               <label class="label label-default">활동 구역</label>
			<input class="form-control" type="text" name="district"
				value="${dto.project.district }" id="team_area">
           <label class="label label-default" id="label_team_part">모집 팀원 역할</label>
           <div>
					<c:forEach var="parts" items="${dto.parts }">
						<input type="text" class="form-control team_part" maxlength="20" 
							name="part" value="${parts.part }">
					</c:forEach>
                    <!-- <input type="text" class="form-control team_part" maxlength="20" name="team_part_1" id="team_part_1">
                    <input type="text" class="form-control team_part" maxlength="20" name="team_part_2">
                    <input type="text" class="form-control team_part" maxlength="20" name="team_part_3">
                    <input type="text" class="form-control team_part" maxlength="20" name="team_part_4">
                    <input type="text" class="form-control team_part" maxlength="20" name="team_part_5">
                    <input type="text" class="form-control team_part" maxlength="20" name="team_part_6"> -->
				</div> <br>
                  <label for="required_skill" class="label label-default" id="label_required_skill">업무관련 기술태그</label>
                   
                   <div>
					<input type="text" class="form-control required_skill" maxlength="10" id="required_skill" name="required_skill_1"
                    	value="${dto.skills.skill_1 }"/>
					<input type="text" class="form-control required_skill" maxlength="10" id="required_skill_2" name="required_skill_2"
                    	value="${dto.skills.skill_2 }"/>
					<input type="text" class="form-control required_skill" maxlength="10" id="required_skill_3" name="required_skill_3"
						value="${dto.skills.skill_3 }"/>
					<input type="text" class="form-control required_skill" maxlength="10" id="required_skill_4" name="required_skill_4"
						value="${dto.skills.skill_4 }"/>
					<input type="text" class="form-control required_skill" maxlength="10" id="required_skill_5" name="required_skill_5"
						value="${dto.skills.skill_5 }"/>
					<input type="text" class="form-control required_skill" maxlength="10" id="required_skill_6" name="required_skill_6"
						value="${dto.skills.skill_6 }"/>
					<input type="text" class="form-control required_skill" maxlength="10" id="required_skill_7" name="required_skill_7"
						value="${dto.skills.skill_7 }"/>
					<input type="text" class="form-control required_skill" maxlength="10" id="required_skill_8" name="required_skill_8"
						value="${dto.skills.skill_8 }"/>
					<input type="text" class="form-control required_skill" maxlength="10" id="required_skill_9" name="required_skill_9"
						value="${dto.skills.skill_9 }"/>
					<input type="text" class="form-control required_skill" maxlength="10" id="required_skill_10" name="required_skill_10"
						value="${dto.skills.skill_10 }"/>
				</div>
            </div>                
	      </div>
	      <div class="modal-footer">
		<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		<button type="button" class="btn btn-primary">Save changes</button>
	      </div>
	    </div>
	  </div>

   
            

    
    
    
    
    
    
    
    
    
    
    
    
    
   
    
    
    
    <script>
                
        $(document).ready(function(){
        	$('.logout').click(function(){
				alert('${login_id}님 로그아웃 되셧습니다!');
				location = '/teamsns/signup/logout';
			});
        	
        	$('#project-register').click(function(){
				location = '/teamsns/register/project-register';
			});
        	
        	$("tr").click(function(){
        		
    			var rbno = $(this).attr('id');
    			console.log(rbno);
    			
    			var url = '/teamsns/project/all/' + rbno;
    			
    			$.getJSON(url,callProject);
    			
    			function callProject(result){
    				
    				var title = result.recruit.title;
    				var pname = result.project.pname;
    				var category = result.project.category;
    				var intro = result.project.intro;
    				
    				var district = result.project.district;
    				
    				var start = result.project.start;
    				var newStart = new Date(start);
    				var end = result.project.end;
    				var rcstart = result.recruit.rcstart;
    				var rcend = result.recruit.rcstart
    				
    				var skill1 = result.skills.skill_1;
    				var skill2 = result.skills.skill_2;
    				var skill3 = result.skills.skill_3;
    				var skill4 = result.skills.skill_4;
    				var skill5 = result.skills.skill_5;
    				var skill6 = result.skills.skill_6;
    				var skill7 = result.skills.skill_7;
    				var skill8 = result.skills.skill_8;
    				var skill9 = result.skills.skill_9;
    				var skill10 = result.skills.skill_10;
    				
    				
    				console.log(result);
    				console.log("타이틀" + title);
    				console.log(start);
    				console.log(end);
    				console.log(rcstart);
    				console.log(rcend);
    				
    				$('#team_info_name').val(title);
    				$('#team_name').val(pname);
    				$('#team_category').val(category);
    				$('#team_intro').val(intro);
    				
    				$('#team_area').val(district);
    				
    				$('#project_start').val(newStart);
    				$('#project_end').val(end);
    				$('#project_recruit_start').val();
    				$('#project_recruit_end').val();
    				
    				$('#required_skill').val(skill1);
    				$('#required_skill_2').val(skill2);
    				$('#required_skill_3').val(skill3);
    				$('#required_skill_4').val(skill4);
    				$('#required_skill_5').val(skill5);
    				$('#required_skill_6').val(skill6);
    				$('#required_skill_7').val(skill7);
    				$('#required_skill_8').val(skill8);
    				$('#required_skill_9').val(skill9);
    				$('#required_skill_10').val(skill10);
    			};
    			
    			
        		
                /* $('#projectOne').attr('data-target','#myprojectModal');
                $('#projectOne').attr('data-toggle','modal'); */
                
            });
        	
        });
        
        
        
    </script>
</body>
</html>