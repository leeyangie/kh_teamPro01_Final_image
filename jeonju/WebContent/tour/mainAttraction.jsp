<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주요 명소</title>
<%@ include file="/head.jsp" %> 
<link rel="stylesheet" href="${ hpath}/css/header2.css?after"/>
<link rel="stylesheet" href="${ hpath}/css/button.css"/>
<link rel="stylesheet" href="${ hpath}/css/modal.css"/>
<style>
        #popup {
            width: 100%;
            height: 0;
            display: flex;
            justify-content: center;
            align-items: flex-start;
            transition : all 0.5s;
            
        }
        #popup_item {
            width: 900px;
            height: 0;
            margin-top: 10%;
            position: absolute;
            background-color: white;
            transition : all 0.5s;
        }
        #popup_item_img_wrap{
            width: 100%;
            height: 20%;
            overflow: hidden;     
        }
        #popup_item_img_wrap img {
            width: 100%;
            top: -300px;
            opacity: 0.7;
        }
        #popup_item_title_wrap {
            position: absolute;
            font-weight: 800;
            color: white;
            top: 5%;
            left: 40%;
        }
        #popup_item_main_wrap {
            width: 100%;
            height: 80%;
            padding: 10px 0;
        }
        #grid_popup_item_main_warp {
            width: 95%;
            height: 95%;
            margin: auto;
            display: grid;
            overflow: hidden;
            gap: 10px;
            grid-template-columns: 1fr 2fr;
            grid-template-rows: auto;
        }
        #grid_popup_item_main_warp img {
            width: 100%;
            height: 100%;
            overflow: hidden;
        }
        #grid_popup_item_main_warp div p {
            line-height: 23px; 
        }
        .button.button--moema.popup_item_button {
        	font-weight: 700;
            color: #F24405;
            border-color: #F24405;
            border-radius: 25px;
        }
        #top_wrap {
            width: 100%;
            height: 30px;
           	margin: 20px auto;
            text-align: center;
            font-size: 30px;
            font-weight: 700;
            color: #F24405;
        }
        .breadcrumb { 
            font-size: 0.9em; 
            margin-bottom: 10px; 
            color:rgb(134, 134, 134); 
            text-align: center; 
        }
        #line {
            width: 100%; 
            height: 10px; 
            border-bottom: 1px solid #F24405;
        }
        #main_wrap {
            width: 1200px;
            margin: 20px auto;
        }
        #grid_main {
            width: 960px;
            margin: 20px auto;
            display: grid;
            grid-template-columns: repeat(3 , 300px);
            grid-template-rows: auto;  
            gap: 30px;
        }
        #grid_main div {
        	padding: 2px;
        }
        
         .img_wrap{
            width: 300px;
            height:300px;
            overflow: hidden;
            display:flex; 
            justify-content: center;
        }
        
        .img_wrap img { height: 100% }
        
        .item_title {
            font-weight: 700;
        }
        .item_date {
            color: #F24405;
        }
        button.button--moema.item_button {
            font-weight: 700;
            color: #F24405;
            border: 1px solid #F24405;
            border-radius: 25px;
        }
        
        .button--moema { 
        padding : 0.8em 1.5em;
        }
        
        .item_comment { 
        line-height: 1.5em;
        }
       
       .item_date {
       margin-bottom: 30px;
       }
       
       #grid_popup_item_main_warp h5{
       font-weight: 300; 
       font-size: 16px;
       line-height: 1.5em;
       }
       
       #grid_popup_item_main_warp div button {
       border: 1px solid #F24405;
       margin-top: 30px
       }
       
       #grid_popup_item_main_warp div button a {
       color: #F24405;
       }
       
        
    </style>
</head>
<body>
  <div id="modal-container" class="modal unstaged">
        <div class="modal-overlay" id="modal-close"></div>
        	<div id="popup">
                <div id="popup_item">
                    <div id="popup_item_img_wrap">
                        <img src="" alt="">
                    </div>
                    <div id="popup_item_title_wrap">
                        <h2></h2>
                    </div>
                    <div id="popup_item_main_wrap">
                         <div id="grid_popup_item_main_warp">
                            <img src="" alt="">
                            <h5></h5>
                            <img src="" alt="">
                            <div>
                                <p></p>
                                <p></p>
                                <p></p>
                                <p></p>
                                <button class="button button--moema popup_item_button"><a href="" target='_blank'>홈페이지 ></a></button>
                            </div>
                         </div>
                    </div>
                </div>
            </div>	
  </div>
  
  <div id="content">
  <%@ include file="/header.jsp" %>
        <div id="top_wrap">
            	주요명소
        </div>
        <div class="breadcrumb">전주여행  > 주요명소</div>
        <div id="line"></div>
        <div id="main_wrap">
        	<div id="grid_main">
        		<c:forEach var="item" items="${ MainattractionList}">
        			<div>
	        			<div class="img_wrap">
	                    	<img src="${ item.img}" alt="주요 명소 사진">
                    	</div>
                    	<div class="item_comment">
                        	<div class="item_title">${ item.name}</div>
                        	<div class="item_detail">
                        	<c:choose>
						        <c:when test="${fn:length(item.comment) gt 26}">
						        <c:out value="${fn:substring(item.comment, 0, 25)}">
						        </c:out></c:when>
						        <c:otherwise>
						        <c:out value="${ item.comment}">
						        </c:out></c:otherwise>
							</c:choose>
							...
                        	</div>
                        	<div class="item_date">${ item.period}</div>
                        	<button class="button button--moema item_button" id="${ item.no}">더보기 ></button>
                    	</div>
                </div>
        		</c:forEach>
        	</div>
        </div>
  </div>
