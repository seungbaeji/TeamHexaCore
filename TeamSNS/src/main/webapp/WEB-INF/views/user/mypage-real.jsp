<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
</head>
<style>
    #mypage_div {
    	position:fixed;
	left: 20%;
	width: 80%;
	height: 100%;
        margin: 10px;
    }
    
    #mypage_section1 {
        background-color: darkseagreen;
        width: 100rem;
        height: 35rem;
        margin-bottom: 1rem;
    }
    
    #mypage_section2 {
        background-color: burlywood;
        width: 100rem;
        height: 45rem;
    }
    
    .mylabel {
        font-size: 3rem;
    }
    
    #section1_button {
        float: right;
    }
    
    .table_mypage {
        font-size: 1.5rem;
    }
    
    .table_mypage_td1 {
        width: 12rem;
        font-weight: bold;
    }
    
    .table_board_list {
        table-layout: fixed;
    }
    
    .table_mypage_board {
        width: 17rem;
        text-align: center;
    }
    
    .table_mypage_title {
        width: 50rem;
        white-space: nowrap;
        text-overflow: ellipsis;
        overflow: hidden;
        text-align: center;
    }
    
    .table_mypage_bno {
        width: 7rem;
    }
    
    .table_mypage_date {
        width: 12rem;
        text-align: center;
    }
    
    .table_mypage_count {
        width: 8rem;
    }
</style>

<body>
<jsp:include page="../signup/include.jsp" flush="false"></jsp:include>
    <div id="mypage_div">
        <div id="mypage_section1">
            <label class="label label-default mylabel">내정보</label>
            <br>
            <br>
            <br>
            <table class="table table_mypage">
                <tr>
                    <td class="table_mypage_td1">ID</td>
                    <td>NANANA</td>
                </tr>
                <tr>
                    <td class="table_mypage_td1">이름</td>
                    <td>나나나</td>
                </tr>
                <tr>
                    <td class="table_mypage_td1">이메일</td>
                    <td>nanana@nanana.na</td>
                </tr>
                <tr>
                    <td class="table_mypage_td1">카톡</td>
                    <td>KAKAOTALK</td>
                </tr>
                <tr>
                    <td class="table_mypage_td1">주소</td>
                    <td>서울특별시 강남역 12번 출구</td>
                </tr>
            </table>
            <div id="section1_button">
                <input type="button" class="btn btn-primary btn-lg" value="수정하기"> </div>
        </div>
        <div id="mypage_section2">
            <label class="label label-default mylabel">내가 쓴 글</label>
            <br>
            <br>
            <br>
            <table class="table table_board_list">
                <tr>
                    <th class="table_mypage_bno">글번호</th>
                    <th class="table_mypage_board">게시판</th>
                    <th class="table_mypage_title">제목</th>
                    <th class="table_mypage_date">등록일</th>
                    <th class="table_mypage_count">조회수</th>
                </tr>
                <tr>
                    <td class="table_mypage_bno">12345</td>
                    <td class="table_mypage_board">어디에 있는 무엇일듯</td>
                    <td class="table_mypage_title">이것의 제목이 무엇인지는 알지 못하겠으나 글자수가 넘어가는지 확인을 해야하니 써보겠다</td>
                    <td class="table_mypage_date">2016-12-09</td>
                    <td class="table_mypage_count">12345</td>
                </tr>
                <tr>
                    <td class="table_mypage_bno">12345</td>
                    <td class="table_mypage_board">어디에 있는 무엇일듯</td>
                    <td class="table_mypage_title">이것의 제목이 무엇인지는 알지 못하겠으나 글자수가 넘어가는지 확인을 해야하니 써보겠다</td>
                    <td class="table_mypage_date">2016-12-09</td>
                    <td class="table_mypage_count">12345</td>
                </tr>
                <tr>
                    <td class="table_mypage_bno">12345</td>
                    <td class="table_mypage_board">어디에 있는 무엇일듯</td>
                    <td class="table_mypage_title">이것의 제목이 무엇인지는 알지 못하겠으나 글자수가 넘어가는지 확인을 해야하니 써보겠다</td>
                    <td class="table_mypage_date">2016-12-09</td>
                    <td class="table_mypage_count">12345</td>
                </tr>
                <tr>
                    <td class="table_mypage_bno">12345</td>
                    <td class="table_mypage_board">어디에 있는 무엇일듯</td>
                    <td class="table_mypage_title">이것의 제목이 무엇인지는 알지 못하겠으나 글자수가 넘어가는지 확인을 해야하니 써보겠다</td>
                    <td class="table_mypage_date">2016-12-09</td>
                    <td class="table_mypage_count">12345</td>
                </tr>
                <tr>
                    <td class="table_mypage_bno">12345</td>
                    <td class="table_mypage_board">어디에 있는 무엇일듯</td>
                    <td class="table_mypage_title">이것의 제목이 무엇인지는 알지 못하겠으나 글자수가 넘어가는지 확인을 해야하니 써보겠다</td>
                    <td class="table_mypage_date">2016-12-09</td>
                    <td class="table_mypage_count">12345</td>
                </tr>
                <tr>
                    <td class="table_mypage_bno">12345</td>
                    <td class="table_mypage_board">어디에 있는 무엇일듯</td>
                    <td class="table_mypage_title">이것의 제목이 무엇인지는 알지 못하겠으나 글자수가 넘어가는지 확인을 해야하니 써보겠다</td>
                    <td class="table_mypage_date">2016-12-09</td>
                    <td class="table_mypage_count">12345</td>
                </tr>
                <tr>
                    <td class="table_mypage_bno">12345</td>
                    <td class="table_mypage_board">어디에 있는 무엇일듯</td>
                    <td class="table_mypage_title">이것의 제목이 무엇인지는 알지 못하겠으나 글자수가 넘어가는지 확인을 해야하니 써보겠다</td>
                    <td class="table_mypage_date">2016-12-09</td>
                    <td class="table_mypage_count">12345</td>
                </tr>
            </table>페이지 링크 하든가 </div>
    </div>
</body>
</html>