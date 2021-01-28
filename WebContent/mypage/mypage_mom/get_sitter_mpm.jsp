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
        <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/mypage/css/upd_mpm_detail.css">

        <style type="text/css">

 
        /** 두번째 항목 */



		</style>
    </head>

    <body>
        <div class="app">
            <div class="container">
                <div class="wrap_get_sitter">
                     <!-- header -->
                     <header class="mp_detail_tl">
                        <div class="row">
                            <div class="col-xs-12 mp_detail_tl_in">
                                <a href="mom_mypage.jsp">
                                    <i class="fas fa-times"></i>
                                </a>
                                <h3 class="center-block">내 구인 현황</h3>
                            </div>
                        </div>
                    </header>
                    <!-- end header -->
                    
                    <!-- content1 -->
                    <section class="group1_get_sitter">
                        <div class="row">
                            <div class="col-xs-12 get_sitter_tab">
                                <!-- 탭 버튼 영역 -->
                                <ul class="gs_tab_button">
                                    <li id="button1" class="gs_tab_item fi_selected">
                                        <a class="tab_button_item_link selected" href="#gs_tab_page_1">내가 신청한</a>
                                    </li>
                                    <li id="button2" class="gs_tab_item">
                                        <a class="tab_button_item_link" href="#gs_tab_page_2">내게 지원한</a>
                                    </li>
                                </ul>
                                <!-- end 탭 버튼 영역-->

                                <!-- 내용 영역 -->
                                <div class="gs_tab_panel">
                                    <!-- 내가 지원한 -->
                                    <div class="gs_tab_page" id="gs_tab_page_1">
                                        <div class="gs_appl">
                                            <div class="appl_img">
                                                <img src="../img/profile.png" alt="임시프로필">
                                            </div>
                                            <div class="gs_appl_cont">
                                                <p class="si_name">김○선 <span>(20세)</span></p>
                                                <p>희망시급:10,000원</p>
                                                <p>지원시간:2020.12.21 16:27</p>
                                                <div class="deny">
                                                    <p>아쉽게도 시터가 3시간 내에 응답을 주지 못했습니다.
                                                        <br>다른 시터에게 신청을 시작해보세요.
                                                    </p>
                                                </div>
                                            </div>
                                        </div> 
                                        
                                        <div class="gs_appl">
                                            <div class="appl_img">
                                                <img src="../img/profile.png" alt="임시프로필">
                                            </div>
                                            <div class="gs_appl_cont">
                                                <p class="si_name">전○리 <span>(64세)</span></p>
                                                <p>희망시급:11,000원</p>
                                                <p>지원시간:2020.12.25 17:07</p>
                                                <div class="success">
                                                    <p>
                                                        시터와 연결이 되었습니다. <br>
                                                    아래의 번호로 연락하여 인터뷰 시간을 조율할 수 있습니다.
                                                    </p>
                                                    <p class="si_phone"><mark>시터 번호 : 01012345678</mark></p>
                                                    <span>※ 아부해는 인터뷰 이후의 상황에 대하여 책임지지 않습니다.</span> 
                                                </div>
                                            </div>
                                        </div>
                                       
                                        <div class="gs_appl">
                                            <div class="appl_img">
                                                <img src="../img/profile.png" alt="임시프로필">
                                            </div>
                                            <div class="gs_appl_cont">
                                                <p class="si_name">전○리 <span>(64세)</span></p>
                                                <p>희망시급:11,000원</p>
                                                <p>지원시간:2020.12.25 17:07</p>
                                                <div class="deny">
                                                    <p>거절내용 : 차량픽업은 가능하나 저희 집에서 너무 머네요...</p>
                                                    <p>응답시간 : 2020.10.27 07:40</p>
                                                </div>
                                            </div>
                                        </div>
                                          
                                    </div>
                                    <!-- end 내가 지원한 -->

                                    <!-- 내게 신청한-->
                                    <div class="gs_tab_page hide" id="gs_tab_page_2" class="hide">
                                        <div class="gs_appl">
                                            <div class="appl_img">
                                                <img src="../img/profile.png" alt="임시프로필">
                                            </div>
                                            <div class="gs_appl_cont">
                                                <p class="si_name">김○선 <span>(20세)</span></p>
                                                <p>희망시급:10,000원</p>
                                                <p>지원시간:2020.12.21 16:27</p>
                                                <div class="deny">
                                                    <p>시터에게 내 거절의사를 전달했습니다.</p>
                                                </div>
                                            </div>
                                        </div> 
                                        <div class="gs_appl">
                                            <div class="appl_img">
                                                <img src="../img/profile.png" alt="임시프로필">
                                            </div>
                                            <div class="gs_appl_cont">
                                                <p class="si_name">김○선 <span>(20세)</span></p>
                                                <p>희망시급:10,000원</p>
                                                <p>지원시간:2020.12.21 16:27</p>
                                                <div class="success">
                                                    <p>
                                                        시터와 연결이 되었습니다. <br>
                                                    아래의 번호로 연락하여 인터뷰 시간을 조율할 수 있습니다.
                                                    </p>
                                                    <p class="si_phone"><mark>시터 번호 : 01012345678</mark></p>
                                                    <span>※ 아부해는 인터뷰 이후의 상황에 대하여 책임지지 않습니다.</span> 
                                                </div>
                                            </div>
                                        </div> 
                                    </div>
                                    <!-- end 내게 신청한-->
                                </div>
                            </div>
                        </div>
                    </section>
                    <!-- end content1 -->
                </div>
            </div>
        </div>
		<!-- Javascript -->
		<script src="<%=request.getContextPath()%>/assets/js/jquery.min.js"></script>
        <script src="<%=request.getContextPath()%>/assets/js/bootstrap.min.js"></script>
        <script type="text/javascript">
        	 $(function() {
                $(".gs_tab_item").click(function(e) {
                    e.preventDefault();

                    $(".gs_tab_item").not(this).removeClass("fi_selected");
                    $(this).addClass("fi_selected");

                    $(".gs_tab_item").not(this).find("a").removeClass("selected");
                    $(this).find("a").addClass("selected");

                    var target = $(this).find("a").attr("href");
                    $(target).removeClass("hide");
                    $(".gs_tab_panel > div").not($(target)).addClass("hide");
                });    
            });
        </script>
	</body>
</html>