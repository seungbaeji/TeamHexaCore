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
       
       <script>
       	$(document).ready(function(){
       		
       	});
       </script>
</body>
</html>