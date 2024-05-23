<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>교통 정보</title>
<%@ include file="/head.jsp" %>
<link rel="stylesheet" href="${hpath }/css/header2.css?after2"/>
<% 
  Date date = new Date();
  SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
  String today = dateFormat.format(date);
  String today_year = 1901 + date.getYear()+"";
  String today_date = date.getDate() >= 10 ? (date.getDate()+"") : ("0"+date.getDate());
  String today_month = date.getMonth() >= 10 ? (date.getMonth() +1 + "") : ("0"+ (date.getMonth() + 1));
  String nextDay = today_year + "-" + today_month + "-" + today_date;
  request.setAttribute("today",  today);
  request.setAttribute("nextDay",  nextDay);
%>

    <style>
    
    	#option_switch a {
    		color: white;
    	}
        #top_wrap {
            width: 1200px;
            height: 50px;
            margin-right: auto;
            margin-left: auto;
            text-align: center;
            font-size: 23px;
            font-weight: 700;
            color: #F24405;
        }
        #title_wrap {
            width: 1200px;
            height: 300px;
            background-color: #FEF5EF;
            margin: 0 auto;
            

        }
        #title_sub_comment {
            display: block;
            text-align: center;
            font-weight: 400;
            padding-top: 40px;
        }
        #title_box {
            width: 100%;
            height: 200px;
            margin-top: 20px;
            display: flex;
            justify-content: center;
        }
        
        .title_box_son1 {
            width: 20%;
            height: 60%;
            margin-top: 20px;
            background-color: white;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            border-radius: 15px;
            cursor: pointer;
        }
        .title_box_son1.getcolor {
            background-color: #F24405;
            color: white;
        }
        
        .imoticon {
        	width: 50px;
        	height: 50px;
        }
        
        


        #option_wrap {
            width: 1200px;
            height: 100px;
            background-color: #FEF5EF;
            display: flex;
            justify-content: center;
            margin: 20px auto;
        }
        #option_wrap_item {
            width: 900px;
            margin: 20px 5px;
        }
        
        select {
        	position: relative;
        	width: 30%;
            height: 60px;
        	padding-left: 16px;
        	padding-right: 42px;
        	background-color: white;
        	border: 1px solid white;
        	border-radius: 12px;
        	cursor: pointer;
        }
        
        #selectInput {
            width: 30%;
            height: 60px;
            background-color: white;
            border: none;
        }
        
        #option_switch {
        	background-color: #F24405;
        	display: none;
        	color: white;
        	margin: auto;
   	 		width: 300px;
    		height: 50px;
    		font-size: large;
    		text-align: center;
    		justify-content: center;
    		align-items: center;
    		border-radius: 10px;
        }
        #option_wrap_item option_switch a {
        	display: inline-block;
        	width: 200px;
        	height: 100px;
        	inline-style: none;
        	color: black;
        	border: 2px solid black;
        }

        #btn {
            width: 10%;
            height: 60px;
            align-self: center;
            cursor: pointer;
            display: flex;
            justify-content: center;
        }

        button {
            width: 100%;
            height: 60px;
            background-color: #F24405;
            align-self: center;
            font-size: x-large;
            color: #fff;
            cursor: pointer;
            border: #fff;
            border-radius: 5px;
        }
        

        button:hover {
            width: 90%;
            height: 90%;
            font-size: larger;
            transition: all 1s;
        } 
       
		#result_wrap {
			width: 1200px;
            height: auto;
            margin: 20px auto;
           	display: grid;
            grid-template-columns: repeat(4,1fr);
            grid-template-rows: auto;
            gap: 2px;
            font-weight: 700;
            transition: all 2s;
		}
		#result_wrap result_wrap_head {
			font-weight: 800;
		}
		
		#result_wrap div {
            width: 100%;
            height: 80px;
            font-size: larger;
            font-weight: 500;
            display: flex;
            align-items: center;
            justify-content: center;
            border-bottom: 2px solid #FEF5EF;
        }
        .result_wrap_head {
            background-color: #F24405;
            color: white;
        }
        
        

        input[type="date"] {
        	position: relative;
        	width: 120px;
        	height: 48px;
        	padding-left: 16px;
        	padding-right: 42px;
        	background: no-repeat right 21px center / 16px auto;
        	border: 1px solid white;
        	border-radius: 12px;
        }
        input[type="date"]::-webkit-clear-button,
        input[type="date"]::-webkit-inner-spin-button {display: none;}
        input[type="date"]::-webkit-calendar-picker-indicator {
            position: absolute;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            background: transparent;
            color: transparent;
            cursor: pointer;
        }
        input[type="date"]::before {
        	content: attr(data-placeholder);
        	width: 100%;
        }
        input[type="date"]:valid::before {
        	display: none;
        }
       
        
        

        
        
    </style>
