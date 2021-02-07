<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ page trimDirectiveWhitespaces="true" %> <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <%@
taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>아이를부탁해</title>

    <!-- 모바일 웹 페이지 설정 -->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/ico/favicon.ico" />
    <link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath}/assets/ico/favicon.ico" />
    <!-- bootstrap -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" />
    <!-- noto Sans 웹 폰트 적용 -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/notosans.css" />
    <!-- fontawesome(글리피콘) 적용 -->
    <script src="https://kit.fontawesome.com/f27ac0bcc1.js" crossorigin="anonymous"></script>

    <!-- animaition 적용-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css" />

    <!-- job_search.css-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/job_search.css" />

    <!-- sweetalert 사용 -->
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

   <%--  <!-- ajax Helper -->
    <script src="${pageContext.request.contextPath}/plugins/ajax/ajax_helper.js"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/ajax/ajax_helper.css" />
 --%>    
        <!-- Javascript -->
    <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
    <!-- jquery 파일명 수정 -->
    <script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
    <script type="text/Javascript">
      $(document).ready(function () {
        // 무한 스크롤 1218 하리
    /*     $(document).scroll(function () {
          var maxHeight = $(document).height();
          var currentScroll = $(window).scrollTop() + $(window).height();

          if (maxHeight <= currentScroll + 10) {
            $.ajax({
              // 결과를 읽어올 URL
              url: "job_item_group.html",
              // 웹 프로그램에게 데이터를 전송하는 방식.
              // 생략할 경우 get으로 자동 지정됨
              method: "get",
              // 전달할 조건값은 JSON 형식으로 구성
              // 사용하지 않을 경우 명시 자체를 생략할 수 있다.
              data: {},
              // 읽어올 내용의 형식(생략할 경우 json)
              dataType: "html",
              // 읽어온 내용을 처리하기 위한 함수
              success: function (req) {
                // 준비된 요소에게 읽어온 내용을 출력한다.
                $("#result").append(req);
              },
            }); // end $.ajax */
          }
        });
      });


      $(function () {
        // 헤더 메뉴 load처리 1224 하리
        //$("#menu").load("${pageContext.request.contextPath}/index_header.html"); - 210124 include 변경

        // 상세 페이지 연동 1220 하리
        $(".job_item_group").on("click", function () {
          location.href = "${pageContext.request.contextPath}/page_detail/mom_page_detail/mom_page_detail_calendar.do";
        });

        /** 상세 검색 ------------------------------------------------------------------- */

        // 아이나이 버튼 클릭
        $(".ages").click(function (e) {
          //버튼 클릭시 클래스 변경
          $(this).toggleClass("select_btn_detail");
          //버튼 클릭시 text 색 변경
          $(this).find("i").toggleClass("select_text_detail");
          $(this).find("span").toggleClass("select_text_detail");
        });

        // 돌봄요일 버튼 클릭
        $(".care_day").click(function (e) {
          //버튼 클릭시 클래스 변경
          $(this).toggleClass("select_btn_detail");
          //버튼 클릭시 text 색 변경
          $(this).find("div").toggleClass("select_text_detail");
        });

        // 돌봄 시간대 버튼 클릭
        $(".time_range").click(function (e) {
          //버튼 클릭시 클래스 변경
          $(this).toggleClass("select_btn_detail");
          //버튼 클릭시 text 색 변경
          $(this).find("span").toggleClass("select_text_detail");
        });

        // 돌봄 종류 버튼 클릭
        $(".activity_type_btn").click(function (e) {
          //버튼 클릭시 클래스 변경
          $(this).toggleClass("select_act_btn");
          //버튼 클릭시 text 색 변경
          $(this).find("i").toggleClass("select_act_btn");
        });

       	// 리셋 버튼 0109 하리
		$("#reset_detail").click(function (e) {
          e.preventDefault();
          $("#job_search_detail_modal .modal_content *").removeClass("select_btn_detail");
          $("#job_search_detail_modal .modal_content *").removeClass("select_text_detail");
          $("#job_search_detail_modal .modal_content *").removeClass("select_act_btn");
          $(".kids").prop("checked", false);
          $("#min_pay").val('');
          $("#max_pay").val('');
        });

        /** 상세 검색 end ------------------------------------------------------------------- */

        /** 주소 선택 모달 ------------------------------------------------------------------- */

        //시 클릭했을 때
        $(".loc_btn").on("click", function () {
          var select = $(this).hasClass("select_location");
          //선택이 안되어있을때
          if (select == false) {
            //선택이 되어있는 요소 탐색
            var loc = $("#si").find("button").removeClass("select_loaction");
            //console.log(loc);
            $(this).addClass("select_loaction");
            //시 선택하면 gu 보이게
            $("#gu>div").removeClass("hide_content");
            $("#gu button").removeClass("hide_content");
            $("#gu>div").addClass("show_content");
          }
        });
        //구 클릭했을 때
        $("#gu button").on("click", function () {
          var select = $(this).hasClass("select_location");
          //선택이 안되어있을때
          if (select == false) {
            //선택이 되어있는 요소 탐색
            var loc = $("#gu").find("button").removeClass("select_loaction hide_content");
            //console.log(loc);
            $(this).addClass("select_loaction");
            //구 선택하면 동 보이게
            $("#dong>div").removeClass("hide_content");
            $("#dong button").removeClass("hide_content");
            $("#dong>div").addClass("show_content");
          }
        });

        //동 클릭했을때
        $("#dong button").on("click", function () {
          var select = $(this).hasClass("select_location");
          //선택이 안되어있을때
          if (select == false) {
            //선택이 되어있는 요소 탐색
            var loc = $("#dong").find("button").removeClass("select_loaction hide_content");
            //console.log(loc);
            $(this).addClass("select_loaction");

            $.ajax({
              type: "GET", //get방식으로 통신
              url: "${pageContext.request.contextPath}join/sitter/location_result.html", //탭의 data-tab속성의 값으로 된 html파일로 통신
              dataType: "html", //html형식으로 값 읽기
              error: function () {
                //통신 실패시 ㅠㅠ
                alert("통신실패!");
              },
              success: function (data) {
                //통신 성공시 탭 내용을 담는 div를 읽어들인 값으로 채우기
                $(".select_box").html(data);
                var now = $(".next_btn").prop("disabled");
                //가져온 값 역으로 변경하여 다시 적용
                $(".next_btn").prop("disabled", !now);
              },
            });
          }
        });


		// 리셋 0109 하리
        $("#reset_loc").on("click", function (e) {
          e.preventDefault();
          $(".loc_btn").removeClass("select_loaction");
          $("#gu button").removeClass("select_loaction");
          $("#gu button").addClass("hide_content");
          $("#dong button").removeClass("select_loaction");
          $("#dong button").addClass("hide_content");
        });
        /** 주소 선택 모달 end ------------------------------------------------------------------- */

        /** 찜하기 ------------------------------------------------------------------- */
        $(".swapHeart").on("click", function (e) {
          event.stopPropagation(); // 버블링 방지 1220 하리
          var $jim = $(this);

          // 찜할 때 alert창과 glyphicon변형
          if ($(this).find("span").hasClass("glyphicon-heart-empty")) {
            $(this).find("span").removeClass("glyphicon-heart-empty");
            $(this).find("span").addClass("glyphicon-heart");
            swal("찜 하기 완료!", "마이페이지 > 찜한 맘시터에서 확인할 수 있습니다.");
          }
          // 찜 취소할 때 alert창과 glyphicon변형
          else {
            swal("찜 하기 취소");
            $(this).find("span").addClass("glyphicon-heart-empty");
          }
        });
        /** 찜하기 end ------------------------------------------------------------------- */

        // 드롭다운 선택 - 0109 하리
         $(".dr_option").click(function () {
          $(this).addClass("active");
        $(".dr_option").not(this).removeClass("active");
           $("#orderby").html($(this).find("a").html());
         });

      });
    </script>
  </head>

  <!--grid 사용시 col-xs-nn 사용-->
  <body>
    <div id="app">
      <div class="container">
        <%@ include file="../index_header.jsp" %>

        <!-- search -->
        <div id="search">
          <div class="container-fluid col-xs-12">
            <div class="search_wrap">
              <!-- location modal -->
              <div id="location_modal" class="modal col-xs-12" data-toggle="tab" tabindex="-1" role="dialog" aria-labelledby="location_label" aria-hidden="true">
                <div class="location_header">
                  <button id="reset_loc" class="reset" type="reset">
                    <i class="fas fa-undo-alt"></i>
                  </button>
                  <h1>돌봄 지역</h1>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <i class="fas fa-times"></i>
                  </button>
                </div>
                <!--지역 선택-->
                <div class="location_box">
                  <!--시,도-->
                  <div class="location_group" id="si">
                    <div>
                      <button class="loc_btn">서울특별시</button>
                    </div>
                    <div>
                      <button class="loc_btn">경기도</button>
                    </div>
                    <div>
                      <button class="loc_btn">인천광역시</button>
                    </div>
                    <div>
                      <button class="loc_btn">부산광역시</button>
                    </div>
                    <div>
                      <button class="loc_btn">대전광역시</button>
                    </div>
                    <div>
                      <button class="loc_btn">대구광역시</button>
                    </div>
                    <div>
                      <button class="loc_btn">울산광역시</button>
                    </div>
                    <div>
                      <button class="loc_btn">세종특별자치시</button>
                    </div>
                    <div>
                      <button class="loc_btn">광주광역시</button>
                    </div>
                    <div>
                      <button class="loc_btn">강원도</button>
                    </div>
                    <div>
                      <button class="loc_btn">충청북도</button>
                    </div>
                    <div>
                      <button class="loc_btn">충청남도</button>
                    </div>
                    <div>
                      <button class="loc_btn">경상북도</button>
                    </div>
                    <div>
                      <button class="loc_btn">경상남도</button>
                    </div>
                    <div>
                      <button class="loc_btn">전라북도</button>
                    </div>
                    <div>
                      <button class="loc_btn">전라남도</button>
                    </div>
                    <div>
                      <button class="loc_btn">제주특별자치도</button>
                    </div>
                  </div>
                  <!--end 시-->
                  <!--구-->
                  <div class="location_group" id="gu">
                    <div class="hide_content">
                      <div>
                        <button>강남구</button>
                      </div>
                      <div>
                        <button>강동구</button>
                      </div>
                      <div>
                        <button>강북구</button>
                      </div>
                      <div>
                        <button>강서구</button>
                      </div>
                      <div>
                        <button>관악구</button>
                      </div>
                      <div>
                        <button>광진구</button>
                      </div>
                      <div>
                        <button>구로구</button>
                      </div>
                      <div>
                        <button>금천구</button>
                      </div>
                      <div>
                        <button>노원구</button>
                      </div>
                      <div>
                        <button>도봉구</button>
                      </div>
                      <div>
                        <button>동대문구</button>
                      </div>
                      <div>
                        <button>동작구</button>
                      </div>
                      <div>
                        <button>마포구</button>
                      </div>
                      <div>
                        <button>서대문구</button>
                      </div>
                      <div>
                        <button>서초구</button>
                      </div>
                      <div>
                        <button>성동구</button>
                      </div>
                      <div>
                        <button>성북구</button>
                      </div>
                      <div>
                        <button>송파구</button>
                      </div>
                      <div>
                        <button>양천구</button>
                      </div>
                      <div>
                        <button>영등포구</button>
                      </div>
                      <div>
                        <button>용산구</button>
                      </div>
                      <div>
                        <button>은평구</button>
                      </div>
                      <div>
                        <button>종로구</button>
                      </div>
                      <div>
                        <button>중구</button>
                      </div>
                      <div>
                        <button>중랑구</button>
                      </div>
                    </div>
                  </div>
                  <!--end 구-->
                  <!--동-->
                  <div class="location_group" id="dong">
                    <div class="hide_content">
                      <div>
                        <button>가산동</button>
                      </div>
                      <div>
                        <button>독산1동</button>
                      </div>
                      <div>
                        <button>독산2동</button>
                      </div>
                      <div>
                        <button>독산3동</button>
                      </div>
                      <div>
                        <button>독산4동</button>
                      </div>
                      <div>
                        <button>독산동</button>
                      </div>
                      <div>
                        <button>시흥1동</button>
                      </div>
                      <div>
                        <button>시흥2동</button>
                      </div>
                      <div>
                        <button>시흥3동</button>
                      </div>
                      <div>
                        <button>시흥4동</button>
                      </div>
                      <div>
                        <button>시흥5동</button>
                      </div>
                      <div>
                        <button>시흥동</button>
                      </div>
                    </div>
                  </div>
                  <!--end 동-->
                </div>
                <!-- fin. col-xs-12 -->
              </div>
              <!-- location modal end -->

              <!-- detail search modal -->
              <div id="job_search_detail_modal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="job_search_detail_modal_Label" aria-hidden="true">
                <div class="modal_header">
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <i class="fas fa-times"></i>
                  </button>
                  <h2>상세검색</h2>
                  <button class="apply_btn" type="button">적용</button>
                </div>
                <!--modal header end-->
                <!--modal content-->
                <div class="modal_content">
                  <!-- 요일 -->
                  <div class="care_day_wrap">
                    <h4>요일</h4>
                    <div class="care_day_group">
                      <button class="care_day"><div>월</div></button>
                      <button class="care_day"><div>화</div></button>
                      <button class="care_day"><div>수</div></button>
                      <button class="care_day"><div>목</div></button>
                      <button class="care_day"><div>금</div></button>
                      <button class="care_day"><div>토</div></button>
                      <button class="care_day"><div>일</div></button>
                    </div>
                  </div>
                  <hr />
                  <!--시간대-->
                  <div class="caretime_wrap">
                    <h4>시간대</h4>
                    <div class="time_range_group">
                      <button class="time_range"><span class="time_range_content">07 - 12시</span></button>
                      <button class="time_range"><span class="time_range_content">12 - 18시</span></button>
                      <button class="time_range"><span class="time_range_content">18 - 22시</span></button>
                    </div>
                  </div>
                  <hr />
                  <!-- 아이 나이 -->
                  <div class="children_age_wrap">
                    <h4>아이 나이</h4>
                    <div class="age_line">
                      <button class="ages">
                        <div style="margin-bottom: -10px">
                          <i class="fas fa-baby fa-3x"></i>
                        </div>
                        <br />
                        <span>신생아</span>
                      </button>
                      <button class="ages">
                        <div style="margin-bottom: -10px">
                          <i class="fas fa-baby-carriage fa-3x"></i>
                        </div>
                        <br />
                        <span>영아</span>
                      </button>
                      <button class="ages">
                        <div style="margin-bottom: -10px">
                          <i class="fas fa-child fa-3x"></i>
                        </div>
                        <br />
                        <span>유아</span>
                      </button>
                      <button class="ages">
                        <div style="margin-bottom: -10px">
                          <i class="fas fa-school fa-3x"></i>
                        </div>
                        <br />
                        <span>초등학생</span>
                      </button>
                    </div>
                  </div>
                  <hr />
                  <!-- 희망 시급 -->
                  <div class="want_pay_wrap">
                    <h4 class="want_pay_title">희망시급</h4>
                    <div>
                      <div><label for="min_pay" class="pay_range">최소</label><input type="number" id="min_pay" /></div>
                      <div><label for="max_pay" class="pay_range">최대</label><input type="number" id="max_pay" /></div>
                    </div>
                  </div>
                  <hr />
                  <!-- 돌봄 종류 -->
                  <div class="care_type_wrap">
                    <h4>돌봄 종류</h4>
                    <div class="care_type_group">
                      <div>
                        <button type="button" id="act_type1" class="activity_type_btn" value="innerplay"><i class="fas fa-check unselect_act_type"></i>실내놀이</button>
                        <button type="button" id="act_type2" class="activity_type_btn" value="guide"><i class="fas fa-check unselect_act_type"></i>등하원돕기</button>
                        <button type="button" id="act_type3" class="activity_type_btn" value="read"><i class="fas fa-check unselect_act_type"></i>책읽기</button>
                        <button type="button" id="act_type4" class="activity_type_btn" value="outside"><i class="fas fa-check unselect_act_type"></i>야외활동</button>
                        <button type="button" id="act_type5" class="activity_type_btn" value="korean"><i class="fas fa-check unselect_act_type"></i>한글놀이</button>
                        <button type="button" id="act_type6" class="activity_type_btn" value="english"><i class="fas fa-check unselect_act_type"></i>영어놀이</button>
                        <button type="button" id="act_type7" class="activity_type_btn" value="study"><i class="fas fa-check unselect_act_type"></i>학습지도</button>
                        <button type="button" id="act_type8" class="activity_type_btn" value="sport"><i class="fas fa-check unselect_act_type"></i>체육놀이</button>
                        <button type="button" id="act_type9" class="activity_type_btn" value="simple_cleaning"><i class="fas fa-check unselect_act_type"></i>간단청소</button>
                        <button type="button" id="act_type10" class="activity_type_btn" value="eat"><i class="fas fa-check unselect_act_type"></i>밥챙겨주기</button>
                        <button type="button" id="act_type11" class="activity_type_btn" value="do_dish"><i class="fas fa-check unselect_act_type"></i>간단설거지</button>
                        <button type="button" id="act_type12" class="activity_type_btn" value="long_move_in"><i class="fas fa-check unselect_act_type"></i>장기입주</button>
                        <button type="button" id="act_type13" class="activity_type_btn" value="short_move_in"><i class="fas fa-check unselect_act_type"></i>단기입주</button>
                      </div>
                    </div>
                  </div>
                  <hr />
                  <!-- 아이 수 -->
                  <div class="kids_count">
                    <h4>아이 수</h4>
                    <div class="kids_range">
                      <div class="kids_box">
                        <div>
                          <label for="all" class="box-radio-input"><input type="radio" name="kids" value="all" class="kids" id="all" /><i class="far fa-circle"></i> 무관</label>
                        </div>
                        <div>
                          <label for="kid" class="box-radio-input"><input type="radio" name="kids" value="1" class="kids" id="kid" /><i class="far fa-circle"></i> 1명</label>
                        </div>
                        <div>
                          <label for="kids" class="box-radio-input"><input type="radio" name="kids" value="2" class="kids" id="kids" /><i class="far fa-circle"></i> 2명</label>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <!--modal content end -->
                <!--modal footer-->
                <div class="modal_footer">
                  <button id="reset_detail" class="reset" type="reset">
                    <i class="fas fa-undo-alt"></i>
                    <h2>초기화</h2>
                  </button>
                </div>
                <!--modal footer end-->
              </div>
              <!-- detail search modal end -->

              <div id="like_modal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="like_modal_label" aria-hidden="true">
                <!-- .modal-dialog -->
                <div class="modal-dialog">
                  <!-- .modal-content -->
                  <div class="modal-content">
                    <div id="modal-body">
                      <p style="text-align: center; padding-top: 10px; font-weight: bold">찜하기 완료!</p>
                      <p style="text-align: center; padding-top: 10px">마이페이지 > 찜한 맘시터에서 확인할 수 있습니다.</p>
                    </div>
                    <div class="modal-footer">
                      <button type="button" class="btn btn-default" data-dismiss="modal" id="modal_ok" style="text-align: center">확인</button>
                    </div>
                  </div>
                  <!-- /.modal-content -->
                </div>
                <!-- /.modal-dialog -->
              </div>
              <!-- modal end --------------------------------------------------------------------------------------------------------------------->

              <div class="search_filter_wrap">
                <div class="search_filter_group">
                  <div class="location_filter">
                    <a data-toggle="modal" href="#location_modal">
                      <div>
                        <i class="fas fa-search"></i>
                        <p>돌봄 지역을 선택해주세요</p>
                      </div>
                    </a>
                  </div>
                </div>
              </div>

              <div class="order_selector_group">
                <!-- 더미 데이터, 백엔드 연동 필요 -->
                <div class="total">총 ${total_mom}명</div>
                <!-- 드롭다운 -->
                <div class="dropdown clearfix order_dropdown">
                  <a id="orderby" href="#" role="button" class="dropdown-toggle" data-toggle="dropdown">후기 순 </a><b class="caret"></b>
                  <ul class="dropdown-menu" role="menu" aria-labelledby="orderby">
                    <!-- 아이템 항목 나열 -->
                    <li class="dr_option active" role="presentation" value="update"><a role="menuitem" tabindex="-1" href="#">프로필 업데이트 순</a></li>
                    <li class="dr_option" role="presentation" value="lowpay"><a role="menuitem" tabindex="-1" href="#">시급 낮은 순</a></li>
                    <li class="dr_option" role="presentation" value="highpay"><a role="menuitem" tabindex="-1" href="#">시급 높은 순</a></li>
                  </ul>
                </div>
                <!-- 드롭다운 end-->
              </div>
              <!-- 카드영역 -->
              <c:choose>
              <c:when test="${output == null || fn:length(output) == 0}">
              	<h1>조회결과가 없습니다.</h1>
              </c:when>
              <c:otherwise>
              <%-- 조회 결과에 따른 반복 처리 --%>
              <c:forEach var="item" items="${output}" varStatus="status">
              <%-- 출력을 위해 준비한 데이터들 --%>
              <c:set var ="kids_age" value="${item.kids_age}" />
              <c:set var ="kids_num" value="${item.kids_num}" />
              <c:set var ="openingdate" value="${item.openingdate}" />
              <c:set var ="want_act" value="${item.want_act}" />
			  <c:set var ="si" value="${item.si}" />
              <c:set var ="gu" value="${item.gu}" />
              <c:set var ="name" value="${item.name}" />
              <c:set var ="startdate" value="${item.schedule}" />
              <c:set var ="frequency" value="${item.schedule_ok}" />
			  <c:set var ="payment" value="${item.payment}" />
			 <%--협의가능 데이터 추가되면 넣을것 --%>
              
              <%-- 상세페이지로 이동하기 위한 URL --%>
              <c:url value="/page_detail/mom_page_detail/mom_page_detail_calendar.do" var="viewUrl">
              	<c:param name="momno" value="${item.momno}" />
              </c:url>
              
              <div class="job_item_group">
                <div class="item_body">
                  <div class="profile_img_group">
                    <img src="${pageContext.request.contextPath}/assets/img/profile.jpg" />
                    <div class="applicant_group">
                      <div class="applicant">${d}명 지원</div>
                    </div>
                  </div>
                  <div class="profile_info_group">
                    <div class="content_row">
                      <div>
                        <div class="kids_count">${kids_age} ${kids_num}명</div>
                        <div class="text_sep"></div>
                        <div class="last_update">${openingdate}</div>
                      </div>
                    </div>
                    <div class="content_row">
                      <div class="find_text">${want_act} &nbsp 맘시터 찾습니다.</div>
                    </div>
                    <div class="content_row location_group">
                      <span class="location">${si} &nbsp ${gu}</span>
                      <div class="text_sep"></div>
                      <span class="user_name"> ${name}</span>
                      <div class="text_sep"></div>
                      <span class="start_date">${startdate} 시작</span>
                    </div>
                    <div class="content_row">
                      <i class="fas fa-won-sign"></i>
                      <div class="wanted_pay">희망 시급 ${payment}원</div>
                      <!-- 협의가능 추가해야함!! -->
                    </div>
                  </div>
                </div>
                <hr class="divider" />
                <div class="item_footer">
                  <div class="time_info_group">
                    <div class="time_text_group">
                      <div class="frequency">${frequency}</div>
                    </div>
                    <div class="care_days_group">
                    <!-- 조건에 따라 css 색상 변환 처리 -->
                      <span class="care_days">월</span>
                      <span class="care_days">화</span>
                      <span class="care_days">수</span>
                      <span class="care_days">목</span>
                      <span class="care_days">금</span>
                      <span class="care_days">토</span>
                      <span class="care_days">일</span>
                    </div>
                  </div>
                  <div class="jim_btn">
                    <button class="swapHeart">
                      <div class="jim">
                        <span class="glyphicon glyphicon-heart-empty" style="color: #ff7000; font-size: 20px"></span>
                      </div>
                    </button>
                  </div>
                </div>
              </div>
				  </c:forEach>
              	</c:otherwise>
               </c:choose>
              <!-- 카드영역 end -->
             

              <div class="app_banner">
                <img
                  srcset="
                    https://momsitter-service.s3.ap-northeast-2.amazonaws.com/momsitter-app/static/public/banner/jobsearch-banner_1.png    1x,
                    https://momsitter-service.s3.ap-northeast-2.amazonaws.com/momsitter-app/static/public/banner/jobsearch-banner_1@3x.png 2x,
                    https://momsitter-service.s3.ap-northeast-2.amazonaws.com/momsitter-app/static/public/banner/jobsearch-banner_1@3x.png 3x
                  "
                  src="https://momsitter-service.s3.ap-northeast-2.amazonaws.com/momsitter-app/static/public/banner/jobsearch-banner_1.png"
                  alt="배너"
                />
              </div>
              <div id="result"></div>
              <div>
                <a data-toggle="modal" href="#job_search_detail_modal">
                  <button class="detail_btn">상세 검색</button>
                </a>
              </div>
            </div>
          </div>
        </div>
        <!-- search end-->
      </div>
      <!-- col-xs-12 end -->
    </div>
    <!--row end-->


  </body>
</html>
