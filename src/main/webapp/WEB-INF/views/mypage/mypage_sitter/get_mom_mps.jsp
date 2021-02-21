<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/upd_mps_detail.css">

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
                                <a href="${pageContext.request.contextPath}/mypage/mypage_sitter/sitter_mypage.do">
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
                                    
                                        <hr>
                                        <div class="gm_appl">
                                            <img src="${pageContext.request.contextPath}/assets/img/mypage_img/profile.png" alt="임시프로필">
                                            <div class="gm_info">
                                                <p>부모</p>
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
                                        <%--<c:choose>
                                            조회결과가 없는경우 
                                           <c:when test="${output == null || fn:length(otuput) == 0}">
                                              <p>조회결과가 없습니다.</p>
                                           </c:when> --%>
                                           
                                           <%-- 조회결과가 있는 경우 --%>
                                           <%-- <c:otherwise> --%>
                                              <c:forEach var="item" items="${output}" varStatus="status">
                                 				<c:if test="${item.who == 's'}">
                                                 	<div class="gm_appl">
                                                     <img src="${pageContext.request.contextPath}/assets/img/mypage_img/profile.png" alt="임시프로필">
                                                     <div class="gm_info">
                                                         <p>${item.name} 부모</p>
                                                         <p>희망시급: ${item.payment} 원</p>
                                                         <p>지원시간: ${item.applydate} </p>
                                                         <p class="gm_endtime">
                                                            <%-- 인터뷰 요청에 응답하지 않았을 경우 --%>
                                                             <c:if test="${item.accept == null}">
                                                                <p class="wait_response">
                                                                   부모님이 내 답변을 기다리고 있습니다. <br>
                                                                   답변 마감 시간 : 2020.01.09 17:54 <!--답변 마감 시간은 신청일로 부터 3일-->
                                                               </p>
                                                             
                                                              <form id="agreeForm" action="${pageContext.request.contextPath}/mypage/edit_ok_accept">
                                                                 <input type="hidden" id="accept_edit1" name="momno" value="${item.momno}">
		                                                            <input type="hidden" id="accept_edit2" name="sitterno" value="${item.sitterno}">
		                                                            <input type="hidden" id="accept_edit3" name="cntno" value="${item.cntno}">
                                                                    <button type="submit" class="interview_ok">수락</button>
                                                              </form>
                                                              <button type="button" class="interview_no">거절</button>
                                                              
                                                              <div class="reason_deny hide">
                                                          		  <form id="denyForm" action="${pageContext.request.contextPath}/mypage/edit_ok_deny">
                                                          		  		<h5>거절 유형을 선택해주세요.</h5>
			                                                              <div class="deny_radio">
			                                                              	  <input type="hidden" id="accept_edit1" name="momno" value="${item.momno}">
			                                                                  <div>
			                                                                      <input type="radio" name="deny_type" id="deny1" class="deny" value="최근에 다른 부모님과 활동을 시작하였습니다.">
			                                                                      <label for="deny1">최근에 다른 부모님과 활동을 시작하였습니다.</label>
			                                                                  </div>
			                                                                  <div>
			                                                                      <input type="radio" name="deny_type" id="deny2" class="deny" value="다른 부모님과 인터뷰 후, 결과를 기다리고 있습니다.">
			                                                                      <label for="deny2">다른 부모님과 인터뷰 후, 결과를 기다리고 있습니다.</label>
			                                                                  </div>
			                                                                  <div>
			                                                                      <input type="radio" name="deny_type" id="deny3" class="deny" value="이동하기에 먼 거리입니다.">
			                                                                      <label for="deny3">이동하기에 먼 거리입니다.</label>
			                                                                  </div>
			                                                                  <div>
			                                                                      <input type="radio" name="deny_type" id="deny4" class="deny" value="요청하신 시간에는 어렵습니다.">
			                                                                      <label for="deny4">요청하신 시간에는 어렵습니다.</label>
			                                                                  </div>
			                                                                  <div>
			                                                                      <input type="radio" name="deny_type" id="deny5" class="deny" value="요청하신 활동은 자신있는 분야가 아닙니다.">
			                                                                      <label for="deny5">요청하신 활동은 자신있는 분야가 아닙니다.</label>
			                                                                  </div>
			                                                                  <div>
			                                                                      <input type="radio" name="deny_type" id="deny6" class="deny" value="아이 나이가 너무 어립니다.">
			                                                                      <label for="deny6">아이 나이가 너무 어립니다.</label>
			                                                                  </div>
			                                                                  <div>
			                                                                      <input type="radio" name="deny_type" id="deny7" class="deny" value="피치 못할 사정으로 앞으로 맘시터 활동이 어렵습니다.">
			                                                                      <label for="deny7">피치 못할 사정으로 앞으로 맘시터 활동이 어렵습니다.</label>
			                                                                  </div>
			                                                                  <div>
			                                                                      <input type="radio" name="deny_type" id="deny8" class="deny" value="그 밖에 다른 이유로 거절합니다.">
			                                                                      <label for="deny8">그 밖에 다른 이유로 거절합니다.</label>
			                                                                  </div>
			                                                              </div>
			                                                              <div>
			                                                                  <button type="submit">전송하기</button>
			                                                              </div>     
	                                                          		  </form>
	                                                          	  </div>
	                                                             </c:if>
	                                                             <%-- 인터뷰 요청을 수락했을 경우 --%>
	                                                             <c:if test="${item.accept == 'Y'}">
	                                                                <p>${item.phone} 여기로 연락해라</p>
	                                                             </c:if>
	                                                             <%-- 인터뷰 요청을 거절했을 경우 --%>
	                                                             <c:if test="${item.accept == 'N'}">
	                                                                <p>${item.deny_type}</p>
	                                                             </c:if> 
	                                                         </p>
	                                                     </div>
	                                                 </div>
	                                                 <hr>
                                        		</c:if>
                                              </c:forEach>
                                           <%-- </c:otherwise>
                                        </c:choose>--%>
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
                                        <button type="button" id="interview_no" 
                                        onclick="location.href='${pageContext.request.contextPath}/mypage/mypage_sitter/reason_deny.do'">거절</button>
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
      
        <!--Google CDN 서버로부터 jQuery 참조 -->
      <script src="//ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
      <!-- Javascript -->
        <script src="<%=request.getContextPath()%>/assets/js/bootstrap.min.js"></script>
      <!-- jQuery Ajax Form plugin CDN -->
      <script src="//cdnjs.cloudflare.com/ajax/libs/jquery.form/4.2.2/jquery.form.min.js"></script>
      <!-- jQuery Ajax Setup -->
      <script src="${pageContext.request.contextPath}/assets/ajax/ajax_helper.js"></script>
        <script type="text/javascript">
            $(function() {
               console.log("${output}");
               
               $("#agreeForm").ajaxForm({
                  method: "POST",
                  success: function(json) {
                     if (json.rt == "OK") {
                        window.location = "${pageContext.request.contextPath}/mypage/mypage_sitter/get_mom_mps.do";
                     }
                  }
               });
               
               $("#denyForm").ajaxForm({
                   method: "POST",
                   success: function(json) {
                      if (json.rt == "OK") {
                         window.location = "${pageContext.request.contextPath}/mypage/mypage_sitter/get_mom_mps.do";
                      }
                   }
                });
               
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
                
                $(".interview_ok").click(function(e) {
                   $(this).find(".reason_deny").addClass("hide");
                }); 
                
                $(".interview_no").click(function(e) {
                   e.preventDefault();
                   
                   $(this).next().removeClass("hide");
                });
                
            });
        </script>
   </body>
</html>