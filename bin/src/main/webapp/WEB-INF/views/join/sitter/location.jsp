<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8" />
    <meta name="viewport"
        content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
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
                    <span class="dot"></span>
                </div>
                <h3 class="what_want">활동하고 싶은 지역을 순서대로
                    <br>
                    선택해 주세요. <span class="text_orange">(최대 3개)</span>
                </h3>
                <div class="location_wrap">
                    <div class="title_box">
                        <!--back에서 결과 받아와서 출력-->
                        <div class="select_box">
                        </div>

                        <div class="location_title">
                            <div class="sub_title">시/도</div>
                            <div class="sub_title">시/군/구</div>
                            <div class="sub_title">동/읍/면</div>
                        </div>
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
                </div>
                <a href="schedule.jsp"><button class="next_btn" disabled>다음</button></a>
            </div>
        </div> <!-- fin. col-xs-12 -->

    </div>

    <!-- Javascript -->
    <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script> <!-- jquery 파일명 수정 -->
    <script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        //지역 선택시 css 설정 - 선아
        $(function () {
            //시 클릭했을 때
            $(".loc_btn").on("click", function () {
                var select = $(this).hasClass("select_location");
                //선택이 안되어있을때
                if (select == false) {
                    //선택이 되어있는 요소 탐색
                    var loc = $("#si").find("button").removeClass("select_location");
                    //console.log(loc);
                    $(this).addClass("select_location");
                    //시 선택하면 gu 보이게
                    $("#gu>div").removeClass("hide_content");
                    $("#gu>div").addClass("show_content");
                }

            });
            //구 클릭했을 때
            $("#gu button").on("click", function () {
                var select = $(this).hasClass("select_location");
                //선택이 안되어있을때
                if (select == false) {
                    //선택이 되어있는 요소 탐색
                    var loc = $("#gu").find("button").removeClass("select_location");
                    //console.log(loc);
                    $(this).addClass("select_location");
                    //구 선택하면 동 보이게
                    $("#dong>div").removeClass("hide_content");
                    $("#dong>div").addClass("show_content");
                }

            });

            //동 클릭했을때
            $("#dong button").on("click", function () {
                var select = $(this).hasClass("select_location");
                //선택이 안되어있을때
                if (select == false) {
                    //선택이 되어있는 요소 탐색
                    var loc = $("#dong").find("button").removeClass("select_location");
                    //console.log(loc);
                    $(this).addClass("select_location");

                    $.ajax({
                        type: 'GET',                 //get방식으로 통신
                        url: "location_result.html",    //탭의 data-tab속성의 값으로 된 html파일로 통신
                        dataType: "html",            //html형식으로 값 읽기
                        error: function () {          //통신 실패시 ㅠㅠ
                            alert('통신실패!');
                        },
                        success: function (data) {    //통신 성공시 탭 내용을 담는 div를 읽어들인 값으로 채우기
                            $('.select_box').html(data);
                            var now = $(".next_btn").prop('disabled');
                            //가져온 값 역으로 변경하여 다시 적용
                            $(".next_btn").prop('disabled', !now);
                        }
                    });

                }
            });
        });
    </script>
</body>

</html>