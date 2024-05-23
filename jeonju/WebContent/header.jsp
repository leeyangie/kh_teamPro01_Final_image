<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<header id="hd">

   <div id="hd_main_wrap">
       <div class="logo"><a href="${hpath }" >GO JEONJU.</a>
       </div>
       <nav id="gnb">
           <ul class="menu">
               <li class="item">
                   <a href="#" class="dp1">전주여행</a>
                   <ul class="submenu">
                       <li><a href="${hpath }/mainattraction_list">주요명소</a></li>
                       <li><a href="${hpath }/culturalfacilities_list">문화시설</a></li>
                       <li><a href="${hpath }/festival_list">대표축제</a></li>
                   </ul>
               </li>
               
               <li class="item">
                   <a href="#" class="dp1">숙박·쇼핑</a>
                   <ul class="submenu">
                       <li><a href="https://www.agoda.com/ko-kr/city/jeonju-si-kr.html?site_id=1922868&tag=89250035-e814-47b1-9131-303a7e936f96&gad_source=1&device=c&network=g&adid=693618693758&rand=18421755192373108443&expid=&adpos=&aud=kwd-343251542145&gclid=Cj0KCQjwxqayBhDFARIsAANWRnQ4rBbAlvL87l-eHeAuNYlJ9y5r5Uw65BINAZxm1VOwpC3sfJLAnZwaAvpFEALw_wcB&pslc=1" target="_blank">숙박</a></li>
                       <li><a href="${hpath }/shopping">전통시장</a></li>
                       <li><a href="${hpath }/cheongnyeon_mall">청년몰</a></li>
                   </ul>
               </li>
               <li class="item">
                   <a href="#" class="dp1">여행도우미</a>
                   <ul class="submenu">
                       <li><a href="${hpath }/map">관광지도</a></li>
                       <li><a href="${hpath }/traffic">대중교통 정보</a></li>
                       <li><a href="${hpath }/tour_guide">관광가이드 예약</a></li>
                   </ul>
               </li>
               <li class="item">
               <c:if test="${empty sname}" >
                   <a href="${hpath }/login" class="dp1">마이페이지</a>
               </c:if>
               <c:if test="${not empty sname}" >
                   <a href="${hpath }/mypage" class="dp1">마이페이지</a>
               </c:if>
                   <ul class="submenu">
                    <c:if test="${empty sname}" > 
                       <li><a href="${hpath }/login">로그인</a></li>
                       <li><a href="${hpath }/join_term">회원가입</a></li>
                    </c:if>
                    <c:if test="${not empty sname}" >
                       <div><a href="${hpath }/logout">로그아웃</a></div>
                       <li><a href="${hpath }/mypage">예약확인</a></li>
                    </c:if>                           
                       <li><a href="${hpath }/term">이용약관</a></li>
                       <li><a href="${hpath }/term">개인정보 처리방침</a></li>
                   </ul>
               </li>
               <li class="item">
                   <a href="${hpath }/notice_list" class="dp1">공지사항</a>
                   <ul class="submenu">
                       <li><a href="${hpath }/notice_list">공지사항</a></li>
                       <li><a href="${hpath }/qna_list">QnA</a></li>
                   </ul>
               </li>
           </ul>
       </nav>
       <div class="tnb">
        <c:if test="${empty sname}" > 
           <div><a href="${hpath }/login">로그인</a></div>
        </c:if>
        <c:if test="${not empty sname}" >
           <div><a href="${hpath }/logout">로그아웃</a></div>   
        </c:if>
        
        
        
           <input style="display: none;" type="checkbox" id="sidemenu"  checked>
	       <label style="margin: 0;" for="sidemenu" class="sideBtn hide" onclick=""><span class="fe--bar"><span></label>
       </div>
   </div>
</header>

 <script>
   
   var gnb = document.getElementById('gnb');

   
   gnb.addEventListener('mouseover', function() {
       
       document.querySelector('#hd_main_wrap').classList.add('header-hover');
   });

   
   gnb.addEventListener('mouseout', function() {
       
       document.querySelector('#hd_main_wrap').classList.remove('header-hover');
   });
   
   
</script>
<script>
	const gnb2 = document.getElementById('gnb');
	const sideMenuCheckbox = document.getElementById('sidemenu');
	const backgroundbg = document.getElementById('hd_main_wrap');
	
	 // Add event listener for change event on the input checkbox
	 sideMenuCheckbox.addEventListener('change', function() {
	    
	    // If the checkbox is checked, display the mobile menu; otherwise, hide it
	    if (this.checked) {
	        gnb2.style.display = 'block'
	        backgroundbg.style.height = 'auto';
	        
	                        
	    } else {
	        
	        gnb2.style.display= 'none';
	        backgroundbg.style.height = '60px';
	    }
	    
	});
	 //윈도우 사이즈가 증가하면 다시 원상태로 돌아온다.
	 window.onresize = function(e) {
		 var innerWidth = window.innerWidth;
		 if(innerWidth > "1200") {
			 gnb2.style.display = 'block'
			 backgroundbg.style.height = 'auto';
		 }
	 }
	 

	 
	 
	 
	 

</script>