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
    <!--join.css-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/join_parent.css" />
    <!--flatpickr-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">

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

        .flatpickr-calendar.inline {
            margin: auto;
        }
        .flatpickr-day.selected, .flatpickr-day.selected:focus, .flatpickr-day.selected:hover {
            background-color: #ff7000;
            border-color: #ff7000;
        }
        .flatpickr-day.selected.prevMonthDay, .flatpickr-day.selected.nextMonthDay {
            background-color: #fff0e8;
            border-color: #fff0e8;
        }

        .flatpickr-day.today {
            border-color: #ff7000;
        }
    </style>
</head>

<body>
    <div id="short" class="container">
        <div class="col-xs-12">
            <!-- xs-12로 모바일 맞춤 -->
            <h3 class="what_want">- 특정 날에만 -</h3>
            <!--특정 날 선택 daypicker-->
            <div class="calrendar_block">

            </div>
            <hr>
            <div>
                <!--시간 선택-->
                <div class="time_select_box">
                    <div>
                        <!--시작 시간-->
                        <div class="regu_title">시작시간</div>
                        <!--시간-->
                        <div class="select_time">
                            <select>
                                <option value="10:00">오전 10:00</option>
                                <option value="10:30">오전 10:30</option>
                                <option value="11:00" selected>오전 11:00</option>
                                <option value="11:30">오전 11:30</option>
                                <option value="12:00">오전 12:00</option>
                                <option value="12:30">오전 12:30</option>
                            </select>
                        </div>
                    </div>
                    <!--end select-->

                    <!--중간 바-->
                    <div class="middle_bar"></div>
                    <!--종료시간-->
                    <div>
                        <div>
                            <div class="regu_title">종료시간</div>
                        </div>
                        <div class="select_time">
                            <select>
                                <option value="20:00">오후 20:00</option>
                                <option value="20:30">오후 20:30</option>
                                <option value="21:00" selected>오후 21:00</option>
                                <option value="21:30">오후 21:30</option>
                                <option value="22:00">오후 22:00</option>
                                <option value="22:30">오후 22:30</option>
                            </select>
                        </div>
                    </div>
                    <!--end select-->
                </div>
                <!--end select box-->
            </div>
            <!--일정은 시터에게 맞출 수 잇어요-->
            <div class="jojung_box">
                <span class="jojung_check"></span>
                <span class="jojung_text">본 일정은 맘시터에 맞춰서 얼마든지 조정할 수 있어요.</span>
            </div>
            <a href="description.jsp"><button class="next_btn">다음</button></a>

        </div> <!-- fin. col-xs-12 -->
    </div>

    <!-- Javascript -->
    <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script> <!-- jquery 파일명 수정 -->
    <script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
    <!--flatpickr-->
    <script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
    <script type="text/javascript">
        $(function () {
            $(".calrendar_block").flatpickr({
                inline: true,
                dateFormat: "Y/m/d",
                minDate: "today",
                maxDate: new Date().fp_incr(30), //지금으로부터 30일 이내
                mode: "multiple", //여러개 선택 가능
                defaultDate: new Date().fp_incr(6) //지금으로부터 6일이 기본
            });

            //일정 조정 선택
			$(".jojung_box").on("click", function(){
				$(this).toggleClass("box_check");
				$(this).find(".jojung_check").toggleClass("check_check");
			});
        });
    </script>
</body>

</html>