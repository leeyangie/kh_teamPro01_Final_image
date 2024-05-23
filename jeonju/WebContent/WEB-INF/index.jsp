<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GO JEONJU</title>
<%@ include file="/head.jsp" %>
<style>
<%@ include file="/css/index_style.css" %>
</style>
</head>
<body>
<div id="content">
	<%@ include file="/header.jsp" %>
	<div class="contents" id="page1">
            <div id="main_img"></div>
            <div id="main_GJJ">
                <h1>GO</h1>
                <h1>JEON</h1>
                <h1>JU</h1>
            </div>
    </div>
    <div class="contents" id="page2">
        <div class="button_group">
            <div class="button" id="button1"><a href="tourcourse.html">지금 전주는!</a></div>
            <div class="button" id="button2"><a href="">축제·행사</a></div>
            <div class="button" id="button3"><a href="tourcourse.html">가이드 예약</a></div>
        </div>
        <div id="main_tour_wrap">
            <div id="arrow">
                <div id="arrow_wrap">
                    
                </div>
            </div>
           	<div class="swiper mySwiper">
                   <div class="swiper-wrapper">
                       <div class="swiper-slide">
                           <div class="tourcourse_wrap">
                               <a href="${hpath }/tour_guide" >
                                   <div class="main_tour" id="main_tour1">
                                       <figure class="img1"><img src="${hpath }/img/main/moon2.jpg" alt="전주한옥마을 골목길"></figure>
                                       <div class="main_tourtab">
                                           <div class="tourtab_head">
                                               <div class="tourtab_title">전주한옥마을</div>
                                               <div class="more">더보기</div>
                                           </div>
                                           <div class="tourtab_text">
                                               <p>오랜 역사를 간직한 전주한옥마을 골목여행은 어디에서 그 첫발을 내디디면 좋을까? 긴 시간이 축적된 만큼 신성한 기운마저 풍기는 600살의 은행나무 앞에서 시작해 보자.
                                                   이어서 빛을 계승한다는 의미의 승광재는 조선 마지막 황손 이석 황실문화재단 이사장이 거주하는 공간이며, 황실의 역사와 예법 등을 공유하는 장소이다. 
                                                   예약하면 예절, 떡메치기 등을 체험할 수 있다. 
                                               </p>
                                           </div>
                                           <div class="tourtab_icon_wrap">
                                               <div class="tourtab_icon">1</div>
                                               <h3>전동성당</h3>
                                           </div>
                                           <div class="tourtab_icon_wrap">
                                               <div class="tourtab_icon">2</div>
                                               <h3>부채문화관 최명희문학관</h3>
                                           </div>
                                           <div class="tourtab_icon_wrap">
                                               <div class="tourtab_icon">3</div>
                                               <h3>승광재</h3>
                                           </div>
                                           <div class="tourtab_icon_wrap">
                                               <div class="tourtab_icon">4</div>
                                               <h3>전통한지원</h3>
                                           </div>  
                                       </div>
                                   </div>
                               </a>
                           </div>
                       </div>
                       <div class="swiper-slide">
                           <div class="tourcourse_wrap">
                               <a href="${hpath }/tour_guide" >
                                   <div class="main_tour" id="main_tour2">
                                       <figure class="img1"><img src="${hpath }/img/main/gyeongijeon450X500.jpg" alt="경기전"></figure>
                                       <div class="main_tourtab">
                                           <div class="tourtab_head">
                                               <div class="tourtab_title">경기전</div>
                                               <div class="more">더보기</div>
                                           </div>

                                           <div class="tourtab_text">
                                               <p>경기전은 조선 왕조를 건국한 태조 이성계의 어진을 모신 곳이다. 한옥마을의 상징이 된 한복이 참 잘 어울리는 곳으로, 
                                                   요즘에는 개화기 의상이나 옛날 교복까지 어우러져 하나의 프레임 안에서 시간의 흐름을 오롯이 느끼게 해준다. 
                                               </p>
                                           </div>
                                           <div class="tourtab_icon_wrap">
                                               <div class="tourtab_icon">1</div>
                                               <h3>홍살문 - 외삼문 - 내삼문 </h3>
                                           </div>
                                           <div class="tourtab_icon_wrap">
                                               <div class="tourtab_icon">2</div>
                                               <h3>진전(태조어진)</h3>
                                           </div>
                                           <div class="tourtab_icon_wrap">
                                               <div class="tourtab_icon">3</div>
                                               <h3>전주사고</h3>
                                           </div>
                                           <div class="tourtab_icon_wrap">
                                               <div class="tourtab_icon">4</div>
                                               <h3>예종대왕 태실 및 비</h3>
                                           </div>  
                                       </div>
                                   </div>
                               </a>
                           </div>
                       </div>
                       <div class="swiper-slide">
                           <div class="tourcourse_wrap">
                               <a href="${hpath }/tour_guide" >
                                   <div class="main_tour" id="main_tour3">
                                       <figure class="img1"><img src="${hpath }/img/main/omok450X500.jpg" alt="태조 이성계 로드"></figure>
                                       <div class="main_tourtab">
                                           <div class="tourtab_head">
                                               <div class="tourtab_title">태조 이성계 로드</div>
                                               <div class="more">더보기</div>
                                           </div>

                                           <div class="tourtab_text">
                                               <p>이성계가 나라를 세우겠다고 다짐한 오목대와 이목대로 향하는 길에 켜진 조명이 야간경관을 은은한 빛으로 물들이고 
                                                   그 너머로 어둠을 밝히는 색색의 조명으로 아름답게 빛나는 전주한옥마을의 풍경도 만나볼 수 있는 곳이다.
                                               </p>
                                           </div>
                                           <div class="tourtab_icon_wrap">
                                               <div class="tourtab_icon">1</div>
                                               <h3>태조로쉼터 - 오목대 </h3>
                                           </div>
                                           <div class="tourtab_icon_wrap">
                                               <div class="tourtab_icon">2</div>
                                               <h3>자만벽화마을 - 이목대</h3>
                                           </div>
                                           <div class="tourtab_icon_wrap">
                                               <div class="tourtab_icon">3</div>
                                               <h3>최담 유허비</h3>
                                           </div>
                                           <div class="tourtab_icon_wrap">
                                               <div class="tourtab_icon">4</div>
                                               <h3>한벽당</h3>
                                           </div>  
                                       </div>
                                   </div>
                               </a>
                           </div>
                       </div>
                       <div class="swiper-slide">
                           <div class="tourcourse_wrap">
                               <a href="${hpath }/tour_guide" >
                                   <div class="main_tour" id="main_tour4">
                                       <figure class="img1"><img src="${hpath }/img/main/gyeongijeon450X500.jpg" alt="전주부성 옛길"></figure>
                                       <div class="main_tourtab">
                                           <div class="tourtab_head">
                                               <div class="tourtab_title">전주부성 옛길</div>
                                               <div class="more">더보기</div>
                                           </div>

                                           <div class="tourtab_text">
                                               <p>전주부성길은 조선 시대 호남과 제주도를 관할하던 전주의 옛 명칭인 '전주부'(全州府)를 두르는 성곽을 따라 만든 길이다. 
                                                   전주 옛도심을 아우르는 약 3.2㎞구간의 전주부성길을 따라 걸으면 자연스럽게 전주의 관광명소를 만날 수 있다. 
                                               </p>
                                           </div>
                                           <div class="tourtab_icon_wrap">
                                               <div class="tourtab_icon">1</div>
                                               <h3>풍남문 - 고물자 골목 - 공익질옥  </h3>
                                           </div>
                                           <div class="tourtab_icon_wrap">
                                               <div class="tourtab_icon">2</div>
                                               <h3>수다작 - 미래유산 행원</h3>
                                           </div>
                                           <div class="tourtab_icon_wrap">
                                               <div class="tourtab_icon">3</div>
                                               <h3>유기방 - 필방 - 고미술거리</h3>
                                           </div>
                                           <div class="tourtab_icon_wrap">
                                               <div class="tourtab_icon">4</div>
                                               <h3>전라감영</h3>
                                           </div>  
                                       </div>
                                   </div>
                               </a>
                           </div>
                       </div>
                       <div class="swiper-slide">
                           <div class="tourcourse_wrap">
                               <a href="${hpath }/tour_guide" >
                                   <div class="main_tour" id="main_tour5">
                                       <figure class="img1"><img src="${hpath }/img/main/hyanggyo450X500.jpg" alt="향교 선비길 투어"></figure>
                                       <div class="main_tourtab">
                                           <div class="tourtab_head">
                                               <div class="tourtab_title">향교 선비길 투어</div>
                                               <div class="more">더보기</div>
                                           </div>

                                           <div class="tourtab_text">
                                               <p>조선시대 지방교육의 요람,전주향교
                                                   전주향교는 지금의 중·고등학교에 해당하는 조선시대 교육기관으로 고려 공민왕 3년(1354년)에 창건되어 
                                                   조선 선조 36년(1603년)순찰사 장만(張晩)이 좌사우묘지제(左社右廟之制)에 어긋난다고 조정에 품신하여 왕의 재가를 받아 현재의 위치로 이전하였다.
                                               </p>
                                           </div>
                                           <div class="tourtab_icon_wrap">
                                               <div class="tourtab_icon">1</div>
                                               <h3>당산나무 - 양사재 </h3>
                                           </div>
                                           <div class="tourtab_icon_wrap">
                                               <div class="tourtab_icon">2</div>
                                               <h3>전통문화연수원(장현식고택)</h3>
                                           </div>
                                           <div class="tourtab_icon_wrap">
                                               <div class="tourtab_icon">3</div>
                                               <h3>전주향교 - 향교길</h3>
                                           </div>
                                           <div class="tourtab_icon_wrap">
                                               <div class="tourtab_icon">4</div>
                                               <h3>남천교 청연루</h3>
                                           </div>  
                                       </div>
                                   </div>
                               </a>
                           </div>
                       </div>
                       <div class="swiper-slide">
                           <div class="tourcourse_wrap">
                               <a href="${hpath }/tour_guide" >
                                   <div class="main_tour" id="main_tour6">
                                       <figure class="img1"><img src="${hpath }/img/main/jeonlagamyoung450X500.jpg" alt="전라감영"></figure>
                                       <div class="main_tourtab">
                                           <div class="tourtab_head">
                                               <div class="tourtab_title">전라감영</div>
                                               <div class="more">더보기</div>
                                           </div>

                                           <div class="tourtab_text">
                                               <p>전라감영은 전주한옥마을과 가까워 도보로 이동하기 좋고 자유로운 관람과 정기해설투어까지 참여할 수 있는 문화공간이다. 
                                                   전라감영에 방문하면 내삼문을 통과해 안으로 들어서자마자 눈앞에 보이는 선화당의 웅장한 모습에 한번, 실제 역사 속으로 들어와 있는 듯 생생히 복원된 전라감영의 규모에 또 한번 놀라게 된다. 
                                                   
                                               </p>
                                           </div>
                                           <div class="tourtab_icon_wrap">
                                               <div class="tourtab_icon">1</div>
                                               <h3>내삼문 - 선화당</h3>
                                           </div>
                                           <div class="tourtab_icon_wrap">
                                               <div class="tourtab_icon">2</div>
                                               <h3>내아 행랑채</h3>
                                           </div>
                                           <div class="tourtab_icon_wrap">
                                               <div class="tourtab_icon">3</div>
                                               <h3>내아</h3>
                                           </div>
                                           <div class="tourtab_icon_wrap">
                                               <div class="tourtab_icon">4</div>
                                               <h3>연신당 - 관풍각</h3>
                                           </div>  
                                       </div>
                                   </div>
                               </a>
                           </div>
                       </div>
                   </div>
                   <div class="swiper-button-next"></div>
                   <div class="swiper-button-prev"></div>
               </div>
           </div>
       </div>

    <!-- Swiper JS -->
  <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>

  <!-- Initialize Swiper -->
  <script>
    var swiper = new Swiper(".mySwiper", {
      slidesPerView: 1,
      spaceBetween: 30,
      loop: true,
      
      navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
      },
    });
  </script>

    <div class="contents" id="page3">
        <div class="title">전주 추천명소</div>
        <div class="subtitle">여행 계획에 꼭 참고해야 할 전주 명소</div>
        <div class="box_group">
            <div class='slide-track'>
            <div class="box_wrap">
                <div class="train-card"><a href="http://www.jeondong.or.kr/main/?load_popup=1">
                    <div class="box" id="box1">
                        <img src="${hpath }/img/main/church.jpg" alt="전동성당">
                    </div>
                    <table>
                        <tr>
                            <th>장소</th>
                            <td>전동성당</td>
                        </tr>
                        <tr>
                            <th>위치</th>
                            <td>정확한 위치</td>
                        </tr>
                    </table>
                </a></div>
            </div>
            <div class="box_wrap">
                <div class="train-card"><a href="https://www.jeonju.go.kr/qrcode/101.jsp?landingurl=101">
                    <div class="box" id="box2">
                        <img src="${hpath }/img/main/box2.jpg" alt="경기전">
                    </div>
                    <table>
                        <tr>
                            <th>장소</th>
                            <td>경기전</td>
                        </tr>
                        <tr>
                            <th>위치</th>
                            <td>정확한 위치</td>
                        </tr>
                    </table>
                </a></div>
            </div>
            <div class="box_wrap">
                <div class="train-card"><a href="https://www.jbcia.or.kr/board/bbs/board.php?bo_table=tour&wr_id=163&&sca=%EC%A0%84%EC%A3%BC%EC%8B%9C&lnb=6010">
                    <div class="box" id="box3">
                        <img src="${hpath }/img/main/box3.jpg" alt="아중호수">
                    </div>
                    <table>
                        <tr>
                            <th>장소</th>
                            <td>아중호수</td>
                        </tr>
                        <tr>
                            <th>위치</th>
                            <td>정확한 위치</td>
                        </tr>
                    </table>
                </a></div>
            </div>
            <div class="box_wrap">
                <div class="train-card"><a href="https://www.ex.co.kr/arboretum/">
                    <div class="box" id="box3">
                        <img src="${hpath }/img/main/sumok.jpg" alt="아중호수">
                    </div>
                    <table>
                        <tr>
                            <th>장소</th>
                            <td>한국도로공사수목원</td>
                        </tr>
                        <tr>
                            <th>위치</th>
                            <td>정확한 위치</td>
                        </tr>
                    </table>
                </a></div>
            </div>
            <div class="box_wrap">
                <div class="train-card"><a href="http://www.jeondong.or.kr/main/?load_popup=1">
                    <div class="box" id="box1">
                        <img src="${hpath }/img/main/church.jpg" alt="전동성당">
                    </div>
                    <table>
                        <tr>
                            <th>장소</th>
                            <td>전동성당</td>
                        </tr>
                        <tr>
                            <th>위치</th>
                            <td>정확한 위치</td>
                        </tr>
                    </table>
                </a></div>
            </div>
            <div class="box_wrap">
                <div class="train-card"><a href="https://www.jeonju.go.kr/qrcode/101.jsp?landingurl=101">
                    <div class="box" id="box2">
                        <img src="${hpath }/img/main/box2.jpg" alt="경기전">
                    </div>
                    <table>
                        <tr>
                            <th>장소</th>
                            <td>경기전</td>
                        </tr>
                        <tr>
                            <th>위치</th>
                            <td>정확한 위치</td>
                        </tr>
                    </table>
                </a></div>
            </div>
            <div class="box_wrap">
                <div class="train-card"><a href="https://www.jbcia.or.kr/board/bbs/board.php?bo_table=tour&wr_id=163&&sca=%EC%A0%84%EC%A3%BC%EC%8B%9C&lnb=6010">
                    <div class="box" id="box3">
                        <img src="${hpath }/img/main/box3.jpg" alt="아중호수">
                    </div>
                    <table>
                        <tr>
                            <th>장소</th>
                            <td>아중호수</td>
                        </tr>
                        <tr>
                            <th>위치</th>
                            <td>정확한 위치</td>
                        </tr>
                    </table>
                </a></div>
            </div>
            <div class="box_wrap">
                <div class="train-card"><a href="https://www.ex.co.kr/arboretum/">
                    <div class="box" id="box3">
                        <img src="${hpath }/img/main/sumok.jpg" alt="아중호수">
                    </div>
                    <table>
                        <tr>
                            <th>장소</th>
                            <td>한국도로공사수목원</td>
                        </tr>
                        <tr>
                            <th>위치</th>
                            <td>정확한 위치</td>
                        </tr>
                    </table>
                </a></div>
            </div>
            <div class="box_wrap">
                <div class="train-card"><a href="http://www.jeondong.or.kr/main/?load_popup=1">
                    <div class="box" id="box1">
                        <img src="${hpath }/img/main/church.jpg" alt="전동성당">
                    </div>
                    <table>
                        <tr>
                            <th>장소</th>
                            <td>전동성당</td>
                        </tr>
                        <tr>
                            <th>위치</th>
                            <td>정확한 위치</td>
                        </tr>
                    </table>
                </a></div>
            </div>
            <div class="box_wrap">
                <div class="train-card"><a href="https://www.jeonju.go.kr/qrcode/101.jsp?landingurl=101">
                    <div class="box" id="box2">
                        <img src="${hpath }/img/main/box2.jpg" alt="경기전">
                    </div>
                    <table>
                        <tr>
                            <th>장소</th>
                            <td>경기전</td>
                        </tr>
                        <tr>
                            <th>위치</th>
                            <td>정확한 위치</td>
                        </tr>
                    </table>
                </a></div>
            </div>
            <div class="box_wrap">
                <div class="train-card"><a href="https://www.jbcia.or.kr/board/bbs/board.php?bo_table=tour&wr_id=163&&sca=%EC%A0%84%EC%A3%BC%EC%8B%9C&lnb=6010">
                    <div class="box" id="box3">
                        <img src="${hpath }/img/main/box3.jpg" alt="아중호수">
                    </div>
                    <table>
                        <tr>
                            <th>장소</th>
                            <td>아중호수</td>
                        </tr>
                        <tr>
                            <th>위치</th>
                            <td>정확한 위치</td>
                        </tr>
                    </table>
                </a></div>
            </div>
            <div class="box_wrap">
                <div class="train-card"><a href="https://www.ex.co.kr/arboretum/">
                    <div class="box" id="box3">
                        <img src="${hpath }/img/main/sumok.jpg" alt="아중호수">
                    </div>
                    <table>
                        <tr>
                            <th>장소</th>
                            <td>한국도로공사수목원</td>
                        </tr>
                        <tr>
                            <th>위치</th>
                            <td>정확한 위치</td>
                        </tr>
                    </table>
                </a></div>
            </div>
            </div>
        </div>
    </div>
    <div class="contents" id="page4">
        <div class="title">체험하는 전주</div>
        <div class="subtitle">직접 느끼는 전주의 매력</div>
        <div id="box2_group">
            <div id="box2_wrap">
                <div class="box2" id="box2_1"><a href="${hpath }/festival_list">한복문화주간</a></div>
                <div class="box2" id="box2_2"><a href="${hpath }/festival_list">전주대사습놀이</a></div>
                <div class="box2" id="box2_3"><a href="${hpath }/festival_list">전주세계소리축제</a></div>
                <div class="box2" id="box2_4"><a href="${hpath }/festival_list">전주정원박람회</a></div>

            </div>
        </div>
    </div>

    <div class="contents" id="page5">
        <div class="page_wrap">
            <ul class="icon_lst">
               
                <li>
                    <a href="${hpath }/tour_guide">
                        <div class="icon_fr"><img src="${hpath }/img/icon/img_link04.png" alt="아이콘2"></div>
                        <h3 class="icon_tit">도보 해설투어</h3>
                    </a>
                </li>
                <li>
                    <a target="_blank" href="https://www.agoda.com/ko-kr/city/jeonju-si-kr.html?site_id=1922868&tag=89250035-e814-47b1-9131-303a7e936f96&gad_source=1&device=c&network=g&adid=693618693758&rand=18421755192373108443&expid=&adpos=&aud=kwd-343251542145&gclid=Cj0KCQjwxqayBhDFARIsAANWRnQ4rBbAlvL87l-eHeAuNYlJ9y5r5Uw65BINAZxm1VOwpC3sfJLAnZwaAvpFEALw_wcB&pslc=1">
                        <div class="icon_fr"><img src="${hpath }/img/icon/img_link08.png" alt="아이콘3"></div>
                        <h3 class="icon_tit">숙박</h3>
                    </a>
                </li>
                <li>
                    <a href="${hpath }/cheongnyeon_mall">
                        <div class="icon_fr"><img src="${hpath }/img/icon/img_link02.png" alt="아이콘4"></div>
                        <h3 class="icon_tit">쇼핑</h3>
                    </a>
                </li>
                <li>
                    <a href="${hpath }/traffic">
                        <div class="icon_fr"><img src="${hpath }/img/icon/img_link05.png" alt="아이콘5"></div>
                        <h3 class="icon_tit">대중교통</h3>
                    </a>
                </li>
                <li>
                    <a href="${hpath }/map">
                        <div class="icon_fr"><img src="${hpath }/img/icon/img_link01.png" alt="아이콘6"></div>
                        <h3 class="icon_tit">관광지도</h3>
                    </a>
                </li>
                <li>
                    <a href="${hpath }/notice_list">
                        <div class="icon_fr"><img src="${hpath }/img/icon/img_quick01.png" alt="아이콘7"></div>
                        <h3 class="icon_tit">공지사항</h3>
                    </a>
                </li>
                <li>
                    <a href="${hpath }/qna_list">
                        <div class="icon_fr"><img src="${hpath }/img/icon/img_quick01.png" alt="아이콘8"></div>
                        <h3 class="icon_tit">QnA</h3>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</div>
<%@ include file="/footer.jsp" %>
</body>
</html>