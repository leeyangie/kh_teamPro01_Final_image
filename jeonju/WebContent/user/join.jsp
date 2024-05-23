<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>회원가입</title>
<%@ include file="/head.jsp" %>
    <style>
<%@ include file="/css/header2.css" %>
    </style>
<style>
        *,
*:before,
*:after {
  box-sizing: border-box;
}

body {
  background: #ededed;
}

input,
button {
  border: none;
  outline: none;
  background: none;
  background-color: none;
  font-family: "Open Sans", Helvetica, Arial, sans-serif;
}


.tip {
  font-size: 20px;
  margin: 40px auto 50px;
  text-align: center;
}

.cont {
  overflow: hidden;
  position: relative;
  width: 900px;
  height: 800px;
  margin: 0 auto 100px;
  background: #fff;
}

.form {
  position: relative;
  width: 640px;
  height: 100%;
  transition: transform 1.2s ease-in-out;
  padding: 50px 30px 0;
}

.sub-cont {
  overflow: hidden;
  position: absolute;
  left: 640px;
  top: 0;
  width: 900px;
  height: 100%;
  padding-left: 260px;
  background: #fff;
  transition: transform 1.2s ease-in-out;
}
.cont.s--signup .sub-cont {
  transform: translate3d(-640px, 0, 0);
}

button {
  display: block;
  margin: 0 auto;
  width: 260px;
  height: 36px;
  border-radius: 30px;
  color: #fff;
  font-size: 15px;
  cursor: pointer;
}

.img {
  overflow: hidden;
  position: absolute;
  left: 0;
  top: 0;
  width: 260px;
  height: 100%;
}
.img:before {
  content: "";
  position: absolute;
  right: 0;
  top: 0;
  width: 1300px;
  height: 100%;
  background-size: cover;
  transition: transform 1.2s ease-in-out;
}
.img:after {
  content: "";
  position: absolute;
  left: 0;
  top: 0;
  width: 900px;
  height: 100%;
  background: rgba(0, 0, 0, 0.6);
}
.cont.s--signup .img:before {
  transform: translate3d(640px, 0, 0);
}
.img__text {
  z-index: 2;
  position: absolute;
  left: 0;
  top: 50px;
  width: 100%;
  padding: 0 20px;
  text-align: center;
  color: #fff;
  transition: transform 1.2s ease-in-out;
}
.img__text h2 {
  margin-bottom: 10px;
  font-weight: normal;
}
.img__text p {
  font-size: 14px;
  line-height: 2.0;
}
.cont.s--signup .img__text.m--up {
  transform: translateX(520px);
}
.img__text.m--in {
  transform: translateX(-520px);
}
.cont.s--signup .img__text.m--in {
  transform: translateX(0);
}
.img__btn {
  overflow: hidden;
  z-index: 2;
  position: absolute;
  width: 100px;
  height: 36px;
  margin: 0 auto;
  background: transparent;
  color: #fff;
  text-transform: uppercase;
  font-size: 15px;
  cursor: pointer;
  right: 30%;
  top: 50%;
}
.img__btn:after {
  content: "";
  z-index: 2;
  position: absolute;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  border: 2px solid #fff;
  border-radius: 30px;
}
.img__btn span {
  position: absolute;
  left: 0;
  top: 0;
  display: flex;
  justify-content: center;
  align-items: center;
  width: 100%;
  height: 100%;
  transition: transform 1.2s;
}
.img__btn span.m--in {
  transform: translateY(-72px);
}
.cont.s--signup .img__btn span.m--in {
  transform: translateY(0);
}
.cont.s--signup .img__btn span.m--up {
  transform: translateY(72px);
}


h2 {
  width: 100%;
  font-size: 24px;
  text-align: center;
}

.id-check {
  background-color: #F24405;
  color: #fff;
  border: none;
  font-weight: bold;
  font-size: 12px;
  cursor: pointer;
  width: 100px; 
  height: 24px; 
  padding: auto 10px; 
  float:right;
  transition: transform 1.2s ease-in-out;
}
.id-check:hover {
  background-color: #D63000;
  transition: transform 1.2s ease-in-out;
}


