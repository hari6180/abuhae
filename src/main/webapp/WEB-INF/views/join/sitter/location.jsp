<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ page trimDirectiveWhitespaces="true" %>
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
    <!--절대 경로 수정 1220 선아-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" />

    <!-- noto Sans 웹 폰트 적용 -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/notosans.css" />
    <!--join sitter 참조-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/join_sitter.css" />
    <!-- 아이콘 사용 -->
    <script src="https://kit.fontawesome.com/7018452b37.js" crossorigin="anonymous"></script>

    <style type="text/css">
      .container {
        padding: 0;
      }

      .col-xs-12 {
        padding: 0;
      }

      .what_want {
        margin-bottom: 50px;
      }

      button:disabled,
      button[disabled] {
        background-color: #cccccc;
        color: #666666;
      }
    </style>
  </head>

  <body>
    <div id="location" class="container">
      <div class="col-xs-12">
        <!-- xs-12로 모바일 맞춤 -->
        <div>
          <div class="page_dots">
            <span class="dot now_dots"></span>
            <span class="dot now_dots"></span>
            <span class="dot now_dots"></span>
            <span class="dot"></span>
            <span class="dot"></span>
            <span class="dot"></span>
          </div>
          <h3 class="what_want">활동하고 싶은 지역을 선택해 주세요.</h3>
          <div class="location_wrap">
            <!--지역 선택-->
            <div class="location_box">
              <!--시,도-->
              <div class="location_group" id="si">
                <div>
                  <button class="loc_btn">서울특별시</button>
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
              <div class="location_group" id="dong"></div>
              <!--end 동-->
            </div>
          </div>
          <form id="addform" method="post" action="${pageContext.request.contextPath}/join/sitter/detail.do">
            <input type="hidden" id="type" name="type" value="${type}" />
            <input type="hidden" id="sitter_type" name="sitter_type" value="${sitter_type}" />
            <input type="hidden" id="want_act1" name="want_act1" value="${want_act1}" />
            <input type="hidden" id="want_act2" name="want_act2" value="${want_act2}" />
            <input type="hidden" id="want_act3" name="want_act3" value="${want_act3}" />
            <input type="hidden" id="want_age" name="want_age" value="${want_age}" />
            <input type="hidden" id="loc_si" name="si" />
            <input type="hidden" id="loc_gu" name="gu" />
            <input type="hidden" id="loc_dong" name="dong" />
            <button type="submit" class="next_btn" disabled>다음</button>
          </form>
        </div>
      </div>
      <!-- fin. col-xs-12 -->
    </div>

    <!-- Javascript -->
    <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
    <!-- jquery 파일명 수정 -->
    <script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
    <script type="text/javascript">
      //지역 선택시 css 설정 - 선아
      $(function () {
        //시 클릭했을 때
        var si, gu, dong;

        $(".loc_btn").on("click", function () {
          var select = $(this).hasClass("select_location");
          //선택이 안되어있을때
          if (select == false) {
            //선택이 되어있는 요소 탐색
            var loc = $("#si").find("button").removeClass("select_location");
            //console.log(loc);
            $(this).addClass("select_location");
            si = $(this).text();
            //console.log(si);
            //시 선택하면 gu 보이게
            $("#gu>div").removeClass("hide_content");
            $("#gu>div").addClass("show_content");
          }
        });
        //구 클릭했을 때
        $("#gu button").on("click", function () {
          let html = "";
          gu = $(this).html();
          var select = $(this).hasClass("select_location");
          //선택이 안되어있을때
          if (select == false) {
            //선택이 되어있는 요소 탐색
            var loc = $("#gu").find("button").removeClass("select_location");
            //console.log(loc);
            $(this).addClass("select_location");
            gu = "";
            gu += $(this).html();
            //구 선택하면 동 보이게
            $("#dong>div").removeClass("hide_content");
            $("#dong>div").addClass("show_content");
          }

          $.getJSON("${pageContext.request.contextPath}/assets/location.json", function (loc) {
            //console.log(loc[gu]);
            // JSON의 value가 array일 경우 ['key']로 전체를 읽어올 수 있다.
            let dong = loc[gu];
            html += '<div class="hide_content">';
            for (var i = 0; i < dong.length; i++) {
              html += "<div><button class='dong_btn'>";
              html += dong[i];
              html += "</button></div>";
            }
            html += "</div>";
            //console.log(html);
            $("#dong").empty();
            $("#dong").append(html);
            //선택이 안되어있을때
            if (select == false) {
              //선택이 되어있는 요소 탐색
              // var loc = $("#gu").find("button").removeClass("select_loaction hide_content");
              //console.log(loc);
              $(this).addClass("select_location");
              //구 선택하면 동 보이게
              $("#dong>div").removeClass("hide_content");
              $("#dong>div").addClass("show_content");
            }
          });
        });

        //동 클릭했을때
        $(document).on("click", ".dong_btn", function (e) {
          //e.preventDefault();
          var select = $(this).hasClass("select_location");

          if (select == false) {
            //선택이 되어있는 요소 탐색
            var loc = $("#dong").find("button").removeClass("select_location");
            //console.log(loc);
            $(this).addClass("select_location");
            dong = "";
            dong += $(this).html();

            //동까지 선택하면 다음 버튼 활성화
            $(".next_btn").prop("disabled", false);
          } else {
            $(this).removeClass("select_location");
            $(".next_btn").prop("disabled", true);
          }
        });

        $(".next_btn").click(function (e) {
          //시
          $("#loc_si").val(si);
          //구
          $("#loc_gu").val(gu);
          //동
          $("#loc_dong").val(dong);
        });
      });
    </script>
  </body>
</html>
