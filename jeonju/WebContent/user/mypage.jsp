<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<%@ include file="/head.jsp" %>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<link rel="stylesheet" href="${ hpath}/css/header2.css?after"/>
<style>
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
#mypage_grid {
  width: 100%;
  min-height: 100%;
  display: grid;
  grid-template-columns: 1fr 4fr;
  grid-template-rows: auto;
}
#mypage_grid_left {
  background-color: #FBF2EC;
  height: 100%;
}
#mypage_grid_left ul {
  width: 100%;
  height: 100%;
  margin: 100px auto;
}

#mypage_grid_left ul li{
  display: flex;
  justify-content: center;
  padding: 20px 0;
}
#mypage_grid_left ul li:hover {
  background-color: #FA421A;
}



#mypage_grid_left ul li a:hover {
  color: white;
}


#mypage_info {
  width: 600px;
  height: 600px;
  margin: 0 auto;
  padding: 100px 0;
  
}

#mypage_info input[type='text'] {
  display: block;
  width: 100%;
  margin-top: 5px;
  padding-bottom: 5px;
  font-size: 16px;
  border: none;
  border-bottom: 1px solid rgba(0, 0, 0, 0.4);
  outline: none;
  background: none;
  font-family: "Open Sans", Helvetica, Arial, sans-serif;
  color: #A4A4A4;
}

#mypage_info_btnblock {
  width: 100%;
  height: 200px;
  display: flex;
  justify-content: space-around;
  align-items: center;
}

#mypage_info_btnblock button {
  margin: 0 auto;
  width: 130px;
  height: 36px;
  background-color: #fff;
  border-radius: 30px;
  color: #FF431B;
  font-size: 15px;
  cursor: pointer;
  border: 1px solid #FF431B;
}
#mypage_info_btnblock button:hover {
  background-color: #FF431B;
  color: #fff;
}

.mypage_info_btnblock_btn2 {
  display: none;
}
#mypage_info_btnblock_btn3 {
  margin: 0 auto;
  width: 130px;
  height: 20px;
  background-color: #fff;
  border-radius: 30px;
  color: #FF431B;
  font-size: 15px;
  cursor: pointer;
  border: 1px solid #FF431B;
  display: none;
}
#mypage_info_btnblock_btn3:hover {
  background-color: #FF431B;
  color: #fff;
}


#mypage_reservation {
  width: 600px;
  height: 600px;
  margin: 0 auto;
  padding: 100px 0;
}

#mypage_reservation_item1 {
  width: 100%;
  height: 150px;
  border: 1px solid #D9D9D9;
  border-radius: 20px;
  padding: 50px;
}

#mypage_reservation_item2 {
  width: 100%;
  height: 180px;
  border: 1px solid #D9D9D9;
  border-radius: 20px;
  padding: 50px
}
#mypage_reservation_btnblock {
  width: 100%;
  height: 100px;
  display: flex;
  justify-content: space-around;
  align-items: center;
}

#mypage_reservation_btnblock button {
  margin: 0 auto;
  width: 130px;
  height: 36px;
  background-color: #fff;
  border-radius: 30px;
  color: #FF431B;
  font-size: 15px;
  cursor: pointer;
  border: 1px solid #FF431B;
}

#mypage_reservation_btnblock button:hover {
  background-color: #FF431B;
  color: #fff;
}
#mypage_delete {
  width: 600px;
  height: 600px;
  margin: 0 auto;
  padding: 100px 0;
}

#mypage_delete_btnblock {
  width: 100%;
  height: 100px;
  display: flex;
  justify-content: space-around;
  align-items: center;
}
#mypage_delete_btnblock button {
  margin: 0 auto;
  width: 130px;
  height: 36px;
  background-color: #fff;
  border-radius: 30px;
  color: #FF431B;
  font-size: 15px;
  cursor: pointer;
  border: 1px solid #FF431B;
}
#mypage_delete_btnblock button:hover {
  background-color: #FF431B;
  color: #fff;
}

