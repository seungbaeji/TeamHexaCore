<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	
	*{
        margin: 0;
        padding: 0;
        
    }
    #ttDetail{
        position: fixed;
        left: 260px;
        width: 800px;
        height: 100%;
        border: 1px solid black;
    }
    
    #ttDetail2{
        width: 100%;
        height: 70px;
        border-bottom: 1px solid gray;
    }
    #profileimg{
        width: 60px;
        height: 60px;
        border: 1px solid darkgray;
        margin-left: 5px;
        margin-top: 3px;
        margin-right: 0;
        float: left;
    }
    #ttDetail3{
        width: 280px;
        margin-right: 0;
        float: right;
        
    }
    #ttDetail4{
        width: 400px;
    }
    #ttDetail5{
        margin-top: 10px;
        margin-right: 420px;
        float: left;
    }
    #ttDetail6{
       margin-top: 10px;
    }
    #ttDetail7{
        margin-top: 20px;
        border-bottom: 1px solid darkgray;
    }
    #bno{
        color: darkgray;
        margin-left: 10px;
    }
    #title{
        margin-left: 10px;
    }
    #ttDetail8{
        font-size: 18px;
        margin-left: 5px;
    }
    #count{
    	margin-top:0;
    }
    #replyboard{
    	left:1060px;
        position: relative;
        width: 850px;
        height: 100%;
        border: 1px solid darkgray;
    }
    #replyboard li{
        list-style: none;
    }
    #replycount{
    	
        border-bottom: 1px solid darkgray;
        background-color: lightgray;
    }
    #replycount h3{
        padding-bottom: 10px;
        padding-top:10px;
    }
    #replyMenu{
        
        float: left;
        width: 750px;
        border-bottom: 1px solid darkgray;
        border-right: 1px solid darkgray;
        
    }
    #replyregister{
        position: absolute;
        right: 0px;
        width: 100px;
        height: 100px;
        overflow: auto;
        
    }
    
    #wirter_uid{
        margin-left: 5px;
    }#wirter_id{
        margin-left: 5px;
    }
    #replyregdate{
        margin-left: 5px;
    }
    #replyList{
        box-sizing:border-box;
        display: block;
        border: 1px solid black;
        overflow: auto;
    }
    #replyList2{
        box-sizing:border-box;
        display: block;
        border: 1px solid black;
        overflow: auto;
    }
    #replyContent{
        width: 700px;
        overflow: auto;
        
    }
    #replyContentBox{
        width: 700px;
        overflow: auto;
        margin-bottom: 10px;
        margin-left: 10px
    }
    #replywrite{
        width: 650px;
        overflow: auto;
    }
    #btnhits{
    	margin-top:30px;
    	margin-left:20px;
    }
    #btninsert{
    	margin-top:30px;
    	margin-left:20px;
    }
    #replyAll{
    
    }
</style>
</head>
<body>
	<jsp:include page="../signup/include.jsp" flush="false"></jsp:include>

	<div id="ttDetail">
            
            <div id="ttDetail2">
                
                <div id="profileimg">
                    <img/>
                </div>
                
                 <div id="ttDetail3">
                     <span id="regdate" title="16.23.21">작성일: ${boardVO.regdate}  </span>
                 </div>
                 
                 <div id="ttDetail4">
                     <a>작성자: ${boardVO.writer_uid}</a>
                 </div>
                 
                 <div id="ttDetail5">
                     <span>추천:${boardVO.recommend}</span>
                 </div>
                 
                 <div id="ttDetail6">
                     <span>조회수:${boardVO.hits}</span>
                 </div>
                
                <div id="ttDetail7">
                    <h4 id="bno"># ${boardVO.bno}</h4>
                    <br/>
                    <h2 id="title">${boardVO.title}</h2>  
                </div>
                
                <div id="ttDetail8">
            	<p>${boardVO.content}</p>
                </div>
                
        </div>
       </div> <!-- end ttDetail -->
       <ul id="replyboard">
      
           <li id="replycount"><h3 id="count">답변:</h3></li>
           <li id="replyAll"></li>
           
           
           <li id="replyList2">
               
               <form id="replyMenu" action="replyCreate" method="post">
                   <div id="profileimg">
                       <img>
                   </div>
                   
                   <a id="wirter_id" value="${login_id}">${login_id}</a>
                   <br>
                   <br>
                   
                   <br>
                   <br>
                   <div id="replyContentBox">
                       <textarea id="replywrite"></textarea>
                   </div>
                   <input type="hidden" id="rbno" value="${boardVO.bno}">
                   
               </form>
               
               <div id="replyregister">
                   <button  id="btninsert"type="button" class="btn btn-success">등록</button>
               </div>
           </li>
           
           
           
       </ul>
       
       <script>
       	$(document).ready(function(){
       		var bno = ${boardVO.bno};
       		
				getAllReplies();
       		
       		function getAllReplies(){
       			
       			var url = '/teamsns/replies/all/' + bno;
       			
       			$.getJSON(url,function(result) {
       				
       				console.log("댓글 개수: " + result.length);
       				
       				var list = '';
       				
       				/* data의 개수만큼 function()의 내용을 반복해서 수행 */
       				$(result).each(function() {
       					
       					
       					list += 
       		       			'<li id="replyList">'
       		                
       		                +'<div id="replyMenu">' 
       		                    +'<div id="profileimg">'
       		                        +'<img>'
       		                    +'</div>'
       		                    +'<a id="wirter_uid" value="작성자">'+ this.replier_uid +'</a>'
       		                    +'<br>'
       		                    +'<br>'
       		                    +'<span id="replyregdate">'+ this.regdate +'</span>'
       		                    +'<br>'
       		                    +'<br>'
       		                    +'<div id="replyContentBox">'
       		                        +'<p id="replyContent">'+ this.content +'</p>'
       		                    +'</div>'                 
       		                +'</div>'
       		                +'<div id="replyregister">'
       		                    +'<button  id="btnhits"type="button" class="btn btn-success">추천</button>'
       		                +'</div>'
       		            +'</li>';
       					
       				}); /* 데이터 개수에 따른 반복문 처리 끝 */
       				$('#replyAll').html(list);
       				
       			});
       			
       			
       			
       			
       		} // end getAllReplies
       		
       		
       		
       		/*================================================================  */
       		$('#btninsert').click(function(){
       			var rtextString = $('textarea#replywrite').val(); // 댓글 내용
       			var replierString = $('#wirter_id').text(); // 댓글러
       			var rbnoString = $('#rbno').val();
       			console.log(replierString);
       			console.log(rtextString);
       			console.log(rbnoString);
       			
       			$.ajax({
       				type: 'post',
       				url: '/teamsns/replies',
       				headers: {
       					'Content-Type': 'application/json',
       					'X-HTTP-Method-Override': 'POST'
       				},
       				data: JSON.stringify({
       					tt_bno: rbnoString,
       					replier_uid: replierString,
       					content: rtextString
       				}),
       				success: function(result) {
       					if (result == 1) {
       						alert('댓글 입력 성공');
       						$('textarea#replywrite').val('');
       					}
       					getAllReplies();
       				} /* 콜백 함수 끝 */
       				
       			}); // end ajax
       			
       		}); // end click
       		
       		
       	});
       	
       	
       	
       	
       </script>
</body>
</html>