<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ page trimDirectiveWhitespaces="true" %> <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <%@
taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no shrink-to-fit=no" />
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

    <!-- sitter_search.css-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/sitter_search.css" />

    <!-- sweetalert 사용 -->
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

    <!-- ajax Helper -->
    <script src="${pageContext.request.contextPath}/assets/ajax/ajax_helper.js"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/ajax/ajax_helper.css" />

    <!-- Javascript -->
    <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
    <!-- jquery 파일명 수정 -->
    <script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>

    <!--Google CDN 서버로부터 jQuery 참조 -->
    <script src="//ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <!-- Handlebar CDN 참조 -->
    <script src="//cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.4.2/handlebars.min.js"></script>

    <script type="text/javascript">
      function random(n1, n2) {
        return parseInt(Math.random() * (n2 - n1 + 1)) + n1;
      }

      $(function () {
        // 헤더 메뉴 load처리 1224 하리
        // $("#menu").load("/ezen-android2020-2/index_header.html"); - 210124 include 변경

        // 시터 타이틀 랜덤 출력 0206 하리 (반복문 돌아서 안되는듯..)
        var num = random(0, 3);
        var title = ["믿음직한 시터", "든든한 시터", "약속된 시터", "보장된 시터"];
        $(".cert_text").html(title[random(0, 3)]);

        // 상세 페이지 연동 1220 하리
        $(".sitter_item_group").on("click", function () {
          location.href = "${pageContext.request.contextPath}/page_detail/sitter_page_detail/sitter_page_detail_for_mom_interview.do";
        });

        /** 원하는 활동 선택 ------------------------------------------------------------------- */
        //활동 버튼 클릭
        $(".act_btn").click(function (e) {
          //버튼 클릭시 text 색 변경
          $(this).next().find(".want_text").toggleClass("select_text");
          //버튼 클릭시 이미지 URL 변경
          //url 가져오기
          var img_url = $(this).next().find(".want_img").attr("src");
          var indeximg = img_url.indexOf("_n"); //잘라서 _n이 있는지 확인
          if (indeximg > -1) {
            var img_src = img_url.replace(/_n/, "_s");
            $(this).next().find(".want_img").attr("src", img_src);
          } else {
            var img_src = img_url.replace(/_s/, "_n");
            $(this).next().find(".want_img").attr("src", img_src);
          }
        });
        // 리셋 버튼 0109 하리
        $("#act_reset").click(function (e) {
          e.preventDefault();

          // 이미지 찾기
          var $img = $(".want_img");
          // 이미지 길이
          var length = $img.length;
          // console.log(length);

          for (var i = 0; i < length; i++) {
            var img_url = $img.eq(i).attr("src");
            var img_src = img_url.replace(/_s/, "_n");
            $(".want_img").eq(i).attr("src", img_src);
          }

          $(".act_btn").prop("checked", false);
          $(".want_text").removeClass("select_text");
          $(".act_label").removeClass("select_act_type");
          $(".act_label").removeClass("unselect_act_type");
        });

        //활동 버튼 반영 1221 하리
        $("#act_apply").click(function (e) {
          e.preventDefault();
          $("#activity_type_modal").modal("hide");
          const act_btn = $(".activity_type_btn");
          const result2 = [];

          for (var i = 0; i < act_btn.length; i++) {
            result2.push($(act_btn[i]).val());
          }

          for (var i = 0; i < result2.length; i++) {
            if (!$(".act_label").eq(i).hasClass("select_act_type")) {
              $(".act_label").eq(i).addClass("unselect_act_type");
            }
          }
        });

        $(".act_btn").change(function change_btn(e) {
          e.preventDefault();
          const checked = $(".act_btn:checked");
          const act_btn = $(".activity_type_btn");
          const result1 = [];
          const result2 = [];

          for (var i = 0; i < checked.length; i++) {
            result1.push($(checked[i]).val());
          }

          //console.log(result1);

          for (var i = 0; i < act_btn.length; i++) {
            result2.push($(act_btn[i]).val());
          }

          //console.log(result2);

          for (var i = 0; i < result1.length; i++) {
            for (var j = 0; j < result2.length; j++) {
              if (result1[i] == result2[j]) {
                $(".act_label").eq(j).addClass("select_act_type");
              }
            }
          }
          //console.log($(".act_label").eq(j).hasClass("select_act_type"));
        });

        $(".activity_type_wrap").click(function (e) {
          $(".act_label").removeClass("select_act_type");
          $(".act_label").removeClass("unselect_act_type");
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

        // 맘시터 유형 버튼 클릭
        $(".sitter_type").click(function (e) {
          //버튼 클릭시 클래스 변경
          $(this).toggleClass("select_btn_detail");
          //버튼 클릭시 text 색 변경
          $(this).find("span").toggleClass("select_text_detail");
        });

        // 리셋 버튼 0109 하리
        $("#reset_detail").click(function (e) {
          e.preventDefault();
          $("#sitter_search_detail_modal .modal_content *").removeClass("select_btn_detail");
          $("#sitter_search_detail_modal .modal_content *").removeClass("select_text_detail");
          $(".ins_check").prop("checked", false);
          $(".want_age").prop("checked", false);
        });

        /** 상세 검색 end ------------------------------------------------------------------- */

        //시 클릭했을 때
        $(".loc_btn").on("click", function (e) {
          e.preventDefault();
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
        $("#gu button").on("click", function (e) {
          e.preventDefault();
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
        $("#dong button").on("click", function (e) {
          e.preventDefault();
          var select = $(this).hasClass("select_location");
          //선택이 안되어있을때
          if (select == false) {
            //선택이 되어있는 요소 탐색
            var loc = $("#dong").find("button").removeClass("select_loaction hide_content");
            //console.log(loc);
            $(this).addClass("select_loaction");

            $.ajax({
              type: "GET", //get방식으로 통신
              url: "${pageContext.request.contextPath}/assets/sitter/location_result.html", //탭의 data-tab속성의 값으로 된 html파일로 통신
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
        }); // fin. 찜버튼 기능
      });
    </script>
  </head>

  <!--grid 사용시 col-xs-nn 사용-->
  <body>
    <div id="app">
      <div class="container">
        <div id="menu">
          <c:if test="${isLogin ==true }">
            <c:choose>
              <c:when test="${fn:contains(loginType, 'M')}"> <%@ include file="../index_header_login_mom.jsp"%> </c:when>
              <c:when test="${fn:contains(loginType, 'S')}"> <%@ include file="../index_header_login_sitter.jsp"%> </c:when>
            </c:choose>
          </c:if>
          <c:if test="${isLogin == null }"> <%@ include file="../index_header.jsp"%> </c:if>
        </div>
        <!-- search -->
        <div id="search">
          <div class="container-fluid col-xs-12">
            <div class="search_wrap">
              <!-- location modal -->
              <div id="location_modal" class="modal col-xs-12" data-toggle="tab" tabindex="-1" role="dialog" aria-labelledby="location_label" aria-hidden="true">
                <div class="location_header">
                  <button class="reset" type="reset" id="reset_loc">
                    <i class="fas fa-undo-alt"></i>
                  </button>
                  <h1>돌봄 지역</h1>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <i class="fas fa-times"></i>
                  </button>
                </div>
                <!--지역 선택-->
                <div id="location_box" method="get">
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
                <!-- col-xs-12 end -->
              </div>
              <!-- location modal end -->

              <!-- activity type modal -->
              <form id="activity_type_modal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="activity_type_modal_Label" aria-hidden="true">
                <!--modal header-->

                <div class="modal_header">
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <i class="fas fa-times"></i>
                  </button>
                  <h2>원하는 활동 선택</h2>
                  <button id="act_apply" class="apply_btn" type="button">적용</button>
                </div>

                <!--modal header end-->
                <!--modal content-->
                <div class="modal_content">
                  <!--돌봄 유형 선택-->
                  <div class="want_act_box">
                    <div class="want_btn">
                      <div>
                        <input type="checkbox" id="check1" class="act_btn" name="check_ab" value="innerplay" />
                        <label for="check1" class="want_label"
                          ><img class="want_img" src="${pageContext.request.contextPath}/assets/img/innerplayicon_n.png" />
                          <div class="want_text">실내놀이</div></label
                        >
                      </div>
                    </div>
                    <div class="want_btn">
                      <div>
                        <input type="checkbox" id="check2" class="act_btn" name="check_ab" value="guide" />
                        <label for="check2" class="want_label"
                          ><img class="want_img" src="${pageContext.request.contextPath}/assets/img/guideicon_n.png" />
                          <div class="want_text">등하원돕기</div></label
                        >
                      </div>
                    </div>
                    <div class="want_btn">
                      <div>
                        <input type="checkbox" id="check3" class="act_btn" name="check_ab" value="read" />
                        <label for="check3" class="want_label"
                          ><img class="want_img" src="${pageContext.request.contextPath}/assets/img/readicon_n.png" />
                          <div class="want_text">책읽기</div></label
                        >
                      </div>
                    </div>
                    <div class="want_btn">
                      <div>
                        <input type="checkbox" id="check4" class="act_btn" name="check_ab" value="outside" />
                        <label for="check4" class="want_label"
                          ><img class="want_img" src="${pageContext.request.contextPath}/assets/img/ousideicon_n.png" />
                          <div class="want_text">야외활동</div></label
                        >
                      </div>
                    </div>
                    <div class="want_btn">
                      <div>
                        <input type="checkbox" id="check5" class="act_btn" name="check_ab" value="korean" />
                        <label for="check5" class="want_label"
                          ><img class="want_img" src="${pageContext.request.contextPath}/assets/img/koreanicon_n.png" />
                          <div class="want_text">한글놀이</div></label
                        >
                      </div>
                    </div>
                    <div class="want_btn">
                      <div>
                        <input type="checkbox" id="check6" class="act_btn" name="check_ab" value="english" />
                        <label for="check6" class="want_label"
                          ><img class="want_img" src="${pageContext.request.contextPath}/assets/img/englishicon_n.png" />
                          <div class="want_text">영어놀이</div></label
                        >
                      </div>
                    </div>
                    <div class="want_btn">
                      <div>
                        <input type="checkbox" id="check7" class="act_btn" name="check_ab" value="study" />
                        <label for="check7" class="want_label"
                          ><img class="want_img" src="${pageContext.request.contextPath}/assets/img/studyicon_n.png" />
                          <div class="want_text">학습지도</div></label
                        >
                      </div>
                    </div>
                    <div class="want_btn">
                      <div>
                        <input type="checkbox" id="check8" class="act_btn" name="check_ab" value="sport" />
                        <label for="check8" class="want_label"
                          ><img class="want_img" src="${pageContext.request.contextPath}/assets/img/ballicon_n.png" />
                          <div class="want_text">체육놀이</div></label
                        >
                      </div>
                    </div>
                    <div class="want_btn">
                      <div>
                        <input type="checkbox" id="check9" class="act_btn" name="check_ab" value="simple_cleaning" />
                        <label for="check9" class="want_label"
                          ><img class="want_img" src="${pageContext.request.contextPath}/assets/img/cleanicon_n.png" />
                          <div class="want_text">간단 청소</div></label
                        >
                      </div>
                    </div>
                    <div class="want_btn">
                      <div>
                        <input type="checkbox" id="check10" class="act_btn" name="check_ab" value="eat" />
                        <label for="check10" class="want_label"
                          ><img class="want_img" src="${pageContext.request.contextPath}/assets/img/eaticon_n.png" />
                          <div class="want_text">밥 챙겨주기</div></label
                        >
                      </div>
                    </div>
                    <div class="want_btn">
                      <div>
                        <input type="checkbox" id="check11" class="act_btn" name="check_ab" value="do_dish" />
                        <label for="check11" class="want_label"
                          ><img class="want_img" src="${pageContext.request.contextPath}/assets/img/dishicon_n.png" />
                          <div class="want_text">간단 설거지</div></label
                        >
                      </div>
                    </div>
                    <div class="want_btn">
                      <div>
                        <input type="checkbox" id="check12" class="act_btn" name="check_ab" value="long_move_in" />
                        <label for="check12" class="want_label"
                          ><img class="want_img" src="${pageContext.request.contextPath}/assets/img/longhouseicon_n.png" />
                          <div class="want_text">장기입주</div></label
                        >
                      </div>
                    </div>
                    <div class="want_btn">
                      <div>
                        <input type="checkbox" id="check13" class="act_btn" name="check_ab" value="short_move_in" />
                        <label for="check13" class="want_label"
                          ><img class="want_img" src="${pageContext.request.contextPath}/assets/img/houseicon_n.png" />
                          <div class="want_text">단기입주</div></label
                        >
                      </div>
                    </div>
                  </div>
                  <!--end modal content -->
                  <!--modal footer-->
                  <div class="modal_footer">
                    <button id="act_reset" class="reset" type="reset">
                      <i class="fas fa-undo-alt"></i>
                      <h2>초기화</h2>
                    </button>
                  </div>
                  <!--modal footer end-->
                </div>
                <!--end modal dialog-->
              </form>
              <!-- activity type modal end -->

              <!-- detail search modal -->
              <div id="sitter_search_detail_modal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="sitter_search_detail_modal_Label" aria-hidden="true" method="get">
                <div class="modal_header">
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <i class="fas fa-times"></i>
                  </button>
                  <h2>상세검색</h2>
                  <button class="apply_btn" type="subimt">적용</button>
                </div>
                <!--modal header end-->
                <!--modal content-->
                <div class="modal_content">
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
                  <!-- 돌봄 요일 -->
                  <div class="care_day_wrap">
                    <h4>돌봄 요일</h4>
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
                  <!--돌봄 시간대-->
                  <div class="caretime_wrap">
                    <h4>돌봄 시간대</h4>
                    <div class="time_range_group">
                      <button class="time_range"><span class="time_range_content">07 - 12시</span></button>
                      <button class="time_range"><span class="time_range_content">12 - 18시</span></button>
                      <button class="time_range"><span class="time_range_content">18 - 22시</span></button>
                    </div>
                  </div>
                  <hr />
                  <!-- 맘시터 유형 -->
                  <div class="sitter_type_wrap">
                    <h4>맘시터 유형</h4>
                    <div class="sitter_type_group">
                      <div>
                        <button class="sitter_type">
                          <div>
                            <i class="fas fa-circle"></i>
                            <span class="sitter_type_content">엄마 맘시터</span>
                          </div>
                        </button>
                        <button class="sitter_type">
                          <div>
                            <i class="fas fa-circle"></i>
                            <span class="sitter_type_content">선생님 맘시터</span>
                          </div>
                        </button>
                      </div>
                      <div>
                        <button class="sitter_type">
                          <div>
                            <i class="fas fa-circle"></i>
                            <span class="sitter_type_content">대학생 맘시터</span>
                          </div>
                        </button>
                        <button class="sitter_type">
                          <div>
                            <i class="fas fa-circle"></i>
                            <span class="sitter_type_content">일반 맘시터</span>
                          </div>
                        </button>
                      </div>
                    </div>
                    <div class="sitter_insurance">
                      <input type="checkbox" value="ins_check" class="ins_check" id="ins_check" />
                      <label for="ins_check"><span class="ins_text">보험 가입한 맘시터</span></label>
                    </div>
                  </div>
                  <hr />
                  <!-- 원하는 맘시터 나이대 -->
                  <div class="sitter_age">
                    <h4>원하는 맘시터 나이대</h4>
                    <div class="age_range">
                      <div class="want_age_box">
                        <input type="checkbox" value="20" class="want_age" id="20age" checked /> <label for="20age">20대</label>
                        <input type="checkbox" value="30" class="want_age" id="30age" checked /> <label for="30age">30대</label>
                        <input type="checkbox" value="40" class="want_age" id="40age" checked /> <label for="40age">40대</label> <input type="checkbox" value="50" class="want_age" id="50age" />
                        <label for="50age">50대</label> <input type="checkbox" value="60" class="want_age" id="60age" /> <label for="60age">60대</label>
                      </div>
                    </div>
                  </div>
                </div>
                <!--end modal content -->
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
                      <img src="${pageContext.request.contextPath}/assets/img/p-search-location-before (1).png" />
                      <p>돌봄 지역을 선택해주세요</p></a
                    >
                  </div>
                  <div class="caretype_filter">
                    <a href="${pageContext.request.contextPath}/search/caretype_sitter.do">
                      <img src="${pageContext.request.contextPath}/assets/img/p-search-caretype (1).png" />
                      <p>모든 돌봄유형</p>
                    </a>
                  </div>
                </div>
              </div>
              <div class="activity_type_wrap">
                <a data-toggle="modal" href="#activity_type_modal">
                  <div class="abtn_wrap">
                    <div class="activity_type_btn_group">
                      <input type="checkbox" id="act_type1" class="activity_type_btn" value="innerplay" />
                      <label for="act_type1" class="act_label">실내놀이 </label>
                      <input type="checkbox" id="act_type2" class="activity_type_btn" value="guide" />
                      <label for="act_type2" class="act_label">등하원 돕기 </label>
                      <input type="checkbox" id="act_type3" class="activity_type_btn" value="read" />
                      <label for="act_type3" class="act_label">책 읽기 </label>
                      <input type="checkbox" id="act_type4" class="activity_type_btn" value="outside" />
                      <label for="act_type4" class="act_label">야외활동 </label>
                      <input type="checkbox" id="act_type5" class="activity_type_btn" value="korean" />
                      <label for="act_type5" class="act_label">한글놀이 </label>
                      <input type="checkbox" id="act_type6" class="activity_type_btn" value="english" />
                      <label for="act_type6" class="act_label">영어놀이 </label>
                      <input type="checkbox" id="act_type7" class="activity_type_btn" value="study" />
                      <label for="act_type7" class="act_label">학습지도 </label>
                      <input type="checkbox" id="act_type8" class="activity_type_btn" value="sport" />
                      <label for="act_type8" class="act_label">체육놀이 </label>
                      <input type="checkbox" id="act_type9" class="activity_type_btn" value="simple_cleaning" />
                      <label for="act_type9" class="act_label">간단청소 </label>
                      <input type="checkbox" id="act_type10" class="activity_type_btn" value="eat" />
                      <label for="act_type10" class="act_label">밥챙겨주기 </label>
                      <input type="checkbox" id="act_type11" class="activity_type_btn" value="do_dish" />
                      <label for="act_type11" class="act_label">간단설거지 </label>
                      <input type="checkbox" id="act_type12" class="activity_type_btn" value="long_move_in" />
                      <label for="act_type12" class="act_label">장기입주 </label>
                      <input type="checkbox" id="act_type13" class="activity_type_btn" value="short_move_in" />
                      <label for="act_type13" class="act_label">단기입주 </label>
                    </div>
                    <button class="tab_index"><img src="${pageContext.request.contextPath}/assets/img/p-search-activity (1).png" /></button>
                  </div>
                </a>
              </div>
              <div class="order_selector_group">
                <div class="total">총 ${st_total}명</div>
                <!-- 드롭다운 -->
                <div class="dropdown clearfix order_dropdown">
                  <a id="orderby" href="#" role="button" class="dropdown-toggle" data-toggle="dropdown">후기 순 </a><b class="caret"></b>
                  <ul class="dropdown-menu" role="menu" aria-labelledby="orderby">
                    <!-- 아이템 항목 나열 -->
                    <li class="dr_option" role="presentation" data-order="update"><a role="menuitem" tabindex="-1" href="#">프로필 업데이트 순</a></li>
                    <li class="dr_option active" role="presentation" data-order="review"><a role="menuitem" tabindex="-1" href="#">후기 순</a></li>
                    <li class="dr_option" role="presentation" data-order="cert"><a role="menuitem" tabindex="-1" href="#">인증 수 순</a></li>
                    <li class="dr_option" role="presentation" data-order="response"><a role="menuitem" tabindex="-1" href="#">응답률 순</a></li>
                    <li class="dr_option" role="presentation" data-order="lowpay"><a role="menuitem" tabindex="-1" href="#">시급 낮은 순</a></li>
                    <li class="dr_option" role="presentation" data-order="highpay"><a role="menuitem" tabindex="-1" href="#">시급 높은 순</a></li>
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
                    <c:set var="name" value="${item.name}" />
                    <c:set var="openingdate" value="${item.openingdate}" />
                    <c:set var="si" value="${item.si}" />
                    <c:set var="gu" value="${item.gu}" />
                    <c:set var="dong" value="${item.dong}" />
                    <c:set var="age" value="${item.birthdate}" />
                    <c:set var="payment" value="${item.payment}" />
                    <c:set var="answer" value="${item.answer}" />

                    <%-- 상세페이지로 이동하기 위한 URL --%>
                    <c:url value="/page_detail/sitter_page_detail/sitter_page_detail_for_mom_interview.do" var="viewUrl">
                      <c:param name="sitterno" value="${item.sitterno}" />
                    </c:url>
					<div id="order">
                    <div id="sitter_item_group" class="sitter_item_group">
                      <div class="item_header">
                        <div class="cert_label">
                          <img src="${pageContext.request.contextPath}/assets/img/icon-cert-label (1).png" />
                          <span id="sitter_title" class="cert_text"></span>
                        </div>
                      </div>
                      <hr class="divider" />
                      <div class="item_body">
                        <div class="profile_img_group">
                          <img src="${pageContext.request.contextPath}/assets/img/profile.jpg" />
                          <div class="responsive_rate_group">
                            <div class="res_text">응답률</div>
                            <div class="res_rate">${answer}</div>
                            <div class="res_text">%</div>
                          </div>
                        </div>
                        <div class="profile_info_group">
                          <div class="content_row">
                            <div>
                              <div class="user_name">${name}</div>
                              <div class="last_update">${openingdate} 작성</div>
                            </div>
                            <div class="jim_btn">
                              <button class="swapHeart">
                                <div class="jim">
                                  <span class="glyphicon glyphicon-heart-empty" style="color: #ff7000; font-size: 20px"></span>
                                </div>
                              </button>
                            </div>
                          </div>
                          <div class="content_row location_group">
                            <span class="location">${si}&nbsp${gu}&nbsp${dong}</span>
                          </div>
                          <div class="content_row">
                            <div class="user_age">${age}세</div>
                            <div class="text_sep"></div>
                            <div class="wanted_pay">희망 시급 ${payment}원</div>
                          </div>
                          <div class="content_row">
                            <div class="review_rate">
                              <!-- 평점에 따라서 별 색상 css 다르게 주기. 추후 구현 예정 -->
                              <i class="fas fa-star"></i>
                              <i class="fas fa-star"></i>
                              <i class="fas fa-star"></i>
                              <i class="fas fa-star"></i>
                              <i class="fas fa-star"></i>
                            </div>
                            <span class="review_count">후기 ${payment}개</span>
                          </div>
                        </div>
                      </div>
                      <hr class="divider" />
                      <div class="item_footer">
                        <div class="cert_info_group">
                          <div class="cert_text_group">
                            <div class="cert_label">확인된 인증</div>
                            <div class="cert_count">2개</div>
                          </div>
                          <div class="cert_info_btn_group">
                            <div class="cert_btn">엄마 인증</div>
                            <div class="cert_btn">등초본 인증</div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </c:forEach>
                </c:otherwise>
              </c:choose>
            </div>
              <!-- 카드영역 end -->
              <div id="result"></div>

              <%--
              <div class="app_banner">
                <div class="banner_group">
                  <div>
                    <div class="banner_text_group">
                      <div class="banner_text">앱으로 더 빠르게</div>
                      <div class="banner_text_bottom">
                        <span class="banner_app_name" style="color: #ffe400">맘시터</span>
                        <span class="banner_text">구하세요!</span>
                      </div>
                    </div>
                    <div class="banner_btn">앱 설치하기</div>
                  </div>
                  <img src="${pageContext.request.contextPath}/assets/img/s-list-1-banner-image@3x (1).png" />
                </div>
              </div>
              --%>

              <div>
                <a data-toggle="modal" href="#sitter_search_detail_modal">
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
    <!-- Handlebar 템플릿 코드 -->
    <script id="sitter-list-tmpl" type="text/x-handlebars-template">
      {{#each item}}
        <div class="sitter_item_group">
          <div class="item_header">
            <div class="cert_label">
              <img src="${pageContext.request.contextPath}/assets/img/icon-cert-label (1).png" />
              <span id="sitter_title" class="cert_text"></span>
            </div>
          </div>
          <hr class="divider" />
          <div class="item_body">
            <div class="profile_img_group">
              <img src="${pageContext.request.contextPath}/assets/img/profile.jpg" />
              <div class="responsive_rate_group">
                <div class="res_text">
                  응답률
                </div>
                <div class="res_rate">
                  ${answer}
                </div>
                <div class="res_text">
                  %
                </div>
              </div>
            </div>
            <div class="profile_info_group">
              <div class="content_row">
                <div>
                  <div class="user_name">
                    ${name}
                  </div>
                  <div class="last_update">
                    ${openingdate} 작성
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
              <div class="content_row location_group">
                <span class="location">
                  ${si}&nbsp${gu}&nbsp${dong}
                </span>
              </div>
              <div class="content_row">
                <div class="user_age">
                  ${age}세
                </div>
                <div class="text_sep"></div>
                <div class="wanted_pay">
                  희망 시급 ${payment}원
                </div>
              </div>
              <div class="content_row">
                <div class="review_rate">
                  <!-- 평점에 따라서 별 색상 css 다르게 주기. 추후 구현 예정 -->
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                </div>
                <span class="review_count">
                  후기 ${payment}개
                </span>
              </div>
            </div>
          </div>
          <hr class="divider" />
          <div class="item_footer">
            <div class="cert_info_group">
              <div class="cert_text_group">
                <div class="cert_label">
                  확인된 인증
                </div>
                <div class="cert_count">
                  2개
                </div>
              </div>
              <div class="cert_info_btn_group">
                <div class="cert_btn">
                  엄마 인증
                </div>
                <div class="cert_btn">
                  등초본 인증
                </div>
              </div>
            </div>
          </div>
        </div>
      {{/each}}
    </script>
    <script>
      $(document).ready(function () {
        // 무한 스크롤 1218 하리
        $(document).scroll(function () {
          var maxHeight = $(document).height();
          var currentScroll = $(window).scrollTop() + $(window).height();
          var nowPage = 1; // 현재 페이지의 기본값

          if (maxHeight <= currentScroll + 100) {
            // Restful API에 GET방식 요청
            $.get(
              "${pageContext.request.contextPath}/search/sitter_search",
              {
                page: nowPage, // 페이지 번호는 GET 파라미터로 전송한다.
              },
              function (json) {
                var source = $("#sitter-list-tmpl").html(); // 템플릿 코드 가져오기
                var template = Handlebars.compile(source); // 템플릿 코드 컴파일
                var result = template(json); // 템플릿 컴파일 결과물에 json 전달
                $("#result").append(result); // 최종 결과물을 #list 요소에 추가한다
              }
            );
          }
        });
      });

      $(function () {
        // 드롭다운 선택 - 0109 하리
        $(".dr_option").click(function () {
          $(this).addClass("active");
          $(".dr_option").not(this).removeClass("active");
          $("#orderby").html($(this).find("a").html());
          // 정렬 조건 지정 0212
          var current = $(this);
          var order = current.data("order");
          console.log(order);
          $.get(
            "${pageContext.request.contextPath}/search/sitter_search",
            {
              order: order, // 페이지 번호는 GET 파라미터로 전송한다.
            },
            function (json) {
                var source = $("#sitter-list-tmpl").html(); // 템플릿 코드 가져오기
                var template = Handlebars.compile(source); // 템플릿 코드 컴파일
                var result = template(json); // 템플릿 컴파일 결과물에 json 전달
                $("#order").html(result); // 최종 결과물을 #list 요소에 추가한다
              }
          );
        });
      });
    </script>
  </body>
</html>
