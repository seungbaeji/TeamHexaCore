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
		*{
			margin:0;
			padding:0;
		}
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
            width: 450px;
        }
        ul {
			list-style-type: none;
		}
		#links{
			width:100%;
			text-align: center;
		}
		.pageLinks li{
			display: inline-block;
			margin-left:10px;
			margin-right:10px;
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
             <th id="six">조회수</th>
             
          </tr>
           <c:forEach var = "VO" items="${tiplist}">
           <tr>
               <td>${VO.bno}</td>
               <td><a href="${VO.bno}">${VO.title}</a></td> 
               <td>${VO.writer_uid}</td>
               <td>${VO.regdate}</td>
               <td>${VO.recommend}</td>
               <td>${VO.hits}</td>
           </tr>
           </c:forEach>
            
        </table>
		
		<div id="links">
		<ul class="pageLinks">
		<c:if test="${pageMaker.hasPrev }">
			<li><a href="${pageMaker.startPageNum - 1 }">&laquo;이전</a></li>
		</c:if>

		<c:forEach begin="${pageMaker.startPageNum }"
			end="${pageMaker.endPageNum }" var="num">
			<li><a href="${num }">${num }</a></li>
		</c:forEach>

		<c:if test="${pageMaker.hasNext }">
			<li><a href="${pageMaker.endPageNum + 1 }">다음&raquo;</a></li>
		</c:if>

		</ul>
		</div>
	</div>
	
	
	
	<form id="pageForm">
		<input type="hidden" name="bno" />
		<input type="hidden" name="page" value="${pageMaker.criteria.page }" /> 
		<input type="hidden" name="perPage" value="${pageMaker.criteria.perPage }" />
	</form>
	
	<script>
		$(document).ready(function(){
			
			var frm = $('#pageForm');
			
			$('#btnNew').click(function(){
				location = '/teamsns/board/ttRegister'
			});
			
			 $('table tr td a').click(function(){
				 console.log('===================================');
				event.preventDefault();
				var bno = $(this).attr('href');
				frm.find('[name="bno"]').val(bno);
				frm.attr('action', 'ttDetail');
				frm.attr('method', 'get');
				frm.submit();
			});
			 $('.pageLinks li a').click(function() {
					event.preventDefault(); // 기본 이벤트 처리 방식을 방지(막음)
					// pageForm 안에 있는 name="page"인 요소를 찾아서
					// 이동할 페이지 번호를 세팅
					var targetPage = $(this).attr('href');
					frm.find('[name="page"]').val(targetPage);
					// 페이징 화면으로 보내기 위한 action 정보
					frm.attr('action', 'tipAndTech');
					// 페이징 화면을 처리하는 Controller의 method(요청 처리 방식)
					frm.attr('method', 'get');
					// 폼 양식을 서버로 전송
					frm.submit();
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