.address {
  
  background-color: #F24405;
  color: #fff;
  border: none;
  font-weight: bold;
  font-size: 12px;
  cursor: pointer;
  width: 100px; 
  height: 24px; 
  float:right;
}

.address:hover {
  background-color: #D63000;
  transition: transform 1.2s ease-in-out;
}

.form.sign-in label {
  display:flow-root;
  width: 260px;
  margin: 35px auto 0;
  text-align: center;
}
.form.sign-up label {
  display:flow-root;
  width: 260px;
  margin: 35px auto 0;
  text-align: center;
}
label span {
  display: block;
  font-size: 12px;
  color: #cfcfcf;
  text-transform: uppercase;
  float: left;
  text-align : center;
}

//header2 햄버거 고정 (왜냐하면 label에 직접 적용함)


#hd_main_wrap .tnb label {
  margin: 0;
}

input {
  display: block;
  width: 100%;
  margin-top: 5px;
  padding-bottom: 5px;
  font-size: 16px;
  border-bottom: 1px solid rgba(0, 0, 0, 0.4);
  text-align: center;
}


.submit {
  margin-top: 40px;
  margin-bottom: 20px;
  background: #F24405;
  text-transform: uppercase;
}

.submit:hover {
  background-color: #D63000;
  transition: transform 1.2s ease-in-out;
}

.fb-btn {
  border: 2px solid #F24405;
  color: #F24405;
}

.fb-btn:hover {
  background-color: #F2F2F2;
  transition: transform 1.2s ease-in-out;
}

.submit2 {
  margin-top: 40px;
  margin-bottom: 20px;
  background: #F24405;
  text-transform: uppercase;
}

.submit2:hover {
  background-color: #D63000;
  transition: transform 1.2s ease-in-out;
}

.fb-btn2 {
  border: 2px solid #F24405;
  color: #F24405;
  font-size: 16px;
  text-transform: uppercase;

}

.fb-btn2:hover {
  background-color: #F2F2F2;
  transition: transform 1.2s ease-in-out;
}



.sign-in {
  transition-timing-function: ease-out;
}
.cont.s--signup .sign-in {
  transition-timing-function: ease-in-out;
  transition-duration: 1.2s;
  transform: translate3d(640px, 0, 0);
}

.sign-up {
  transform: translate3d(-900px, 0, 0);
}
.cont.s--signup .sign-up {
  transform: translate3d(0, 0, 0);
}
#hd #hd_main_wrap {
  padding-top: 20px ;
}

    </style>
</head>

<body>
<div id="content">
<%@ include file="/header.jsp" %>
    <p class="tip"></p>
<div class="cont">
 <form action="${hpath }/join" method="post">
  <div class="form sign-in">
    <h2>전주여행을 시작하세요.</h2>
      <label>
        <span id="id_label">ID</span>&nbsp;<button type="button" class="id-check" onclick="idCheck()">중복체크</button>
        <input type="text" name="id" id="id"/>
      </label>
      <label>
        <span id="pw_label">PASSWORD</span>
        <input type="password" name="pw" id="pw" />
      </label>
      <label>
        <span id="pw_label2">PASSWORD CONFIRM</span>
        <input type="password" name="pw2" id="pw2" />
      </label><br><br><br>
      <button type="button" class="submit">NEXT</button>
      <button type="button" class="fb-btn">CANCEL</button>
  </div>
  <div class="sub-cont">
    <div class="img">
    <img class="img" src="${hpath }/img/user/join.jpg">
      <div class="img__text m--up">
        <h2>이미 회원이신가요?</h2><br><br>
        <p>이미 회원이시라면 <br>로그인하셔서 그동안의<br>새로운 소식들을 만나보세요!</p>
      </div>
      <div class="img__text m--in">
        <h2>이미 회원이신가요?</h2><br><br>
        <p>이미 회원이시라면 <br>로그인하셔서 그동안의<br>새로운 소식들을 만나보세요!</p>
      </div>
      <div class="img__btn">
        <span class="m--up">LOG IN</span>
        <span class="m--in">LOG IN</span>
      </div>
    </div>
    <div class="form sign-up">
        <h2>전주여행을 시작하세요.</h2><br><br>
        <label>
            <span>NAME</span>
            <input type="text" name="name" id="name" />
          </label>
          <label>
            <span>e-MAIL</span>
            <input type="email" name="email" id="email" />
            </label>
            <label>
            <span>PHONE-NUMBER</span>
            <input type="tel" name="phone_num" id="PhoneNumber" />
          </label>
          <label>
            <span>ADDRESS</span>&nbsp;<button type="button" class="address" onclick="findAddr()">주소검색</button>
             
            <div class="address-wrapper"> 
              <input type="text" name="address" id="address" readOnly/>
            </div>
          </label>
          <label>
              <span>SPECIFIC ADDR</span>
              <input type="text" name="address2" id="sp_address"/>
            </label>
          <label>
              <span>POST-NUMBER</span>
              <input type="text" name=postcode id="postcode" readonly/>
            </label>
      <button type="submit" class="submit2">Sign Up</button>
      <button type="button" class="fb-btn2">BACK</button>
    </div>
  </form>
  </div>
