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
		<link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/ico/favicon.ico" />
		<link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath}/assets/ico/favicon.ico" />

		<!-- bootstrap -->
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" />

		<!-- noto Sans 웹 폰트 적용 -->
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/notosans.css" />
        
        <!-- icon 참조 -->
        <script src="https://kit.fontawesome.com/12ac058ac7.js" crossorigin="anonymous"></script>

         <!-- css 참조 -->
         <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/upd_mps_detail.css">
    </head>

    <body>
        <div id="app">
            <div class="container">
                <div class="wrap_count_mom">
                    <!-- header -->
                    <header class="mp_detail_tl">
                        <div class="row">
                            <div class="col-xs-12 mp_detail_tl_in">
                                <a href="${pageContext.request.contextPath}/mypage/mypage_sitter/sitter_mypage.do">
                                    <i class="fas fa-times"></i>
                                </a>
                                <h3 class="center-block">내 맘시터 채용 횟수</h3>
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
                                    <div class="lm_page_box">
                                        <div class="cm_page_box_left">
                                            <img src="${pageContext.request.contextPath}/assets/img/mypage_img/profile.png" alt="임시프로필">
                                            <br>
                                            <span style="margin-top: 10px; width: 70px; padding: 5px 10px; background-color: #888888; border-radius: 15px;
                                            color: #ffffff; font-size: 0.7em; font-weight: bold;">
                                                0명 지원
                                            </span>
                                        </div>
                                        <div class="page-con-top-right">
                                            <p style="color: #888888; font-weight: bold; font-size: 1em;">신생아 1명 ㅣ <span style="color: #888888; font-size: 0.9em;">한 달 전</span></p>
                                            <p style="font-size: 1em; font-weight: bold;">실내놀이 맘시터 찾습니다.</p>
                                            <p style="color: #888888; font-size: 0.95em; font-weight: bold;">전북 군산시 ㅣ 이○림 ㅣ Invaild date</p>
                                            <p style="color: #888888; font-size: 0.95en;">
                                                <i class="fas fa-dollar-sign" style="color: #007e62;"></i> 희망시급 9,000원 <span style="color: black;"><strong>협의가능</strong></span>
                                            </p>
                                        </div>
                                        
                                    </div>
                                    <hr/>
                                    <div class="lm_page_days">
                                        <div class="lm_days" style="font-size: 0.95em; font-weight: bold;">
                                            <span style="margin-right: 10px; color: #888888;"><span style="color: #488f8f;">단기</span> -일 동안</span>
                                            <span style="padding: 2px; border: 1px solid rgb(226, 226, 226); background-color: rgb(226, 226, 226); color: #888888;">월</span>
                                            <span style="padding: 2px; border: 1px solid rgb(226, 226, 226); background-color: rgb(226, 226, 226); color: #888888;">화</span>
                                            <span style="padding: 2px; border: 1px solid rgb(226, 226, 226); background-color: rgb(226, 226, 226); color: #888888;">수</span>
                                            <span style="padding: 2px; border: 1px solid rgb(226, 226, 226); background-color: rgb(226, 226, 226); color: #888888;">목</span>
                                            <span style="padding: 2px; border: 1px solid rgb(226, 226, 226); background-color: rgb(226, 226, 226); color: #888888;">금</span>
                                            <span style="padding: 2px; border: 1px solid rgb(226, 226, 226); background-color: rgb(226, 226, 226); color: #888888;">토</span>
                                            <span style="padding: 2px; border: 1px solid rgb(226, 226, 226); background-color: rgb(226, 226, 226); color: #888888;">일</span>
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