<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전통 시장</title>
<%@ include file="/head.jsp" %>
<link rel="stylesheet" href="${hpath }/css/header2.css" />
<style>
#content {width: 100%;}
.breadcrumb { font-size: 0.9em; margin-bottom: 10px; color:rgb(134, 134, 134); text-align: center; }
#line {width: 100%; height: 10px; border-bottom: 1px solid #F24405;}
.page_head { display: block; width: 1200px; }
.imgwrap {width: 100vw; min-width: 1200px; overflow: hidden; height: 400px; position: relative; 
    border-top: 1px solid #f2522e; border-bottom: 1px solid #f2522e;}
.page_head img {position: absolute; width: 100%;  filter: brightness(90%); min-width: 2000px; filter: brightness(70%);}
.page_head p { position: absolute; left: 30px; top: 500px; z-index: 999; color: #fff; font-weight: 800; font-size: 50px; }
.contents1 {width: 1000px; text-align: center; margin: 50px auto;}
.contents1 p { line-height: 2em;}

#tab_wrap { clear: both; display: block; height: auto; margin: 50px}
.tab {display: block; width:1200px; margin: 0 auto;}
.tabcontent {}
.tabnav{display: flex;  font-size:0; width:1200px; }
.tabnav li{height:46px; width: 300px; text-align:center;}

.tabnav li a.active:before{background:#7ea21e;}
.tabnav li a.active{border-bottom:1px solid #fff;}
.tabnav li a{ display:block; background: #f8f8f8; color: #3a3a3a; line-height:46px; 
    font-size:16px; font-weight: 700; transition: 0.2s;}
.tabnav li a:hover{background:#c5f3d0; color:#313131; }
.tabnav li a.active{background:#f2522e; color:#fff; }
#tab3 img { display: block; width: 100%;}

.tourtitle {color: #f2522e;}

#content { width: 100%; }
.content_wrap {display: flex; flex-wrap: wrap; justify-content: center; margin-top: 40px;}
.content { width: 1200px; display: flex; margin-bottom: 20px;}
.img_left img { width: 600px; overflow: hidden;  border-bottom-left-radius: 40px; }
.img_right img { width: 600px; border-bottom-right-radius: 40px;}
.tourtitle {color: #f2522e;}
.mall_text { padding: 50px; line-height: 1.5em;}
</style>
</head>

<body>
<div id="content">
<%@ include file="/header.jsp" %>
    <div class="page_title"><h2>전통시장</h2></div>
    <div class="breadcrumb">숙박·쇼핑  > 전통시장</div>
	<div id="line"></div>
    <div class="page_head">
      
            <p>세계인들이 찾는<br>글로벌 명품시장으로 도약</p>
            <div class="imgwrap"><img src="${ hpath}/img/mall/main_top_jjmrn_up.png" alt="모래내 시장"></div>
    </div>
    <div id="tab_wrap">
        <nav class="tab">
            <ul class="tabnav">
                <li><a href="#tab01">남부시장</a></li>
                <li><a href="#tab02">신중앙시장</a></li>
                <li><a href="#tab03">모래내 알짜시장</a></li>
                <li><a href="#tab04">서부시장</a></li>
            
            </ul>
            <div class="tabcontent">
                <div id="tab01">
                    <section class="content_wrap">
                        <div class="content" id="page1">
                            <div class="img_left"><img src="${hpath }/img/mall/market_south_01.jpg" alt="남부시장1"></div>   
                            <div class="mall_text">
                                <h2 class="tourtitle">풍남문</h2><br><br>
                            
                                <p>옛 전주읍성의 남문이며 ‘풍남문’이라는 이름은 영조 43년(1767)화재로 소실된 것을 다시 지으면서 지금까지 전해지고 있다. 
                                    남부시장을 칭하여 풍남문 밖에 형성된 장이라 하여 ‘남밖장’이라고 하기도 했다. 
                                    전주의 4대문 중 유일하게 남아있는 보물 제308호이며, 
                                    매년 마지막 날 제야의 종 행사를 개최하여 지역민에게 사랑받는 보물이다.
                                </p>
                            </div>
                        </div> 
                        
                        <div class="content" id="page2">
                            <div class="mall_text">
                                <h2 class="tourtitle">새벽 도깨비시장</h2><br><br>
                                <p>남부시장 싸전다리와 천변 주변에 새벽 4시부터 아침 10시경 잠깐 서는 노점시장을 ‘도깨비시장’이라고 부른다. 
                                    시골에서 직접 기른 채소나 과일, 도매시장에서 들고 온 싱싱한 식자재들이 주로 유통된다. 
                                    갓 튀긴 도너츠나 국수 등 출출함을 달래주는 간식들도 새벽 도깨비시장의 별미이다.
                                </p>
                            </div>
                            <div class="img_right"><img src="${hpath }/img/mall/market_south_02.jpg" alt="남부시장2"></div>
                            
                        </div>

                       
                    </section>

                </div>
                <div id="tab02">
                    <section class="content_wrap">
                        <div class="content" id="page1">
                            <div class="img_left"><img src="${hpath }/img/mall/market_center_01.jpg" alt="중앙시장1"></div>   
                            <div class="mall_text">
                                <h2 class="tourtitle">다시 찾는 시장, 전주 신중앙시장</h2><br><br>
                            
                                <p>오프라인과 온라인이 가능한 시장
                                    지금은 반찬가게가 주류를 이루며, 농수산물, 축산물, 식료품, 의류 및 잡화를 우수한 품질과 저렴한 가격으로 지역민들에게 제공하고 있다. 
                                    모든 점포에서 온누리 상품권을 사용할 수 있으며, 모바일 온누리상품권, 제로페이 결재가 가능하며, 쇼핑카트와 택배서비스가 가능한 시장이다, 언택트 시대에 맞는 온라인 장보기 서비스 
                                    장바요도 제공 된다. 주차장이 3층으로 146면으로 편리한 무인 카드 정산 시스템으로 준비 하고 있어 이용이 더욱 편리하다. 
                                    시장은 매일 오전 8시부터 오후 8시까지 상설로 운영한다.
                                </p>
                            </div>
                        </div> 
                        
                        <div class="content" id="page2">
                            <div class="mall_text">
                                <h2 class="tourtitle">지역과 상생하는 시장</h2><br><br>
                                <p> 신중앙시장은 주말 오후의 추억의 포장마차거리를 지역민과 관광객들을 아우를 수 있는 메뉴로 운영되고 있었으나 지금은 시대적 코로나19로 잠정 중단된 상태이다. 
                                    신중앙시장은 지역 초등학생, 유치원 어린이들과 함께 시장체험을 하고, 온누리상품권으로 장을 보는 경제적 소비운동을 활성화 하고, 시장체험 글짓기를 올해로 12회 진행하고 있다. 
                                    고객 사진전을 공모하여 가족단위로 다시찾는 시장, 가족장보기로 활성화하고 있고, 올해로 11회 진행하고 있습니다. 
                                    지역 기관 국민연금 이외 30여곳과 함께 전통시장 소상공인 장보기를 진행하고 있다.
                                </p>
                            </div>
                            <div class="img_right"><img src="${hpath }/img/mall/market_center_02.jpg" alt="중앙시장2"></div>
                            
                        </div>

                        <div class="content" id="page3">
                            <div class="img_left"><img src="${hpath }/img/mall/market_center_03.jpg" alt="중앙시장3"></div>
                            <div class="mall_text">
                                <h2 class="tourtitle">전주 신중앙시장 발자취</h2> <br><br>
                                <p>전주신중앙시장은 1948년 점포 32개로 문을 연 시장이다. 
                                    교통 요충지로 최고의 상권을 갖추고 오랜 역사와 전통을 자랑하는 명실상부한 전통시장으로서 오늘날 여전히 문전성시를 이루고 있다. 
                                    현재는 문화관광형시장 및 현대화 사업 도입을 통해 시장을 찾는 손님들에게 쾌적한 환경을 제공하는 쿨링시스템, 공영주차장 운영과 남녀노소 누구나 즐길 수 있는 추억의 포장마차 거리에서 먹을거리, 차차차 도깨비 시장에서 즐길거리를 제공하여 새로운 전성기를 이어가는 중이다.
                                </p>
                            </div>
                        </div>
                    </section>
                </div>
                <div id="tab03">
                    <section class="content_wrap">
                        <div class="content" id="page1">
                            <div class="img_left"><img src="${hpath }/img/mall/market_mo_01.jpg" alt="모래내시장1"></div>   
                            <div class="mall_text">
                                <h2 class="tourtitle">전주 모래내 알짜시장은?</h2><br><br>
                            
                                <p>1970년대부터 형성된 모래내 알짜시장은 전주시 덕진구 인후2동, 진북동 일대에 위치하고 있으며 상설시장입니다.
                                    채소, 과일, 정육, 생선, 건어물, 의류, 잡화 등이 주거래를 이루고 있으며 전통시장의 싱싱한 맛을 그대로 느낄 수 있는 곳입니다.
                                    대형 주차장이 완비되어 있으며 값싸고 질 좋은 물건이 많아 인기 높은 전통시장입니다. 
                                    전주시와 가까운 완주 일대에 청정농산물이 직배송되며 모래내알짜시장에서는 언제나 청정 농산물을 만나 볼 수 있습니다.
                                </p>
                            </div>
                        </div> 
                        
                        <div class="content" id="page2">
                            <div class="mall_text">
                                <h2 class="tourtitle">모래내 시장 지도</h2><br><br>
                                                  
                    </section>
                    
                    <img src="${hpath }/img/mall/market_mo_map.jpg" alt="모래내시장지도">
                    
                </div>
                <div id="tab04">
                    <section class="content_wrap">
                        <div class="content" id="page1">
                            <div class="img_left"><img src="${hpath }/img/mall/market_west_01.jpg" alt="서부1"></div>   
                            <div class="mall_text">
                                <h2 class="tourtitle">청년에게 희망을! 전통시장에는 활력을!<br>
                                    전주 서부시장 청년몰 청춘시전</h2><br><br>
                            
                                <p>서부시장 청년몰 ‘청춘시전’은 전통시장 내 유휴공간을 활용한 청년 창업공간으로 2017년 6월 중소벤처기업부가 실시하는 ‘전통시장 청년몰 조성 사업’에 따라 조성되었다. 청춘시전은 아직 마흔이 되지 않은 젊은이들의 꿈과 패기가 뭉쳐진 창업공간으로 자신만의 사업을 시작하는 공간이다. 1층에는 젊은이들이 좋아하는 크레이프, 맥앤치즈, 코코넛 음료, 머핀 등 젊은이들의 취향에 맞는 간편 먹거리를 맛볼 수 있는 공간이 마련되어있고, 2층에는 아이디어 문화상품, 수공예선물용품 등 체험공간이 마련되어 있다. 또한 별관에는 곤충, 파충류 등을 체험할 수 있는 교육의 장이 마련되어 있다.

                                    전주시 완산구 효동2길 14-12 
                                    위치보기
                                    - 운영주체: 총괄(전주시), 청년상인 선발 및 관리(상인회)
                                    - 운영시간: 매주 화요일~일요일 11:00~21:00(월요일 정기휴무)
                                    - 입주대상: 전주시 거주 만 39세 이하의 사업자등록을 하지 않은 미취업 청년
                                    - 입주문의: 서부시장상점가 상인회(063-228-1616)
                                    전주시 일자리청년정책과(063-281-2494)
                                </p>
                            </div>
                        </div> 
                        
                        <div class="content" id="page2">
                            <div class="mall_text">
                                <h2 class="tourtitle">주차장 이용 안내</h2><br><br>
                                <p> 상점에서 10,000원 이상 제품 구입 시 무료 주차권 증정(1시간 15분)<br>
                                    주차권은 1차량당 당일 1장만 사용 가능<br>
                                    1일주차시 6,000원<br>
                                    1시간 15분 무료주차 후 30분 당 500원 추가
                                </p>
                            </div>
                            <div class="img_right"><img src="${hpath }/img/mall/market_west_02.jpg" alt="서부2"></div>
                            
                        </div>

                    </section>
                </div>
               
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
		    </script>
        </nav>
    </div>
</div>

    

    
    
    
<%@ include file="/footer.jsp" %>
</body>
</html>