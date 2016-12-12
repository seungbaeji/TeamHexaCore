$(document).ready(function(){
	
	// toggle: 지역선택 상태를 나타냄. 초기에는 전체선택되어 있음
	//	- 1: 선택됨
	//	- 0: 선택안됨
   var districtObjects = {
      all : {name: "전체선택", toggle: 1},
      seoul: {name: "서울", toggle: 0}, 
      busan: {name: "부산", toggle: 0}, 
      daegu: {name: "대구", toggle: 0}, 
      inchen: {name: "인천", toggle: 0}, 
      gwangju: {name: "광주", toggle: 0}, 
      daejeon: {name: "대전", toggle: 0}, 
      ulsan: {name: "울산", toggle: 0}, 
      sejong: {name: "세종", toggle: 0}, 
      gyeonggi: {name: "경기", toggle: 0},
      gangwon: {name: "강원", toggle: 0},
      nChungcheong: {name: "충청북도", toggle: 0}, 
      sChungcheong: {name: "충청남도", toggle: 0}, 
      nJeolla: {name: "전라북도", toggle: 0}, 
      sJeolla: {name: "전라남도", toggle: 0},
      nGyeongsang: {name: "경상북도", toggle: 0},
      sGyeongsang: {name: "경상남도", toggle: 0},
      jeju: {name: "제주", toggle: 0}, 
      foreignCountry: {name: "해외", toggle: 0}    
   } 
   
   // 저장된 선택지역 목록
   var districts = [];
   // 이전 스크롤 좌표
   var lastScrollTop = 0;
   var easeEffect = 'easeInQuint';
   // 스크롤 이벤트 최초발생
   $(window).scroll(function(){
	   
	   // 현재 스크롤 좌표
	   var currentScrollTop = $(window).scrollTop();
	   
	   // 다운 스크롤
	   if (currentScrollTop - lastScrollTop > 0) {
		   // 현재 스크롤 좌표를 이전 스크롤 좌표로 할당
		   lastScrollTop = currentScrollTop;
		   
		   // 현재 스크롤의 위치가 화면의 위치보다 크다면,
		   if($(window).scrollTop() >= $(document).height() - $(window).height()){
			   var lastRbno = $(".title a:last").attr("href");
			   console.log(lastRbno);
			   var url2 = "/teamsns/projects/infinite" + lastRbno;
			   $.getJSON(url2, projectListCallback);
			
			   var position = $(".projectCard:first").offset();
			   $('html,body').stop().animate({scrollTop : position.top }, 600, easeEffect);
			   
		   }
		   		   
	   } 
	   // 업 스크롤
	   else {
		   // 현재 스크롤 좌표를 이전 스크롤 좌표로 할당
		   lastScrollTop = currentScrollTop;
	   } // end if-else
	   
	   
	   
	   
	   
   }); // end scrollEvent()
   
   $(".district li").click(function(){
	  console.log("지역선택 개수"+districts.length);
      var target = $(this); // 클릭 했을때의 li
      var district = $(this).attr('id'); // li의 id에 입력된 string값
      districts = []; // 지역선택 리스트의 초기화
      
      //console.log(district);
      //console.log(districtObjects[district].name + ', ' + districtObjects[district].toggle);
      var x = districtObjects[district].toggle;
      
      // 지역이름 색 바꾸기
      if (x == 0){
         changeColor1(target);
         districtObjects[district].toggle = 1;
      } else {
         changeColor2(target);
         districtObjects[district].toggle = 0;
      }
      
      // 선택한 지역이름 리스트로 저장하기
      for (var y in districtObjects){
         if (districtObjects[y].toggle == 1) {
            districts.push(districtObjects[y].name);
            } // end if
         } // end forEach
         console.log("지역선택 리스트작성 완료")
         console.log(districts);   
/*          if(districts.length = 0){
         	districts = ["none"];
      	 } */
      
      // 전체선택시 선택한 지역이름 리스트 비우기
/*       if (districtObjects.all.toggle == 1){
         districts = [];
      }  */
      console.log("선택 지역: "+districts);
      
      var url = "/teamsns/projects/" + districts;
      $.getJSON(url, projectListCallback);
   });// end district li click
   
	 $('.title a').click(sendRbno); 
   
});

