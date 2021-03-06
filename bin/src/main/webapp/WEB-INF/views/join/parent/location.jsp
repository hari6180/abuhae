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
    <!--절대 경로 수정 1217 선아-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" />

    <!-- noto Sans 웹 폰트 적용 -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/notosans.css" />
    <!-- join css -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/join_parent.css" />

    <style type="text/css">
        html,
        body {
            color: #222;
            font-weight: 100;
            font-size: 1em;
            line-height: 1.375;
            padding: 0;
            margin: 0;
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
                </div>
                <h3 class="what_want">어디서 돌봐드릴까요?</h3>
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
                <a href="schedule.jsp"><button class="next_btn" disabled>다음</button></a>

            </div>

        </div> <!-- fin. col-xs-12 -->

    </div>

    <!-- Javascript -->
    <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script> <!-- jquery 파일명 수정 -->
    <script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        //location 선택시 css 이벤트 - 선아
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

                    //동까지 선택하면 다음 버튼 활성화
                    //다음 버튼의 현재 disabled 값 가져오기
                    var now = $(".next_btn").prop('disabled');
                    //가져온 값 역으로 변경하여 다시 적용
                    $(".next_btn").prop('disabled', !now);

                }
            });
        });
    </script>
</body>

</html>