<%@ include file="/footer.jsp" %>
<script>
document.querySelectorAll('.button.button--moema.item_button').forEach(function(data) {
	data.addEventListener("click", function(e){
		   document.querySelectorAll('.button.button--moema.item_button').forEach(function(button) {
			    button.style.visibility = "hidden";
			});
		   document.getElementById('modal-container').classList.toggle('opaque');
		   document.getElementById('modal-container').classList.toggle('unstaged');
		   document.getElementById('popup').style.height = "100%";
		   document.getElementById('popup_item').style.height = "600px";
		   
		   
		   $.ajax({
			   url:"${ hpath}/mainattractionApi",
			   type:"get",
			   dataType:"json",
			   data: {no: e.target.id},
			   success:function (data) {
				   document.querySelector('#popup_item_img_wrap img').src = data.img;
				   document.querySelector('#popup_item_title_wrap h2').innerText = data.name;
				   document.querySelectorAll('#grid_popup_item_main_warp img')[0].src = data.sub_img1;
				   document.querySelector('#grid_popup_item_main_warp h5').innerHTML = data.comment;
				   document.querySelectorAll('#grid_popup_item_main_warp div p')[0].innerHTML = "<strong>일자</strong>\t" + data.period;
				   document.querySelectorAll('#grid_popup_item_main_warp div p')[1].innerHTML = "<strong>장소</strong>\t" + data.locate;
				   document.querySelectorAll('#grid_popup_item_main_warp div p')[2].innerHTML = "<strong>안내</strong>\t" + data.sub1;
				   document.querySelectorAll('#grid_popup_item_main_warp div p')[3].innerHTML = "<p>&nbsp;</p>" + data.sub2;
				   document.querySelectorAll('#grid_popup_item_main_warp img')[1].src = data.sub_img2;
				   document.querySelector('#grid_popup_item_main_warp div button a').href = data.homepage;
			   },
			   error:function (data) {
				   console.log("실패",data);
			   }
			   
		   })
		});
});
/* document.querySelector('.button.button--moema.item_button').addEventListener("click", function(e){
   
   document.querySelector('.button.button--moema.item_button').style.visibility = "hidden";
   document.getElementById('modal-container').classList.toggle('opaque');
   document.getElementById('modal-container').classList.toggle('unstaged');
   document.getElementById('popup').style.height = "100%";
   document.getElementById('popup_item').style.height = "400px";
   
   
   console.log("${ hpath}/festivalOneApi");
   $.ajax({
	   url:"${ hpath}/festivalOneApi",
	   type:"get",
	   dataType:"json",
	   data: {no: e.target.id},
	   success:function (data) {
		   console.log(data);
		   console.log(document.querySelector('#grid_popup_item_main_warp img:nth-child(1)'));
		   document.querySelector('#popup_item_img_wrap img').src = data.img;
		   document.querySelector('#popup_item_title_wrap h2').innerText = data.name;
		   document.querySelectorAll('#grid_popup_item_main_warp img')[0].src = data.sub_img1;
		   document.querySelector('#grid_popup_item_main_warp h5').innerHTML = data.comment;
		   document.querySelectorAll('#grid_popup_item_main_warp div p')[0].innerHTML = "<strong>일자</strong>\t" + data.period;
		   document.querySelectorAll('#grid_popup_item_main_warp div p')[1].innerHTML = "<strong>장소</strong>\t" + data.locate;
		   document.querySelectorAll('#grid_popup_item_main_warp div p')[2].innerHTML = "<strong>주최</strong>\t" + data.sub1;
		   document.querySelectorAll('#grid_popup_item_main_warp div p')[3].innerHTML = "<strong>문의</strong>\t" + data.sub2;
		   document.querySelectorAll('#grid_popup_item_main_warp img')[1].src = data.sub_img2;
		   document.querySelector('#grid_popup_item_main_warp div button a').href = data.homepage;
	   },
	   error:function (data) {
		   console.log("실패",data);
	   }
	   
   })
}); */
document.getElementById('modal-close').addEventListener("click", function(e){
	
	
	
	setTimeout(function() {
	    document.querySelectorAll('.button.button--moema.item_button').forEach(function(button) {
	        button.style.visibility = "visible";
	    });
	}, 500);
	//레이아웃 검은화면 이벤트 꺼주기
   document.getElementById('modal-container').style.pointerEvents = "none";
   document.getElementById('popup').style.height = "0";
   document.getElementById('popup_item').style.height = "0";
   document.getElementById('modal-container').classList.toggle('opaque');
   document.getElementById('modal-container').addEventListener('transitionend', function(e){
       this.classList.toggle('unstaged');
       this.removeEventListener('transitionend',arguments.callee);
   //리아아웃 검은화면 이벤트 다시 켜주기 (연속적으로 눌러지는 현상 방지)
   setTimeout(function() {document.getElementById('modal-container').style.pointerEvents = "auto";},1000);
});
});
</script>
</body>
</html>