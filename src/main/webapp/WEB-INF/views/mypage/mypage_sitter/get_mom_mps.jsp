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
        <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/mypage/css/upd_mps_detail.css">

        <style type="text/css">

 
        /** 두번째 항목 */



		</style>
    </head>

    <body>
        <div class="app">
            <div class="container">
                <div class="wrap_get_mom">
                     <!-- header -->
                     <header class="mp_detail_tl">
                        <div class="row">
                            <div class="col-xs-12 mp_detail_tl_in">
                                <a href="sitter_mypage.jsp">
                                    <i class="fas fa-times"></i>
                                </a>
                                <h3 class="center-block">내 구직 현황</h3>
                            </div>
                        </div>
                    </header>
                    <!-- end header -->
                    
                    <!-- content1 -->
                    <section class="group1_get_mom">
                        <div class="row">
                            <div class="col-xs-12 get_mom_tab">
                                <!-- 탭 버튼 영역 -->
                                <ul class="gm_tab_button">
                                    <li id="button1" class="gm_tab_item fi_selected">
                                        <a class="tab_button_item_link selected" href="#gm_tab_page_1">내가 지원한</a>
                                    </li>
                                    <li id="button2" class="gm_tab_item">
                                        <a class="tab_button_item_link" href="#gm_tab_page_2">내게 신청한</a>
                                    </li>
                                </ul>
                                <!-- end 탭 버튼 영역-->

                                <!-- 내용 영역 -->
                                <div class="gm_tab_panel">
                                    <!-- 내가 지원한 -->
                                    <div class="gm_tab_page" id="gm_tab_page_1">
                                        <div class="gm_appl">
                                            <img src="../img/profile.png" alt="임시프로필">
                                            <div class="gm_info">
                                                <p>김○선 부모</p>
                                                <p>희망시급:10,000원</p>
                                                <p>지원시간:2020.12.21 16:27</p>
                                            </div>
                                        </div> 
                                        <hr>
                                        <div class="gm_appl">
                                            <img src="../img/profile.png" alt="임시프로필">
                                            <div class="gm_info">
                                                <p>전○리 부모</p>
                                                <p>희망시급:11,000원</p>
                                                <p>지원시간:2020.12.25 17:07</p>
                                                <p class="gm_endtime">부모님이 개인사정으로 정해진 시간 내에 답변하지 못했습니다.
                                                    다른 부모님을 찾아보세요.
                                                </p>
                                            </div>
                                        </div>   
                                    </div>
                                    <!-- end 내가 지원한 -->

                                    <!-- 내게 신청한-->
                                    <div class="gm_tab_page hide" id="gm_tab_page_2" class="hide">
                                        <div class="gm_appl">
                                            <img src="../img/profile.png" alt="임시프로필">
                                            <div class="gm_info">
                                                <p>김○아 부모</p>
                                                <p>희망시급:9,000원</p>
                                                <p>지원시간:2020.01.06 17:54</p>
                                                <p class="wait_response">
                                                    부모님이 내 답변을 기다리고 있습니다. <br>
                                                    답변 마감 시간 : 2020.01.09 17:54 <!--답변 마감 시간은 신청일로 부터 3일-->
                                                </p>
                                                <a href="#res_modal" data-toggle="modal"><button type="button" class="response">답변하기</button></a>
                                            </div>
                                        </div>
                                        <hr>
                                        <div class="gm_appl">
                                            <img src="../img/profile.png" alt="임시프로필">
                                            <div class="gm_info">
                                                <p>남○재 부모</p>
                                                <p>희망시급:10,000원</p>
                                                <p>지원시간:2020.10.19 10:27</p>
                                                <p class="gm_endtime">
                                                    - 답변시간 초과 - <br>
                                                    아쉽게 답변시간을 놓치셨습니다.
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- end 내게 신청한-->
                                </div>
                            </div>
                        </div>
                    </section>
                    <!-- end content1 -->

                    <!-- modal -->
                    <div id="res_modal" class="modal fade" tabindex="-1" role="dialog" 
                    aria-labelledby="modalLabel" aria-hidden="true">
                        <!-- mocal-dialog -->
                        <div class="modal-dialog">
                            <!-- modal-content -->
                            <div class="modal-content">
                                <div class="modal-header">
                                    <div class="fund_500"><i class="fas fa-coins"></i>지금 응답하면, 적립금 500원</div>
                                </div>

                                <!-- 내용 -->
                                <div class="modal-body">
                                    <p>응답가능 시간 2 : 58 : 16초 남음</p>
                                    <p>맘시터 구인 1일째 - 희망시급 10,000원</p>
                                    <div class="modal_btn">
                                        <button type="button" id="interview_no" onclick="location.href='reason_deny.jsp'">거절</button>
                                        <button type="button" id="interview_ok">수락</button>
                                    </div>
                                </div>
                            </div>
                            <!-- //modal-content end -->
                        </div>
                        <!-- //modal-dailog end-->
                    </div>
                </div>
            </div>
        </div>
		<!-- Javascript -->
		<script src="<%=request.getContextPath()%>/assets/js/jquery.min.js"></script>
        <script src="<%=request.getContextPath()%>/assets/js/bootstrap.min.js"></script>
        <script type="text/javascript">
        	 $(function() {
                $(".gm_tab_item").click(function(e) {
                    e.preventDefault();

                    $(".gm_tab_item").not(this).removeClass("fi_selected");
                    $(this).addClass("fi_selected");

                    $(".gm_tab_item").not(this).find("a").removeClass("selected");
                    $(this).find("a").addClass("selected");

                    var target = $(this).find("a").attr("href");
                    $(target).removeClass("hide");
                    $(".gm_tab_panel > div").not($(target)).addClass("hide");
                }); 
                
                $("#interview_ok").click(function(e) {
                    var result = confirm("수락하시겠습니까?");

                    if (result) {
                        alert("수락하였습니다.");
                        location.href="get_mom_mps.jsp";
                    } else {
                        location.href="get_mom_mps.jsp";
                    }
                });
            });
        </script>
	</body>
</html>