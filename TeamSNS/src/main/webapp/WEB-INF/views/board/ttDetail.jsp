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
            padding: 0
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
            height: 60px;
            border-bottom: 1px solid gray;
        }
        #profileImg{
            margin-left: 5px;
            width: 60px;
            height: 60px;
            float: left;
        }
        #writer_id{
            margin-left: 5px;
            padding-bottom: 10px;
            margin-right: 550px;
            width: 30px;
        }
        #regdate{
            width: 90px;
            margin-right: 60px;
        }
        
        #recommend{    
           margin-top: 10px; 
           margin-left: 5px;
           margin-right: 570px;
            float: left;
        }
        #ttDetail3{
              margin-top: 20px;
              border-bottom: 1px solid darkgray;
        }
        #bno{
            color: darkgray;
            margin-left: 10px
        }
        #title{
            margin-left: 10px;
        }
</style>
</head>
<body>
	<jsp:include page="../signup/include.jsp" flush="false"></jsp:include>

	<div id="ttDetail">
            
            <div id="ttDetail2">
                <img id="profileImg"/>
                <a id="writer_id">작성자</a>
                <span id="regdate" title="16.23.21">16.23.21</span>
                <div id="recommend">
                    <span id="recommend2">추천: </span>
                </div>
                <span>조회수:</span>
                
            </div>
                <div id="ttDetail3">
                    <h4 id="bno">#글번호</h4>
                    <br/>
                    <h2 id="title">작성자 글 제목</h2>    
                </div>
            
           
           
       </div>
</body>
</html>