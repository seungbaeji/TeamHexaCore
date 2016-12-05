<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="../resources/css/sidemenu.css"/>

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<style>
	   #container{
		position:fixed;
		left:250px;
		margin-left: 10px;
		width:1000px;
		height:100%;
		border: 1px solid black;
	}
        
        #tipHead{
            height: 100px;
            
        }
        #tip{
            width: 800px;
            float: left;
        }
        #btnNew{
            margin-top: 30px;
            
        }
        .table th{
            text-align:center;
        }
        #one{
            width: 60px;
        }
        #two{
            width: 300px;
        }
</style>
</head>
<body>
	<jsp:include page="../signup/include.jsp" flush="false"></jsp:include>
	
	<div id="container">
        <div id="tipHead">
            <h2 id="tip">Tip And Tech</h2> 
            <button id="btnNew" type="button" class="btn btn-primary">새 글 쓰기</button>
            
        </div>
        
        <table class="table table-bordered ">
          <tr>
             <th id="one">글번호</th>
             <th id="two">제목</th>
             <th id="three">작성자</th>
             <th id="four">작성일</th>
             <th id="five">추천수</th>
             <th id="six">좋아요</th>
             
          </tr>
           <c:forEach var = "VO" items="${tiplist}">
           <tr>
               <td>${VO.bno}</td>
               <td><a href=>${VO.title}</a></td>
               <td>${VO.writer_uid}</td>
               <td>${VO.regdate}</td>
               <td>${VO.recommend}</td>
               <td>${VO.hits}</td>
           </tr>
           </c:forEach>
            
        </table>
		
	</div>
	
	<script>
		$(document).ready(function(){
			$('#btnNew').click(function(){
				location = '/teamsns/board/ttRegister'
			});
			
			if ('${insert_tt}' == 'success') {
    	        alert('글 작성 성공!');
    	    } else if ('${insert_tt}' == 'fail') {
    	        alert('글 작성 실패!');
    	    }
		});
	</script>
	
	
</body>
</html>