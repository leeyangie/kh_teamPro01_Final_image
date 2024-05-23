<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="/head.jsp" %>
<link rel="stylesheet" href="${hpath }/css/header2.css?after" />
<style>
#content {width: 100%; display: flex; align-items: center; justify-content: center; flex-direction: column;}
.breadcrumb { font-size: 0.9em; margin-bottom: 10px; color:rgb(134, 134, 134) }
#line {width: 100%; height: 10px; border-bottom: 1px solid #F24405;}
.page { width: 1200px; }
.map_wrap {width: 1200px; display: flex; justify-content: center; margin-top: 80px; }
.map { width: 300px; padding-left: 60px; padding-right: 60px; display: flex; flex-direction: column; align-items: center; }
.map_text { text-align: center; margin-top: 15px; height: 90px; line-height: 1.5em;}
.map_text h3 { margin-bottom: 10px;}
.button_group_wrap { margin-top: 20px;}
.button_group { display: flex; text-align: center;margin: 10px;}
.button { width: 100px; height: 30px; background-color: #F24405; display: flex; align-items: center; justify-content: center; color: #fff; margin-right: 10px; margin-top: 10px;}
.map_img2 { width: 150px; height: 150px; border-radius: 50%; overflow: hidden; }
#page2 { height: 200px;}
</style>
</head>
<body>
<%@ include file="/header.jsp" %>
	<div id="content">    
        <div class="page_title"><h3 ></i>관광지도 다운로드</h3></div>
        <div class="breadcrumb">여행도우미  > 관광지도 다운로드</div>
        <div id="line"></div>
        
        <section class="page" id="page1"></section>
            <div class="mainmap_wrap">
                <div class="mainmap" id="mainmap1">
                    
                </div>
                <div class="mainmap" id="mainmap2">
                    
                </div>
            
            </div> 
            <div class="map_wrap">
                <div class="map" id="map1">
                    <div class="map_img"><img src="${hpath }/img/map/map_tour_kor.jpg" alt=""></div>
                    <div class="map_text">
                        <h3>전주 여행지도</h3>
                        <p>전주의 명소와 축제, 관광코스와 편의시설을 쉽게 찾아볼 수 있도록 모아놓은 
                            종합 가이드북</p>
                    </div>
                    <div class="button_group_wrap">
                        <ul class="button_group">
                            <li>
                                <p>국문</p>
                                <ul>
                                    <li><a href="${pageContext.request.contextPath}/downloadPdf?file=mapTour_kor.pdf" download=""><div class="button"><span class="material-symbols--download"></span>다운로드</div></a></li>
                                </ul>
                            </li>
                            <li>
                                <p>ENG</p>
                                <ul>
                                    <li><a href="${pageContext.request.contextPath}/downloadPdf?file=mapTour_eng.pdf" download=""><div class="button"><span class="material-symbols--download"></span>다운로드</div></a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>

                </div>
                <div class="map" id="map2">
                    <div class="map_img"><img src="${hpath }/img/map/map_food_kor.jpg" alt=""></div>
                    <div class="map_text">
                        <h3>전주 음식지도</h3>
                        <p>전주를 대표하는 전주음식 명인,명가,명소 및 유네스코 음식창의업소와 막걸리 골목을 소개하는 종합가이드북</p>
                    </div>
                    <div class="button_group_wrap">
                        <ul class="button_group">
                            <li>
                                <p>국문</p>
                                <ul>
                                    <li><a href="${pageContext.request.contextPath}/downloadPdf?file=mapFood_kor.pdf" download=""><div class="button"><span class="material-symbols--download"></span>다운로드</div></a></li>
                                </ul>
                            </li>
                            <li>
                                <p>ENG</p>
                                <ul>
                                    <li><a href="${pageContext.request.contextPath}/downloadPdf?file=mapFood_eng.pdf" download=""><div class="button"><span class="material-symbols--download"></span>다운로드</div></a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            
            </div> 
            <div class="map_wrap">
                <div class="map" id="map3">
                    <div class="map" id="map1">
                        <div class="map_img2"><img src="${hpath }/img/map/map_hanok.jpg" alt=""></div>
                        <div class="map_text">
                            <h3>한옥마을 지도</h3>
                            <p>전통생활문화가 살아 숨쉬는 한국의 대표적 문화관광명소인 전주한옥마을의 지도</p>
                        </div>
                        <div class="button_group_wrap">
                            <ul class="button_group">

                                <li><a href="${pageContext.request.contextPath}/downloadPdf?file=mapHanok.jpg" download=""><div class="button"><span class="material-symbols--download"></span>다운로드</div></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="map" id="map4">
                    <div class="map" id="map1">
                        <div class="map_img2"><img src="${hpath }/img/map/map_ex.jpg" alt=""></div>
                        <div class="map_text">
                            <h3>한옥마을 체험지도</h3>
                            <p>손으로 만드는 한옥마을 체험 지도</p>
                        </div>
                        <div class="button_group_wrap">
                            <ul class="button_group">

                                <li><a href="${pageContext.request.contextPath}/downloadPdf?file=mapExp.pdf" download=""><div class="button"><span class="material-symbols--download"></span>다운로드</div></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div> 
            <div class="map_wrap">
                <div class="map" id="map3">
                    <div class="map" id="map1">
                        <div class="map_img2"><img src="${hpath }/img/map/map_cycle.jpg" alt=""></div>
                        <div class="map_text">
                            <h3>전주 자전거길 지도</h3>
                            <p>전주 자전거길 지도</p>
                        </div>
                        <div class="button_group_wrap">
                            <ul class="button_group">

                                <li><a href="${pageContext.request.contextPath}/downloadPdf?file=mapBikeway.pdf" download=""><div class="button"><span class="material-symbols--download"></span>다운로드</div></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="map" id="map4">
                    <div class="map" id="map1">
                        <div class="map_img2"><img src="${hpath }/img/map/map_walk.jpg" alt=""></div>
                        
                        <div class="map_text">
                            <h3>전주 도보여행 지도</h3>
                            <p>사드락사드락 걸어서
                                전주도보여행 지도</p>
                        </div>
                        <div class="button_group_wrap">
                            <ul class="button_group">

                                <li><a href="${pageContext.request.contextPath}/downloadPdf?file=walkingMap"><div class="button"><span class="material-symbols--download"></span>다운로드</div></a></li>
                                
								
                            </ul>
                        </div>
                    </div>
                </div>
            </div> 

        </section>
        <section class="page" id="page2">

        </section >
        <script src="https://mozilla.github.io/pdf.js/build/pdf.js"></script>
        <script>
         const url = ''
        </script>
        
    </div>
<%@ include file="/footer.jsp" %>    
</body>
</html>