</head>

<body>
<div id="content">
<%@ include file="/header.jsp" %>
     <div id="top_wrap">대중교통 정보</div>
     <div id="title_wrap">
            <h4 id="title_sub_comment">교통수단별 전주 오시는 경로를 안내해드립니다.</h6>
            <div id="title_box">
                <div class="title_box_son1 getcolor" onclick="onClickBus1()">
                    <div class="imoticon">
                    	<svg xmlns="http://www.w3.org/2000/svg" width="3em" height="3em" viewBox="0 0 1536 1792"><path fill="currentColor" d="M384 1216q0-53-37.5-90.5T256 1088t-90.5 37.5T128 1216t37.5 90.5T256 1344t90.5-37.5T384 1216m1024 0q0-53-37.5-90.5T1280 1088t-90.5 37.5t-37.5 90.5t37.5 90.5t90.5 37.5t90.5-37.5t37.5-90.5m-46-396l-72-384q-5-23-22.5-37.5T1227 384H309q-23 0-40.5 14.5T246 436l-72 384q-5 30 14 53t49 23h1062q30 0 49-23t14-53m-226-612q0-20-14-34t-34-14H448q-20 0-34 14t-14 34t14 34t34 14h640q20 0 34-14t14-34m400 725v603h-128v128q0 53-37.5 90.5T1280 1792t-90.5-37.5t-37.5-90.5v-128H384v128q0 53-37.5 90.5T256 1792t-90.5-37.5T128 1664v-128H0V933q0-112 25-223l103-454q9-78 97.5-137t230-89T768 0t312.5 30t230 89t97.5 137l105 454q23 102 23 223"/></svg>
                    </div>
                    <h4>고속버스</h4>
                </div>
                <div class="title_box_son1" onclick="onClickBus2()">
                    <div class="imoticon">
                    	<svg xmlns="http://www.w3.org/2000/svg" width="3em" height="3em" viewBox="0 0 1536 1792"><path fill="currentColor" d="M384 1216q0-53-37.5-90.5T256 1088t-90.5 37.5T128 1216t37.5 90.5T256 1344t90.5-37.5T384 1216m1024 0q0-53-37.5-90.5T1280 1088t-90.5 37.5t-37.5 90.5t37.5 90.5t90.5 37.5t90.5-37.5t37.5-90.5m-46-396l-72-384q-5-23-22.5-37.5T1227 384H309q-23 0-40.5 14.5T246 436l-72 384q-5 30 14 53t49 23h1062q30 0 49-23t14-53m-226-612q0-20-14-34t-34-14H448q-20 0-34 14t-14 34t14 34t34 14h640q20 0 34-14t14-34m400 725v603h-128v128q0 53-37.5 90.5T1280 1792t-90.5-37.5t-37.5-90.5v-128H384v128q0 53-37.5 90.5T256 1792t-90.5-37.5T128 1664v-128H0V933q0-112 25-223l103-454q9-78 97.5-137t230-89T768 0t312.5 30t230 89t97.5 137l105 454q23 102 23 223"/></svg>
                    </div>
                    <h4>시외버스</h4>
                </div>
            </div>
      </div>
      <div id="option_wrap">
            <div id="option_wrap_item">
                <select name="start_lo">
                    <option>출발지</option>
                    <option value="032">동서울</option>
                    <option value="700">부산</option>
               		<option value="020">서울센트럴시티</option>
                    <option value="100">인천</option>
                </select>
                <select name="end_lo">
                    <option>도착지</option>
                    <option value="602">전주</option>
                </select>
                    <input id="selectInput"  required type="date" name="schedule" min="${today }" max="${nextDay }" />                 
            </div>
            <div id="btn">
                <button onclick="onClickSerch()">조회하기</button>
            </div>
            <div id="option_switch">
        		<a href="https://txbus.t-money.co.kr/main.do" target='_blank'>시외버스 예약하러 가기</a>
        	</div>
      </div>
      <div id="result_wrap">
       
      </div>
