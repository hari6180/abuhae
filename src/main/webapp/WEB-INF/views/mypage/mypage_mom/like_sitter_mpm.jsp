<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
        <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/upd_mpm_detail.css">
    </head>

    <body>
        <div id="app">
            <div class="container">
                <div class="wrap_like_sitter">
                    <!-- header -->
                    <header class="mp_detail_tl">
                        <div class="row">
                            <div class="col-xs-12 mp_detail_tl_in">
                                <a href="${pageContext.request.contextPath}/mypage/mypage_mom/mom_mypage.do?momno=${out.momno}">
                                    <i class="fas fa-times"></i>
                                </a>
                                <h3 class="center-block">찜한 맘시터 <span style="color: #ff7000;">2명</span></h3>
                            </div>
                        </div>
                    </header>
                    <!-- end header -->
                    
                    <!-- content1 -->
                    <section class="grouop1_like_sitter">
                        <div class="row">
                            <div class="col-xs-12 ls_tab">
                                <!-- 탭 메뉴 -->
                                <ul class="ls_tab_button">
                                    <li class="ls_tab_button_item pull-left">
                                        <a class="ls_tab_button_item_link selected" href="#ls_tab_page_1">
                                            <span class="glyphicon glyphicon-ok"></span> 전체
                                        </a>
                                    </li>
                                    <li class="ls_tab_button_item pull-left">
                                        <a class="ls_tab_button_item_link" href="#ls_tab_page_2">
                                            <span class="glyphicon glyphicon-ok"></span> 구직 중인 맘시터만
                                        </a>
                                    </li>
                                </ul>
                                <!-- 내용 영역 -->
                                <div class="ls_tab_panel">
                                    <!-- 전체 일자리 -->
                                    <div id="ls_tab_page_1">
                                     	<c:forEach var="item" items="${output}" varStatus="status">
	                                   		<div class="ls_page_cont" id="page_con_1">
	                                            <a href="${pageContext.request.contextPath}/page_detail/sitter_detail.do?sitterno=${item.sitterno}">
	                                            	<div class="ls_page_box">
		                                                <div class="ls_page_box_left">
		                                                    <img src="${pageContext.request.contextPath}/assets/img/mypage_img/profile.png" alt="임시프로필">
		                                                </div>
		                                                <div class="ls_page_box_right">
		                                                    <p style="font-size: 1em; font-weight: bold;">${item.name} <span style="color: #888888; font-size: 0.8em;">${item.reg_date}</p>
		                                                    <p style="color: #888888; font-size: 0.8em; font-weight: bold;">${item.si } ${item.gu } </p>
		                                                    <p style="color: #888888; font-size: 0.8em;">
		                                                        <span> ${item.birthdate}세</span> l <span>희망시급 ${item.payment }원</span> 
		                                                    </p>
		                                                </div>          
		                                            </div>
	                                            </a>
	                                        </div>
                                        </c:forEach>
                                        <!--  <a href="#ls_modal" data-toggle="modal">
                                            <div class="ls_page_cont no_work">
                                                <div class="ls_page_box">
                                                    <div class="ls_page_box_left">
                                                        <img src="${pageContext.request.contextPath}/assets/img/mypage_img/profile.png" alt="임시프로필">
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
                                                    <button type="button" class="garbage" href="#">
                                                        <i class="fas fa-trash-alt"></i>
                                                    </button>
                                                </div>
                                            </div>
                                        </a> -->
                                    </div>
                                    <!-- end 전체 일자리 -->

                                    <!-- 구인중인 일자리 -->
                                    <div id="ls_tab_page_2" class="hide">
                                    <c:forEach var="it" items="${output}" varStatus="status">
                                        <c:if test="${it.job_opening eq 'Y'.charAt(0)}">
                                        	<div class="ls_page_cont">
	                                            <div class="ls_page_box">
	                                                <div class="ls_page_box_left">
	                                                    <img src="${pageContext.request.contextPath}/assets/img/mypage_img/profile.png" alt="임시프로필">
	                                                    <br>

	                                                </div>
	                                                <div class="ls_page_box_right">
	                                                    <p style="font-size: 1em; font-weight: bold;">${it.name}<span style="color: #888888; font-size: 0.8em;">13시간 전 작성</p>
	                                                    <p style="color: #888888; font-size: 0.8em; font-weight: bold;">전북 군산시 경기 평택시 </p>
	                                                    <p style="color: #888888; font-size: 0.8em;">
	                                                        <span>${it.birthdate}세</span> l <span>희망시급 ${it.payment }원</span> 
	                                                    </p>
	                                                </div>          
	                                            </div>
	                                        </div>
                                        </c:if>
                                      </c:forEach>
                                    <!--end 구인 중인 일자리 -->
                                </div>
                            </div>
                        </div>

                    </section>

                    <!-- modal -->
                    <div id="ls_modal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="ls_mydal_label" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-body">
                                    <p>
                                        이 맘시터는 구직활동이 종료되어 <br>
                                        프로필 내용을 확인할 수 없습니다.
                                    </p>
                                    <button type="button" data-dismiss="modal">확인</button>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>

		<!-- Javascript -->
		<script src="<%=request.getContextPath()%>/assets/js/jquery.min.js"></script>
        <script src="<%=request.getContextPath()%>/assets/js/bootstrap.min.js"></script>

        <script>
           $(function() {
               /**  탭 버튼의 클릭 처리 */
               $(".ls_tab_button_item_link").click(function(e) {
                   // 페이지 이동 방지
                   e.preventDefault();

                   $(".ls_tab_button_item_link").not(this).removeClass("selected");

                   $(this).addClass("selected");

                   var target = $(this).attr("href");
                   $(target).removeClass("hide");
                   $(".ls_tab_panel > div").not($(target)).addClass("hide");
               });

               /** 임시 삭제 기능 */
               $(".garbage").click(function(e) {
                   var is_ok = confirm("정말 삭제하시겠습니까?");

                   if(is_ok) {
                    $(this).parents("#page_con_1").addClass("hide");
                   }
               });
           });
           
        </script>
	</body>
</html>