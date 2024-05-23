<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path0" value="<%=request.getContextPath() %>" />  
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인</title>
<%@ include file="/head.jsp" %>
<link rel="stylesheet" href="${hpath }/css/header2.css?after" />
<style>
*, *:before, *:after {
  box-sizing: border-box;
}

body {
  background: #F2F2F2;
}

input, button {
  border: none;
  outline: none;
  background: none;
}

.tip {
  font-size: 20px;
  margin: 40px auto;
  text-align: center;
} 

.cont {
  overflow: hidden;
  position: relative;
  width: 900px;
  height: 550px;
  margin: 0 auto 100px;
  background: #fff;
}

.form {
  position: relative;
  width: 640px;
  height: 100%;
  padding: 50px 30px;
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
  z-index: 1;
  position: absolute;
  left: 0;
  top: 0;
  width: 260px;
  height: 100%;
  padding-top: 360px;
}
.img:before {
  content: "";
  position: absolute;
  right: 0;
  top: 0;
  width: 100%;
  height: 100%;
  background-image:
  background-size : cover;
 
}
.img:after {
  content: "";
  position: absolute;
  left: 0;
  top: 0;
  width: 100%;
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
  font-size: 24px;
  margin-bottom: 15px;
  font-weight: normal;
}
.img__text p {
  font-size: 14px;
  line-height: 2.0;
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
  position: relative;
  width: 100px;
  height: 36px;
  margin: 0 auto;
  background: transparent;
  color: #fff;
  text-transform: uppercase;
  font-size: 15px;
  cursor: pointer;
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


h2 {
  width: 100%;
  font-size: 26px;
  text-align: center;
}
.tna a {
  display: block;
  text-align: center;
}
.form.sign-in label {
  width: 260px;
  margin: 25px auto 0;
  text-align: center;
} 
label span {
  font-size: 12px;
  color: #cfcfcf;
  text-transform: uppercase;
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

.forgot-pass {
  margin-top: 15px;
  text-align: center;
  font-size: 12px;
  color: #cfcfcf;
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
      <form action="${hpath }/login" method="post">
        <div class="form sign-in">
            <h2>재방문을 환영합니다.</h2>
            <label style="display: block;">
            <c:choose>
            	<c:when test="${!empty errorId }">
            	  <span style="color: red">${errorId }</span>
            	</c:when> 
            	<c:otherwise>
            	  <span>ID</span>
            	</c:otherwise>         
            </c:choose>         
                <input type="text" name="id" id="id" value="${errorId2 }"/>
            </label>
            <label style="display: block;">
            	<c:choose>
            		<c:when test="${!empty errorPw }">
            	  	  <span style="color: red">${errorPw }</span>
            		</c:when> 
            		<c:otherwise>
            		  <span>Password</span>
            		</c:otherwise>
            	</c:choose>
                <input type="password" name="pw" id="password" />
            </label>
            <br><br><br>
            <button type="submit" class="submit">Log In</button>
            <button type="button" class="fb-btn">CANCEL</span></button>
        </div>
        
        <div class="sub-cont">
          <div class="img" style="background-image: url('${hpath }/img/user/login.jpg');">
                <div class="img__text m--up">
                    <h2>처음 방문하셨나요?</h2><br><br>
                    <p>처음 방문하셨다면 <br>회원가입 하셔서<br>더 많은 전주여행 정보를<br>확인하세요</p>
                </div>
                <div class="img__btn">
                    <span class="m--up">Sign Up</span>
                </div>
            </div>
            <div class="form sign-up">
                <button type="button" class="submit">Sign Up</button>
            </div>
        </div>
      </form> 
    </div>
    <script>
        document.querySelector('.img__btn').addEventListener('click', function() {
            location.href = "${hpath }/join_term";
        });
        document.querySelector('.fb-btn').addEventListener('click', function() {
            location.href = "${hpath }";
        });
    </script>
    </div>
<%@ include file="/footer.jsp" %>
</body>
</html>