</div>
<script>
  //아이디 중복체크 했는지 체크
  var isIdCheck = false;

  document.querySelector('.img__btn').addEventListener('click', function() {
      location.href = "${hpath}/login";
  });
 document.querySelector('.fb-btn').addEventListener('click', function() {
      location.href = "/";
  });

  document.querySelector('.submit').addEventListener('click', function() {
	  if(!isIdCheck) {
		  alert("id 중복체크를 해야합니다.");
		  $("#id").focus();
		  return;
	  } 
	  
	  if($('#pw').val() != $('#pw2').val()) {
		  $("#pw").css("border-bottom-color","#FF0000");
		  $("#pw2").css("border-bottom-color","#FF0000");
		  $("#pw_label").css("color","#FF0000");
		  $("#pw_label2").css("color","#FF0000");
		  $("#pw_label2").text("PASSWORD CONFIRM 불일치");
	  } else {
		  $("#pw").css("border-bottom-color","#cfcfcf");
		  $("#pw2").css("border-bottom-color","#cfcfcf");
		  $("#pw_label").css("color","#cfcfcf");
		  $("#pw_label2").css("color","#cfcfcf");
		  $("#pw_label2").text("PASSWORD CONFIRM");
		  document.querySelector('.cont').classList.toggle('s--signup');
	  }
  });

  document.querySelector('.fb-btn2').addEventListener('click', function() {
      document.querySelector('.cont').classList.remove('s--signup');
  });


  function findAddr() {
      new daum.Postcode({
          oncomplete: function(data) {
              console.log(data);
              var roadAddr = data.roadAddress;
              var jibunAddr = data.jibunAddress;
              document.getElementById("postcode").value = data.zonecode;
              if(roadAddr !== '') {
                  document.getElementById("address").value = roadAddr;
              } else if(jibunAddr !== ''){
                  document.getElementById("sp_address").value = jibunAddr;
              }
              document.getElementById("sp_address").focus();
          }
      }).open();
  }
  
  function idCheck() {
	  if($("#id").val() == ""){
		  alert("아이디를 입력하세요.");
		  $("#id").focus();
		  return;
	  }
	  
	  let params = {id : $("#id").val()};
	  $.ajax({
		  url:"${hpath }/user_id_check",
		  type:"post",
		  dataType:"JSON",
		  data:params,
		  success:function (data){
			  let idCk = data.result;
			  if(!idCk) {
				  $("#id_label").css("color","#00FF00")
				  $("#id_label").text("ID사용 가능");
				  isIdCheck = true;
				  return;
			  } else{
				  $("#id_label").css("color","#FF0000");
				  $("#id_label").text("ID 사용불가");
				  $("#id").focus();
				  return;
			  }
			  
		  }
	  });
  }
  
</script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
 <%@ include file="/footer.jsp" %>
</body>
</html> 