<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>청년몰</title>
<%@ include file="/head.jsp" %>
<link rel="stylesheet" href="${hpath }/css/header2.css" />
<style>
#content {width: 100%;}
.breadcrumb { font-size: 0.9em; margin-bottom: 10px; color:rgb(134, 134, 134); text-align: center; }
#line {width: 100%; height: 10px; border-bottom: 1px solid #F24405;}
.page_head { display: block; width: 1200px; }
.imgwrap {width: 100vw; min-width: 1200px; overflow: hidden; height: 400px; position: relative; 
    border-top: 1px solid #f2522e; border-bottom: 1px solid #f2522e; margin-bottom: 70px;}
.page_head img {position: absolute; width: 100%;  filter: brightness(90%); min-width: 2000px; filter: brightness(70%);}
.page_head p { position: absolute; left: 30px; top: 500px; z-index: 999; color: #fff; font-weight: 800; font-size: 50px; }

#content { width: 100%; }
.content_wrap {display: flex; flex-wrap: wrap; justify-content: center;}
.content { width: 1200px; display: flex; margin-bottom: 20px;}
.img_left img { width: 600px; overflow: hidden;  border-bottom-left-radius: 40px; }
.img_right img { width: 600px; border-bottom-right-radius: 40px;}
.tourtitle {color: #f2522e;}
.mall_text { padding: 50px; line-height: 1.5em;}
</style>
</head>
<body>
	<div id="content">
	<%@ include file="/header.jsp" %>
	    <div class="page_title"><h2>청년몰</h2></div>
	    <div class="breadcrumb">숙박·쇼핑  > 청년몰</div>
		<div id="line"></div>
	
	     <div class="page_head">
	         <p>적당히 벌고 함께 잘 살자<br>청년몰</p>
	         <div class="imgwrap">
	             <img src="${hpath }/img/mall/market_chungnyun_03_head_upscayl_4x_realesrgan-x4plus.png" alt="청년몰">
	         </div>
	     </div>
	     
	     <section class="content_wrap">
	         <div class="content" id="page1">
	             <div class="img_left"><img src="${hpath }/img/mall/market_chungnyun_01.jpg" alt="청년몰"></div>   
	             <div class="mall_text">
	                 <h2 class="tourtitle">남부시장 필수코스 2층 청년몰!</h2><br><br>
	             
	                 <p>아기자기한 악세사리를 파는 가게부터 음식점, 애완동물 물품파는 곳, 카페, 주점, 그림그려주는 곳까지 저마다 개성있는 다양한 상점들이 여러분을 기다리고 있습니다.
	                     청년몰은 시장 내 2층의 창고로 방치되어 있던 곳을 활용하여 청년 장사꾼 육성을 통해 전통시장에 기운을 불어놓은 공간입니다.
	                     청년들의 감각으로 20여개 정도의 세계 요리전문점, 카페, 디자인 숍, 갤러리 등 다양한 가게들이 있으며, 정기적인 문화행사들을 진행 하고 있습니다.
	                 </p>
	             </div>
	         </div> 
	         
	         <div class="content" id="page2">
	             <div class="mall_text">
	                 <h2 class="tourtitle">청년몰 찾아오는 길</h2><br><br>
	                 <p>청년몰은 평일에도 여니깐 아무 때나 오셔도 된다는 사실!
	                   	대신 가게마다 운영시간이 다르니 반드시 참고하세요.
	                   	전주에 놀러오셨다면 특히 남부시장을 방문하셨으면 청년몰은 필수코스니깐 꼭 와보세요!
	                   	11:00~23:00 / 월요일 정기휴무
	                   	 ※ 가게별, 업종별로 영업시간이 다릅니다.
	                 </p>
	             </div>
	             <div class="img_right"><img src="${hpath }/img/mall/market_chungnyun_02-1.jpg" alt="청년몰"></div>
	             
	         </div>
	
	         <div class="content" id="page3">
	             <div class="img_left"><img src="${hpath }/img/mall/market_chungnyun_03.jpg" alt="청년몰"></div>
	             <div class="mall_text">
	                 <h2 class="tourtitle">청년몰 명물 길냥이</h2> <br><br>
	                 <p>청년몰에는 특별한 이웃이 있다. 다름아닌 청년몰의 청년들과 복닥복닥 함께 살아가고 있는 길고양이들이다.
	                     그들을 키우는 것이 아니라 함께 살아가는 이웃으로 대하고 있다. 
	                     고양이들이 너무 예뻐도 간식을 주거나 만지려 하지 말라는 당부를 잊지 말자. 
	                     아픈 고양이를 위해서 판매수익의 50%를 치료비로 후원하는 청년들이 함께 공생하는 모습이 아름답다.
	                 </p>
	             </div>
	         </div>
	     </section>
	</div>

<%@ include file="/footer.jsp" %>    
</body>
</html>