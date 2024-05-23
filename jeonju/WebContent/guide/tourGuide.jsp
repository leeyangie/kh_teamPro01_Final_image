<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>투어 코스</title>
<%@ include file="/head.jsp" %>
<link rel="stylesheet" href="${hpath }/css/header2.css?after" />
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
#tab_wrap { clear: both; display: block; height: 450px; margin: 50px}
.tab {display: block; width:900px; height:350px; margin: 0 auto;}
.tabcontent { padding: 30px;}
.tabnav{display: flex;  font-size:0; width:900px; }
.tabnav li{height:46px; width: 150px; text-align:center;}

.tabnav li a.active:before{background:#7ea21e;}
.tabnav li a.active{border-bottom:1px solid #fff;}
.tabnav li a{ display:block; background: #f8f8f8; color: #3a3a3a; line-height:46px; 
    font-size:16px; font-weight: 700; transition: 0.2s;}
.tabnav li a:hover{background:#c5f3d0; color:#313131; }
.tabnav li a.active{background:#f2522e; color:#fff; }
.tabcontent{ height:320px; border:1px solid #ddd; border-top:none;}
.tourtitle {color: #f2522e;}

.button_wrap { display: block; width: 100%; }
.button { display: flex; margin: 0 auto; width: 150px; height: 46px; background-color: #f2522e;
    align-items: center; font-weight: 600; border-radius: 80px; justify-content: center; }
.button a { width: 150px; color: #fff; line-height: 2em; }

.timetable { width: 100%; margin: 70px auto; height: 300px;}
.table { width: 1000px; border: 1px solid  #f2522e; border-collapse: collapse; line-height: 2em;}
thead { background-color: #f2522e; line-height: 2em; color: #fff; }
td { line-height: 1.5em; width: 80px; height: 50px;; border: 1px solid  #f2522e; border-collapse: collapse; }
td:first-child { background-color: #ffe0d8;}

</style>
</head>
<body>
<div id="content">
<%@ include file="/header.jsp" %>

    <div class="page_title"><h2>관광가이드 예약</h2></div>
    <div class="breadcrumb">여행도우미  > 관광가이드 예약</div>
    <div id="line"></div>
    <div class="page_head">
      
            <p>해설과 함께하는<br>전주 도보 예약 투어</p>
            <div class="imgwrap"><img src="${ hpath}/img/guide/dongosanseong.png" alt="관광가이드 예약"></div>
    </div>
        
    <div class="contents1">
        <div>
        	<p>
            	전주시에서는 전주지역을 방문하시는 관광객 여러분들의 편의를 돕기 위해<br>문화 관광 해설사 제도를 운영하고 있습니다.
            	<br>
            	예약투어는 문화관광해설사가 함께 하는 투어입니다.<br>관광객 분들의 안전한 관광을 위함이오니 숙지 및 양해 부탁드립니다.
            	<br>
            	※ 시간표에서 원하는 코스의 시간을 확인 후, 시작점으로 오시면 됩니다.
            	<br>
            	※ 기상악화(호우경보, 폭염경보 등)에 따라 투어코스 및 시간이 중단 또는 변동될 수 있습니다.
            	<br>
            	※ 정확한 당일 투어여부는 관광안내소를 통해 확인하실 수 있습니다.
            </p>
        </div>
        <div id="tab_wrap">
            <nav class="tab">
                <ul class="tabnav">
                	<c:forEach begin="1" end="6" varStatus="status" >
                		<li><a id="" onClick="tourClick(${status.count })" href="#tab0${ status.count}">코스${ status.count}</a></li>
                	</c:forEach>
                </ul>
                <div class="tabcontent">
                
                    <div id="tab01">
                        <h2 class="tourtitle">경기전 역사투어</h2>
                        <br>
                        <p><strong>소요시간</strong></p> 
                        <p>1시간</p> 
                        <p><strong>해설</strong></p> 
                        <p>한·영·중·일 (매일 11시, 14시) / 한국어 (매일 10시, 11시, 14시, 15시, 16시)</p> 
                        <p><strong>출발장소</strong></p>
                        	티켓 별도 구입 후 경기전 안 출발지 표시판 
                        <p><strong>주요코스</strong></p>
                        <p>홍살문 > 외삼문 > 내삼문 > 진전(태조어진) > 전주사고 > 예종대왕 태실 및 비
                        </p>
                    </div>
                    
                    <div id="tab02">
						<h2 class="tourtitle">향교 선비길 투어</h2>
                        <br>
                        <p><strong>소요시간</strong></p> 
                        <p>1시간</p> 
                        <p><strong>해설</strong></p> 
                        <p>한국어 (매일 10시)</p> 
                        <p><strong>출발장소</strong></p>
                        <p>오목대 관광안내소 옆 출발지 표시판 </p>
                        <p><strong>주요코스</strong></p>
                        <p>오목대 관광안내소 > 당산나무 > 양사재 > 전통문화연수원(장현식고택) > 전주향교 > 향교길 > 남천교 청연루
                        </p>
					</div>
					
                    <div id="tab03">
                    	<h2 class="tourtitle">태조 이성계 로드 투어</h2>
                        <br>
                        <p><strong>소요시간</strong></p> 
                        <p>1시간</p> 
                        <p><strong>해설</strong></p> 
                        <p>한국어 (매일 14시)</p> 
                        <p><strong>출발장소</strong></p>
                        <p>오목대 관광안내소 옆 출발지 표시판 </p>
                        <p><strong>주요코스</strong></p>
                        <p>오목대 관광안내소 > 태조로쉼터 다음 오목대 > 자만벽화마을 > 이목대 > 최담 유허비 > 한벽당
                        </p>
                    </div>
                    
                    <div id="tab04">
                    	<h2 class="tourtitle">한옥마을 골목길 투어</h2>
                        <br>
                        <p><strong>소요시간</strong></p> 
                        <p>1시간</p> 
                        <p><strong>해설</strong></p> 
                        <p>한·영·중·일 (매일 15시), 한·영(매일 11시, 15시)</p> 
                        <p><strong>출발장소</strong></p>
                        <p>경기전 관광안내소 앞 출발지 표시판 </p>
                        <p><strong>주요코스</strong></p>
                        <p>전동성당 > 태조로 > 부채문화관&최명희문학관 > 은행로 > 600년 은행나무 > 승광재 > 한지길 > 전통한지원 > 오목대 관광안내소
                        </p>
                    </div>
                    
                    <div id="tab05">
                    	<h2 class="tourtitle">전라감영 정기해설투어</h2>
                        <br>
                        <p><strong>소요시간</strong></p> 
                        <p>1시간</p> 
                        <p><strong>해설</strong></p> 
                        <p>한·영 (매일 11시, 14시) / 한국어 (매일 11시, 14시, 16시)</p> 
                        <p><strong>출발장소</strong></p>
                        <p>전라감영 정문 앞 출발지 표시판 </p>
                        <p><strong>주요코스</strong></p>
                        <p>내삼문 > 선화당 > 내아 행랑채 > 내아 > 연신당 > 관풍각
                        </p>
                    </div>
                    <div id="tab06">
                    	<h2 class="tourtitle">전주부성 옛길투어 1코스</h2>
                        <br>
                        <p><strong>소요시간</strong></p> 
                        <p>1시간</p> 
                        <p><strong>해설</strong></p> 
                        <p>한국어 (매일 10시, 15시)</p> 
                        <p><strong>출발장소</strong></p>
                        <p>풍남문 (전라감영 방향 풍남문 출발지 표시판) </p>
                        <p><strong>주요코스</strong></p>
                        <p>풍남문 > 고물자 골목 > 공익질옥 > 수다작 > 미래유산 행원 > 유기방 > 필방 > 고미술거리 > 완산경찰서 > 전라감영
                        </p>
                    </div>
                </div>
            </nav>
        </div>

        <div class="button_wrap">
            <div class="button"><a href="${ hpath}/tour_reservation?c_id=1">투어 예약하기</a></div>
        </div>

        <script>
            $(function(){
                $('.tabcontent > div').hide();
                $('.tabnav a').click(function () {
                    $('.tabcontent > div').hide().filter(this.hash).fadeIn();
                    $('.tabnav a').removeClass('active');
                    $(this).addClass('active');
                    return false;
                }).filter(':eq(0)').click();
                });
            function tourClick(e) {
            	$('.button_wrap a').attr("href","${ hpath}/tour_reservation?c_id="+e);
            }
        </script>

        <div class="timetable">
            <table class="table">
                <thead>
                    <tr>
                        <th>구분</th>
                        <th colspan="3">10:00</th>
                        <th colspan="3">11:00</th>
                        <th colspan="3">14:00</th>
                        <th colspan="3">15:00</th>
                        <th colspan="2">16:00</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>시작점</td>
                        <td>오목대 관광 안내소</td>
                        <td>경기전 전문</td>
                        <td>풍남문 광장</td>
                        <td>경기전 매표소 앞 표지판</td>
                        <td>경기전 정문</td>
                        <td>전라감영 정문</td>
                        <td>경기전 정문</td>
                        <td>전라감영 정문</td>
                        <td>오목대 관광 안내소</td>
                        <td>경기전 정문</td>
                        <td>경기전 매표소 앞 표지판</td>
                        <td>풍남문 광장</td>
                        <td>경기전 정문</td>
                        <td>전라감영 정문</td>
                    </tr>
                    <tr>
                        <td>코스</td>
                        <td>코스2</td>
                        <td>코스1</td>
                        <td>코스6</td>
                        <td>코스4</td>
                        <td>코스1</td>
                        <td>코스5</td>
                        <td>코스1</td>
                        <td>코스5</td>
                        <td>코스3</td>
                        <td>코스1</td>
                        <td>코스4</td>
                        <td>코스6</td>
                        <td>코스1</td>
                        <td>코스5</td>
                    </tr>
                </tbody>

            </table>
        </div>

    </div>
 </div>
<%@ include file="/footer.jsp" %>
</body>
</html>