// hidden form으로 rbno 전송
function sendRbno(){
    var frm = $('#frm');
    event.preventDefault();
    var rbno = $(this).attr("href");
    frm.find("[name='rbno']").val(rbno);
    frm.attr("action", "/teamsns/project/projectDetail");
    frm.attr("method", "get");
    frm.submit();
}
// 지역선택 되었을때의 효과
function changeColor1(target){
      target.css('backgroundColor', 'lightblue');
      target.css('color', 'white');
}
// 지역선택 해제 되었을때의 효과   
function changeColor2(target){
      target.css('backgroundColor', 'white');
      target.css('color', 'black');
}
//ajax 콜백 함수
function projectListCallback(result){
   var cardList ="";
   var cardNum = 1;
   
   //console.log("프로젝트 개수:" + result.length);
   // ajax로 받은 result의 개수만큼 반복 실행
    $(result).each(function(){
        var skills;
        var parts;
        var skillList = '';
        var partList = '';
        var rchits;
        var month;
        var date;
        console.group("projectCard"+cardNum)
        var rcstart = new Date(this.rcstart);
        var rcend = new Date(this.rcend);
        
        // 월, 일 두자리 수로 변경
        if (rcend.getMonth() < 10){
        	 month = "0" + rcend.getMonth();
        } else {
        	month = rcend.getMonth();
        }
        if (rcend.getDate() < 10){
       	 	date = "0" + rcend.getDate();
        } else {
       		date = rcend.getDate();
        }
        
        var deadline = rcend.getFullYear()+"."+month+"."+date
        console.log(this.recruit_hits);
        console.log(this.rcstart);
        console.log(rcstart.getFullYear(), rcstart.getMonth(), rcstart.getDate());
        console.log(this.rcend);
        console.log(rcend.getFullYear(), rcend.getMonth(), rcend.getDate());
        console.log(this.rbno);
        console.log(this.intro);
        console.log(this.pname);
        console.log(this.skills);
        if (this.skills != null) {
            skills = this.skills.split(",");
            console.log(skills);
            skills.forEach(function(item, index) {
               skillList += '<li>' + item + '</li>';
            });
         }
         console.log(this.parts);
         if (this.parts != null){
            parts = this.parts.split(",");
            console.log(parts);
            parts.forEach(function(item, index){
              partList += '<li>' + item + '</li>'; 
            });
         }
   
         cardList +='<li class="projectCard">'
                     + '<div class="cardTop">'
                     + '<div class="cardCom01">'
                     + '<p class="title">'
                     + this.title + '</p>'
                     + '<p class="category"><'
                     + this.category + '> </p>'
                     + '<p class="pname">'
                     + this.pname + '</p>'
                     + '</div>'
                     + '<p class="cardCom02">'
                     + '조회수 '
                     + this.recruit_hits + '<br>'
                     + '<br>모집마감일<br>'
                     + deadline +'<br>'
                     + '</p></div>'
                     + '<p class="intro">'
                     + this.intro +'</p>'
                     + '<div class="cardCom03">'
                     + '<p>요구기술</p>'
                     + '<ul>'
                     + skillList
                     + '</ul></div>'
                     + '<div class="cardCom04">'
                     + '<p>모집역할</p>'
                     +'<ul>'
                     + partList
                     + '</ul></div>'
                     + '<p class="cardCom05"></p></li>'
         console.groupEnd();          
         cardNum++;
     });// end result each

   // 기존 projectCardList 삭제
   $("#cardContainer").empty();
   // 새로운 projectCardList 추가
   $("#cardContainer").html(cardList);
   // empty() 함수를 실행함에 따라 삭제된 함수를 재선언
   $('.title a').click(sendRbno);

}