</div>
<%@ include file="/footer.jsp" %>
<script>
		let title_box_son1_1 = document.querySelectorAll(".title_box_son1")[0];
		let title_box_son1_2 = document.querySelectorAll(".title_box_son1")[1];
		let option_wrap_item = document.querySelector("#option_wrap_item");
		let btn = document.querySelector("#btn");
		let option_switch = document.querySelector("#option_switch");
		
		
		function onClickBus1() {
			console.log(title_box_son1_1);
			if(title_box_son1_1.className == "title_box_son1") {
				title_box_son1_1.className = "title_box_son1 getcolor";
				title_box_son1_2.className = "title_box_son1";
				option_wrap_item.style.display = "block";
				btn.style.display = "block";
				option_switch.style.display = "none";
			} 
		}
		function onClickBus2() {
			console.log(title_box_son1_2)
			if(title_box_son1_2.className == "title_box_son1") {
				title_box_son1_2.className = "title_box_son1 getcolor";
				title_box_son1_1.className = "title_box_son1";
				option_wrap_item.style.display = "none";
				btn.style.display = "none";
				option_switch.style.display = "flex";
			}
		}

		function formatDate(timestamp) {
		    // 숫자를 문자열로 변환합니다.
		    let dateString = timestamp.toString();

		    // 연도, 월, 일, 시간, 분을 추출합니다.
		    let year = dateString.substring(0, 4);
		    let month = dateString.substring(4, 6);
		    let day = dateString.substring(6, 8);
		    let hour = dateString.substring(8, 10);
		    let minute = dateString.substring(10, 12);

		    // 원하는 형식으로 조합하여 반환합니다.
		    return year + "년" + month + "월" + day + "일" + hour + "시" + minute + "분";
		}
		
		
		
		
		
		
		let result_wrap = $("#result_wrap");
		
		function make_menu_Layout() {
			result_wrap.prepend("<div class='result_wrap_head'>출발시간</div><div class='result_wrap_head'>도착시간</div><div class='result_wrap_head'>등급</div><div class='result_wrap_head'>가격</div>");
		}
		let is_showed = false;
		
		
		
		// 교통정보 API에서 data 받아오기
        function onClickSerch() {
            let start_lo = $("select[name=start_lo] option:selected").val();
            let end_lo = $("select[name=end_lo] option:selected").val();
            let start_date = $("input[type=date]").val().replace(/[^0-9]/g,"");
        $.ajax({
            url: "https://apis.data.go.kr/1613000/ExpBusInfoService/getStrtpntAlocFndExpbusInfo?serviceKey=oHfkaY88BRbD4M%2Fyx0m%2FtGQPCrjTmC97aKXu0LTqSYr8GwNqviM39OcSFzo00QDQ%2F8wqx98BelfUj%2BrtOSwqyA%3D%3D&pageNo=1&numOfRows=20&_type=json&depTerminalId=NAEK"+start_lo+"&arrTerminalId=NAEK"+end_lo+"&depPlandTime="+start_date+"&busGradeId=1",
            type: "get",
            dataType: "json",
            success:function (data) {
            	document.querySelector("#result_wrap").innerHTML = "";
            	if(data.response.body.items == "") {
            		alert("버스가 없습니다.");
            	}
            	else {
            		make_menu_Layout();
       		
                    let result = data.response.body.items.item;
                    result.forEach(function(item) {
                    	let depPlandTime = formatDate(item.depPlandTime);
                    	let arrPlandTime = formatDate(item.arrPlandTime);
                        result_wrap.append("<div><h6>"+depPlandTime+"</h6></div><div><h6>"+arrPlandTime+"</h6></div><div><h6>"+item.gradeNm+"</h6></div><div><h6>"+item.charge+"원</h6></div>");
                    });
 
            	}
            }
        })
        }
        
        
        
        
    </script> 
</body>
</html>