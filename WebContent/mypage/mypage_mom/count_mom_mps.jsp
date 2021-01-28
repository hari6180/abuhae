<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no"/>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<title>아이를부탁해</title>

		<!-- 모바일 웹 페이지 설정 -->
		<link rel="shortcut icon" href="<%=request.getContextPath()%>/assets/ico/favicon.ico" />
		<link rel="apple-touch-icon-precomposed" href="<%=request.getContextPath()%>/assets/ico/favicon.ico" />

		<!-- bootstrap -->
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/css/bootstrap.min.css" />

		<!-- noto Sans 웹 폰트 적용 -->
        <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/css/notosans.css" />
        
        <!-- icon 참조 -->
        <script src="https://kit.fontawesome.com/12ac058ac7.js" crossorigin="anonymous"></script>

         <!-- css 참조 -->
         <link rel="stylesheet" href="<%=request.getContextPath()%>/mypage/css/upd_mpm_detail.css">
    </head>

    <body>
        <div id="app">
            <div class="container">
                <div class="wrap_count_mom">
                    <!-- header -->
                    <header class="mp_detail_tl">
                        <div class="row">
                            <div class="col-xs-12 mp_detail_tl_in">
                                <a href="mom_mypage.jsp">
                                    <i class="fas fa-times"></i>
                                </a>
                                <h3 class="center-block">내 채용 내역</h3>
                            </div>
                        </div>
                    </header>
                    
                    <!-- 두번째 항목 -->
                    <section class="group1_count_mom">
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="total_count">
                                    <p>
                                        총 <span style="color: #ff7000;">1</span>회
                                    </p>
                                </div>
                                <div class="cm_page_cont">
                                    <div class="ls_page_cont no_work">
                                        <div class="ls_page_box">
                                            <div class="ls_page_box_left">
                                                <img src="../../mypage/img/profile.png" alt="임시프로필">
                                                <br>
                                                <div class="response_per">응답률88%</div>
                                            </div>
                                            <div class="ls_page_box_right">
                                                <p style="font-size: 1em; font-weight: bold;">송○예 <span style="color: #888888; font-size: 0.8em;">13시간 전 작성</p>
                                                <p style="color: #888888; font-size: 0.8em; font-weight: bold;">전북 군산시 경기 평택시 </p>
                                                <p style="color: #888888; font-size: 0.8em;">
                                                    <span>53세</span> l <span>희망시급 1,5000원</span> 
                                                </p>
                                                <p style="color: #888888; font-size: 0.7em;">
                                                    <span class="point">★★★★</span> 
                                                    <span>후기 155개</span> 
                                                    <span class="point">
                                                        <i class="fas fa-video"></i> CCTV 동의함
                                                    </span>
                                                </p>
                                            </div>          
                                        </div>
                                        <hr/>
                                        <div class="ls_page_box">
                                            <div class="ls_certify" style="font-size: 0.95em; font-weight: bold;">
                                                <div class="count_certify">
                                                    <span>확인된 인증</span> 
                                                    <span class="point">2개</span>
                                                </div>
                                                <div class="box_certify">
                                                    <div class="text_certify">엄마 인증</div>
                                                    <div class="text_certify">등초본 인증</div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>                      
                            </div>
                        </div>
                    </section>

                </div>
            </div>
        </div>

		<!-- Javascript -->
		<script src="<%=request.getContextPath()%>/assets/js/jquery.min.js"></script>
        <script src="<%=request.getContextPath()%>/assets/js/bootstrap.min.js"></script>

        <script>
           $(function() {
               /**  탭 버튼의 클릭 처리 */
               $(".tab-button-item-link").click(function(e) {
                   // 페이지 이동 방지
                   e.preventDefault();

                   $(".tab-button-item-link").not(this).removeClass("selected");

                   $(this).addClass("selected");

                   var target = $(this).attr("href");
                   $(target).removeClass("hide");
                   $(".tab-panel > div").not($(target)).addClass("hide");
               });
           });
           
        </script>
	</body>
</html>