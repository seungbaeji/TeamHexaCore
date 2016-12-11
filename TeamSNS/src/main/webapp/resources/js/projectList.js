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
   
   var districts = []; 
   
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
      
      var cardList ="";
      var cardNum = 1;
      var url = "/teamsns/projects/" + districts;
      $.getJSON(url, function(result){
         //console.log("프로젝트 개수:" + result.length);
         $(result).each(function(){
        	console.group("projectCard"+cardNum)
            var skills;
            var parts;
            var skillList = '';
            var partList = '';
            
            var rcstart = new Date(this.rcstart);
            var rcend = new Date(this.rcend);
            var deadline = rcend.getFullYear()+"."+rcend.getMonth()+"."+rcend.getDate()
            console.log(this.recruit_hits);
            console.log(this.rcstart);
            console.log(rcstart.getFullYear(), rcstart.getMonth(), rcstart.getDate());
            console.log(this.rcend);
            console.log(rcend.getFullYear(), rcend.getMonth(), rcend.getDate());
            console.log(this.rbno);
            console.log(this.intro);
            console.log(this.pname);
            
         	// 요구기술 li 요소 생성
            console.log(this.skills);
            if (this.skills != null) {
                // ,로 구분된 문자열인 요구스킬의 array화
            	skills = this.skills.split(",");
                console.log(skills);
                skills.sort();
                skills.forEach(function(item, index) {
                   skillList += '<li>' + item + '</li>';
                });
            }
            
            // 모집역할 part 요소 생성
            console.log(this.parts);
            if (this.parts != null){
                parts = this.parts.split(",");
                console.log(parts);
                parts.sort();
                parts.forEach(function(item, index){
                  partList += '<li>' + item + '</li>'; 
                });
            }
            
             cardList +='<li class="projectCard">'
                         + '<div class="cardTop">'
                         + '<div class="cardCom01">'
                         + '<p class="title">'
                         + '<a href="'
                         + this.rbno+'">'
                         + this.title + '</a></p>'
                         + '<p class="category"><'
                         + this.category + '> </p>'
                         + '<p class="pname">'
                         + this.pname + '</p>'
                         + '</div>'
                         + '<p class="cardCom02">'
                         + ' 조회수 '
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
                         + '<ul>'
                         + partList
                         + '</ul></div>'
                         + '<p class="cardCom05"></p></li>'
               console.groupEnd();          
               cardNum++;
         });// end result eachLoop
      		
      	 //cardList += '<form id="frm"><input type ="hidden" name="rbno"></form>'
         // 기존 projectCardList 삭제
         $("#cardContainer").empty();
         // 새로운 projectCardList 추가
         $("#cardContainer").html(cardList);
         
         // empty() 함수를 실행함에 따라 삭제된 함수를 재선언
         $('.title a').click(function() {
     	    var frm = $('#frm');
     	    event.preventDefault();
     	    var rbno = $(this).attr("href");
     	    frm.find("[name='rbno']").val(rbno);
     	    frm.attr("action", "/teamsns/project/projectDetail");
     	    frm.attr("method", "get");
     	    frm.submit();
     	 });
                  

      });// end getJSON 
   });// end district li click
   
	 $('.title a').click(function() {
	    var frm = $('#frm');
	    event.preventDefault();
	    var rbno = $(this).attr("href");
	    frm.find("[name='rbno']").val(rbno);
	    frm.attr("action", "/teamsns/project/projectDetail");
	    frm.attr("method", "get");
	    frm.submit();
	 }); 
   
});



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