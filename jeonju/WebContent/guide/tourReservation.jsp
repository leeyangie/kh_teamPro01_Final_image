<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.jeonju.dto.guide.Tourism"%>
<%@page import="java.util.List"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>투어 예약</title>
<%@ include file="/head.jsp" %>
<link rel="stylesheet" href="${hpath }/css/header2.css?after1"/>
<style>
#content {width: 100%;}
.breadcrumb { font-size: 0.9em; margin-bottom: 10px; color:rgb(134, 134, 134); text-align: center; }
#line {width: 100%; height: 10px; border-bottom: 1px solid #F24405;}
.page_head { display: block; width: 1200px; }
.imgwrap {width: 100vw; min-width: 1200px; overflow: hidden; height: 400px; position: relative; 
    border-top: 1px solid #f2522e; border-bottom: 1px solid #f2522e;}
.page_head img {position: absolute; width: 100%;  top:-600px; filter: brightness(90%); min-width: 2000px;}
.page_head p { position: absolute; left: 30px; top: 500px; z-index: 999; color: #fff; font-weight: 800; font-size: 50px; }
.contents1 {width: 1000px; text-align: center; margin: 50px auto;}
.contents1 p { line-height: 2em;}
.content { width: 100%; height: 800px;}
.content form {width: 300px; margin: 0 auto; line-height: 2em;}
.page_subtitle {color: #f2522e; font-size: 25px; font-weight: 700; text-align: center; margin-bottom: 50px; margin-top: 60px; }
.form_wrap li input { width: 300px; border-style: none; border-bottom: 1px solid #000; padding: 5px; }
.form_wrap li select { width: 310px; height: 30px; border-color: #bebebe;}
.form_wrap li {margin-bottom: 20px;}
.form_wrap li label { font-weight: 700;}
.button_group {width: 100%; display: flex; align-items: center;justify-content: center; margin-top: 50px;}
.button { width: 150px; height: 46px; border-radius: 50px; border: 1px solid #f2522e; background-color: #fff; color: #f2522e; margin: 5px; font-weight: 700; font-size: 14px;}
#enter { width: 150px; height: 46px; border-radius: 50px; border: 1px solid #f2522e; background-color: #fff; color: #f2522e; margin: 5px; font-weight: 700; font-size: 14px; background-color: #f2522e; color: #fff}

.button:hover {cursor: pointer;}
</style>
</head>
<body>
<div id="content">
<%@ include file="/header.jsp" %>
	<div class="page_title"><h2>관광가이드 예약</h2></div>
	<div class="breadcrumb">여행도우미 > 관광가이드 예약</div>
	<div id="line"></div>
	    <div class="page_head">
	      
	            <p>해설과 함께하는<br>전주 도보 예약 투어</p>
	            <div class="imgwrap"><img src="${ hpath}/img/guide/dongosanseong.png" alt="관광가이드 예약"></div>
	    </div>
	        
	    <div class="content" id="page1">
	        <div class="page_subtitle"> 예약자 정보</div>
	
	        <form action="${hpath}/tour_reservation" method="post">
	            <ul class="form_wrap">
	                <li>
	                    <div><label for="name"> 이름</label></div>
	                    <div><input type="text" name="name" id="name" readonly="readonly" value="${sname }" ></div>
	                    <div><input type="password" name="user_no" id="user_no" hidden="hidden" readonly value=${sno } ></div>
	                </li>
	                <li>
	                    <div><label for="phoneNumber"> 연락처</label></div>
	                    <div><input type="text" name="phoneNumber" id="phoneNumber" readonly value="${sphone_num }" ></div>
	                </li>
	                <li>
	                    <div><label for="email"> 이메일</label></div>
	                    <div><input type="text" name="email" id="email" readonly value="${semail }" ></div>
	                </li>
	                <li>
	                    <div><label for="course">희망코스</label></div>
	                    <div>
	                        <select name="t_no" id="course">
	                          <option value=""   selected>${ tourismFromCidList.get(0).getName()}</option>
	                        </select>
	                    </div>
	                </li>
	                <li>
	                    <div><label for="time">투어 시간</label></div>
	                    <div>
	                     <select name="start_time" id="time" onchange="onTimeChanged(this)" required="required">
	                        <option value="" disabled="disabled" selected>시간을 선택해주세요</option>
	                        <!-- 수용가능 인원수가 0이되면 disabled -->
	                        <c:forEach var="item" items="${ tourismFromCidList}">
	                         	<c:choose>
	                         		<c:when test="${ item.getMax_headcount() eq 0  }">
	                         			<option value="" disabled="disabled">${ item.getWhen_time()}:00(마감)</option>
	                         		</c:when>
	                         		<c:otherwise>
	                         			<option value=${ item.getWhen_time()}>${ item.getWhen_time()}:00</option>
	                         		</c:otherwise>
	                         	</c:choose>
	                        </c:forEach>
	                     </select>
	                    </div>
	                </li>
	                <li>
	                    <div><label for="people">인원</label></div>
	                    <div>
	                        <select name="headcount" id="people" required="required">
	                            <option value="" disabled="disabled" selected >인원을 선택해주세요. (최대 4명)</option>
	                        </select>
	                    </div>               
	                </li>
	            </ul>
	            <div class="button_group">
				    <button type="button" class="button" id="cancel" onclick="location.href='${ hpath}/tour_guide'">취소</button>
				    <button type="submit" class="button" id="enter">예약하기 <span class="simple-line-icons--arrow-right2"></span></button>
				</div>
	       </form>
	     </div>       
</div>
<script>
	function onTimeChanged(e) {
		var when_time = $(e).val();
		
		<%
           List<Tourism> tourismList = (List<Tourism>) request.getAttribute("tourismFromCidList");
           JSONArray jsonArray = new JSONArray();
           for (Tourism tourism : tourismList) {
               JSONObject jsonObject = new JSONObject();  //json 객체 생성  and 재 생성 
               jsonObject.put("no", tourism.getNo());		
               jsonObject.put("c_id", tourism.getC_id());
               jsonObject.put("name", tourism.getName());
               jsonObject.put("start_locate", tourism.getStart_locate());
               jsonObject.put("lang", tourism.getLang());
               jsonObject.put("course", tourism.getCourse());
               jsonObject.put("max_headcount", tourism.getMax_headcount());
               jsonObject.put("need_time", tourism.getNeed_time());
               jsonObject.put("when_time", tourism.getWhen_time());
               jsonArray.add(jsonObject);	//json array에 담기
    	   }
           String jsonText = jsonArray.toJSONString();
		%>
		//json형태로 java에서 js로 리스트 받기
		var tourrismList = <%= jsonText%>;
		//시간 대에 맞는 배열만 추출
		var newTourrismList = tourrismList.filter(function(tourrism) {return tourrism.when_time == when_time});
		$('select[name="headcount"]').empty(); 
		$('select[name="headcount"]').append("<option disabled>예약 된 인원"+(20-newTourrismList[0].max_headcount)+"/20</option>");
		var max = 0;
		switch(newTourrismList[0].max_headcount) {
		  case 3:
		  case 2:
		  case 1:
		    max = newTourrismList[0].max_headcount;
		    break;
		  case 0:
			$('select[name="headcount"]').append("<option>예약 불가</option>");
			break;
		  default:
			max = 4;
		}
		
		
		for(var i = 1; i <= max; i++) {
			var option = "<option value="+i+">"+i+"명</option>";
			$('select[name="headcount"]').append(option);
		}
	    $('select[name="t_no"] option').attr("value",newTourrismList[0].no);
		
	}
</script>
<%@ include file="/footer.jsp" %>
</body>
</html>