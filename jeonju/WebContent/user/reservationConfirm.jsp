<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약 확인</title>
<%@ include file="/head.jsp" %>
<style>
<%@ include file="/css/header2.css" %>
</style>
<style>
#content { width: 100%; display: flex; align-items: center; flex-direction: column;}
.breadcrumb { font-size: 0.9em; margin-bottom: 10px; color:rgb(134, 134, 134); text-align: center; }
#line {width: 100%; height: 10px; border-bottom: 1px solid #F24405;}
.page_head { display: block; width: 1200px; }

#info_page { width: 900px; display: flex; justify-content: center; align-items: center; }
#right_image_wrap { width: 800px; height: 600px; display: flex; justify-content: space-between; align-items: center; position: relative; flex-direction: column;
    background-image: url(${ hpath}/images/reservationConfirm/drew-bae-TWskAX7I0JU-unsplash.jpg); background-repeat: no-repeat; background-size: auto 100% ;  overflow: hidden; margin-right: 80px;}
.right_text { z-index: 999; font-size: 50px; color: #fff; font-weight: 800; padding: 10px; text-align: center;}
.page { height: 200px;}
.page_head p { position: absolute; left: 30px; top: 500px; z-index: 999; color: #fff; font-weight: 800; font-size: 50px; }
.list_title { font-size: 18px; color:#f2522e; margin-top: 30px; }
.page_subtitle {color: #f2522e; font-size: 25px; font-weight: 700; margin-bottom: 50px; margin-top: 120px; }
.contents1 {width: 1000px; text-align: center; margin: 50px auto;}
.contents1 p { line-height: 2em;}
.content { width: 100%; height: 800px;}
.content form {width: 300px; margin: 0 auto; line-height: 2em;}
table { line-height: 3rem;}
table tr th { width: 90px;}

.button_group {width: 100%; display: flex; align-items: center;justify-content: center; margin-top: 50px;}
.button { width: 150px; height: 46px; border-radius: 50px; border: 1px solid #f2522e; background-color: #fff; color: #f2522e; margin: 5px; font-weight: 700; font-size: 14px;}
#enter { background-color: #f2522e; }
#enter a {color: #fff }
#cancle a, #modify a { color: #f2522e;}
.button:hover {cursor: pointer;}
</style>
</head>
<body>
<div id="content">
<%@ include file="/header.jsp" %>
    <div class="page_title"><h2>예약 내역 확인</h2></div>
    <div class="breadcrumb">마이페이지 > 예약 내역 확인</div>
    <div id="line"></div>
    
    <section id="info_page">
        <div id="right_image_wrap">
        
                <div class="right_text"><p>해설과 함께하는</p></div>
                <div class="right_text"><p>전주 도보 예약  <br> 투어</p></div>
                
        </div>
            
        <div class="content" id="page1">
            <div class="page_subtitle"> 예약자 정보</div>        
                <ul class="form_wrap">
                    <li>
                        <h3 class="list_title">예약정보</h3>
                        <table>
                            <tr>
                                <th>예약코스</th>
                                <td>${course}</td>
                            </tr>
                            <tr>
                                <th>시간</th>
                                <td>${time}</td>
                            </tr>
                            <tr>
                                <th>인원</th>
                                <td>${people}</td>
                            </tr>
                            <tr>
                                <th>예약번호</th>
                                <td>${no}</td>
                            </tr>
                        </table>
                        
                    </li>
                    <li>
                        <h3 class="list_title">예약자 정보</h3>
                        <table>
                            <tr>
                                <th>이름</th>
                                <td>${sname}</td>
                            </tr>
                            <tr>
                                <th>연락처</th>
                                <td>${stel}</td>
                            </tr>
                            <tr>
                                <th>이메일</th>
                                <td>${semail}</td>
                            </tr>
                        </table>
                    </li>
                </ul>
        </div>
    </section>
    <div class="button_group">
        <button class="button" id="enter"><a href="tourcourse.html">확인</a></button>
        <button class="button" id="modify"><a href="reservationModify.jsp">예약변경 </a></button>
        <button class="button" id="cancle"><a href="tourcourse.html">예약취소 </a></button>
    </div>
</div>

<div class="page" id="page2">

</div>
        
   
        
    </div>
<%@ include file="/footer.jsp" %>
</body>
</html>