</style>
</head>
<body>
<div id="content">
<%@ include file="/header.jsp" %>
<div class="page_title"><h3>회원 정보</h3></div>
<div class="breadcrumb">마이페이지 > 예약 내역 확인</div>
<div id="line"></div>
<div id="mypage_grid">
  <div id="mypage_grid_left">
    <ul>
      <li><a href="#mypage_info">회원 정보</a></li>
      <li><a href="#mypage_reservation">예약 확인</a></li>
      <li><a href="#mypage_delete">회원 탈퇴</a></li>
    </ul>
  </div>
  <div id="mypage_grid_right">
    <div id="mypage_info">
     <form action="${hpath }/user_edit" method="post">
      <p>이름</p>
      <input type="text" name="name" value="${sname }" readonly="readonly">
      <br>
      <p>연락처</p>
      <input type="text" name="phone_num" value="${sphone_num }" readonly="readonly">
      <br>
      <p>이메일</p>
      <input type="text" name="email" value="${semail }" readonly="readonly">
      <br>
      <p>주소 / 우편 번호&nbsp;&nbsp;&nbsp;<button type="button" id="mypage_info_btnblock_btn3" onclick="findAddr()">주소 조회</button></p>
      <input type="text" name="address1" id="address1" value="${saddress }" readonly="readonly">
      <br>
      <p>상세주소</p>
      <input type="text" name="address2" id="address2" value="${saddress }" readonly="readonly">
      <div id="mypage_info_btnblock">
        <button type="button" id="mypage_info_btnblock_btn1">정보 수정</button>
        <button type="button" class="mypage_info_btnblock_btn2 a">취소</button>
        <button type="submit" class="mypage_info_btnblock_btn2">저장</button>
      </div>
      </form>
      <script>
    	    $('#mypage_info_btnblock_btn1').on('click', function() {
    	        $('#mypage_info_btnblock_btn1').css('display', 'none');
    	        $('.mypage_info_btnblock_btn2').css('display', 'block');
    	        $('#mypage_info_btnblock_btn3').css('display', 'inline');
    	        $('input[type="text"]').attr('readonly',false);
       	        $('input[type="text"][name="address1"]').attr('readonly', true);
    	        $('input[type="text"][name="address2"]').attr('readonly', true);
    	    });
 	    
    	    $('.mypage_info_btnblock_btn2.a').on('click', function() {
    	        $('#mypage_info_btnblock_btn1').css('display', 'block');
    	        $('.mypage_info_btnblock_btn2').css('display', 'none');
    	        $('#mypage_info_btnblock_btn3').css('display', 'none');
    	        $('input[type="text"]').attr('readonly',true);
    	    });
    	    
    	    function findAddr() {
    	        new daum.Postcode({
    	            oncomplete: function(data) {
    	                var roadAddr = data.roadAddress;
    	                var jibunAddr = data.jibunAddress;
    	                if(roadAddr !== '') {
    	                    document.getElementById("address1").value = roadAddr + "\\"+ data.zonecode;
    	                } else if(jibunAddr !== ''){
    	                    document.getElementById("address2").value = jibunAddr;
    	                }
    	                document.getElementById("address2").focus();
    	            }
    	        }).open();
    	        document.getElementById("address2").value = "";
    	        document.getElementById("address2").removeAttribute("readonly");
    	    }
    
      </script>
    </div>
    <div id="mypage_reservation">
      <p style="color: #FF431B; font-weight: 700">예약자 정보</p>
      <br>
      <div id="mypage_reservation_item1">
        <p><strong>이름</strong>&nbsp;&nbsp;&nbsp; ${sname}</p>
        <br>
        <br>
        <p><strong>연락처</strong>&nbsp;&nbsp;&nbsp; ${sphone_num}</p>
        <br>
        <br>
        <p><strong>이메일</strong>&nbsp;&nbsp;&nbsp; ${semail}</p>
      </div>
      <br><br>
      <p style="color: #FF431B; font-weight: 700">예약 정보</p>
      <br>
      <div id="mypage_reservation_item2">
       <c:if test="${empty tBought}">
         <h2>예약 정보 없음</h2>
       </c:if>
       <c:if test="${!empty tBought}">
        <p><strong>예약 코스</strong>&nbsp;&nbsp;&nbsp; ${tourism.getName()}</p>
        <br>
        <p><strong>시간</strong>&nbsp;&nbsp;&nbsp; ${tBought.getStart_time()}:00시</p>
        <br>
        <p><strong>인원</strong>&nbsp;&nbsp;&nbsp; ${tBought.getHeadcount()}명</p>
        <br>
        <p><strong>예약번호</strong>&nbsp;&nbsp;&nbsp; ${tBought.getNo()}</p>
        <br>
        <div id="mypage_reservation_btnblock">
          <button type="button" id="mypage_reservation_btnblock_btn1">예약 취소</button>
        </div>
       </c:if>
      </div>
    </div>
    <script>
    $('#mypage_reservation_btnblock_btn1').on('click', function() {
    	$.ajax({
  		  url:"${hpath }/reservation_delete",
  		  type:"get",
  		  success: function(response) {
            alert('삭제 성공');
            location.href = "/jeonju/mypage";
        },
  	  });
    });
    </script>
    <div id="mypage_delete">
      <h1 style="text-align: center">GO JEONJU 회원 탈퇴</h1>
      <br><br>
      <h4 style="text-align: center">회원 탈퇴 시 예약 내역 및 회원 정보가 모두 삭제 됩니다.</h4>
      <br><br>
      <div id="mypage_delete_btnblock">
          <button type="button" id="mypage_delete_btnblock_btn1">회원 탈퇴</button>
      </div>
    </div>
    <script>
    $('#mypage_delete_btnblock_btn1').on('click', function() {
    $.ajax({
        url: "${hpath}/user_delete",
        type: "get", 
        success: function(response) {
            alert('이용해 주셔서 감사합니다.');
            location.href = "/jeonju";
        },
      });
    });
    </script>
  </div>
  <script>
      $(function(){
      $('#mypage_grid_right > div').hide();
      $('#mypage_grid_left a').click(function () {
          $('#mypage_grid_right > div').hide().filter(this.hash).fadeIn();
          return false;
      }).filter(':eq(0)').click();
      });
  </script>
</div>
</div>
<%@ include file="/footer.jsp" %>
</body>
</html> 