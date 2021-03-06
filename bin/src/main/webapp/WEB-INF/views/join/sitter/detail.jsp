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
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" />

    <!-- noto Sans 웹 폰트 적용 -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/notosans.css" />
    <!--join sitter 참조-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/join_sitter.css" />

    <!--flatpickr-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">

    <style type="text/css">
        .container {
            padding: 0;
            margin: 0;
        }

        .what_want {
            font-size: 0.9em !important;
        }

        .flatpickr-day.selected,
        .flatpickr-day.selected:focus,
        .flatpickr-day.selected:hover {
            background-color: #ff7000;
            border-color: #ff7000;
        }

        .flatpickr-day.selected.prevMonthDay,
        .flatpickr-day.selected.nextMonthDay {
            background-color: #fff0e8;
            border-color: #fff0e8;
        }

        .flatpickr-day.today {
            border-color: #ff7000;
        }

        
    </style>
</head>

<body>
    <div id="detail">
        <div class="container">
            <div class="col-xs-12">
                    <div class="what_want">내가 원하는 시간 직접 입력하기</div>
                    <hr>

                    <!-- content1 -->
                    <section class="start_job">
                        <div>
                            <h4 class="regular_tl">활동 시작일</h4>
                            <input type="text" name="start_date" id="datepicker"
                                class="startdate center-block date_box">
                        </div>
                    </section>

                    <hr>

                    <!-- content2 -->
                    <section class="available_days">
                        <div>
                            <div class="choose_day_title">
                                <h4 class="regular_tl">활동 요일</h4>
                            </div>
                            <div class="day_btn_group">
                                <button class="day_btn" value="mon">월</button>
                                <button class="day_btn" value="tue">화</button>
                                <button class="day_btn" value="wen">수</button>
                                <button class="day_btn" value="thu">목</button>
                                <button class="day_btn" value="fri">금</button>
                                <button class="day_btn" value="sat">토</button>
                                <button class="day_btn" value="sun">일</button>
                            </div>
                        </div>
                    </section>


                    <!--요일 선택시 나타내주기-->
                    <hr>
                    <div id="content" class="hide_content">
                        <!--시간 선택-->
                        <div class="time_select_box">
                            <div>
                                <!--시작 시간-->
                                <div class="regular_tl">시작시간</div>
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
                                    <div class="regular_tl">종료시간</div>
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
                        <hr>
                        <section class="work_term">
                            <div>
                                <h4 class="regular_tl">이 일정으로 얼마동안 일할 수 있나요?</h4>
                            </div>

                            <div class="term_list">
                                <input type="radio" name="workterm" class="workterm" id="workterm1" value="1week">
                                <label for="workterm1">1주일 이상</label>

                                <input type="radio" name="workterm" class="workterm" id="workterm2" value="1month">
                                <label for="workterm2">1개월 이상</label>

                                <input type="radio" name="workterm" class="workterm" id="workterm3" value="3month">
                                <label for="workterm3">3개월 이상</label>

                                <input type="radio" name="workterm" class="workterm" id="workterm4" value="6month">
                                <label for="workterm4">6개월 이상</label>
                            </div>
                            <span class="sub_detail">활동 시작일로부터 6개월 후, 내 프로필이 비공개로 변경됩니다.</span>

                            <div id="result"></div>
                        </section>

                <a href="payment_cctv.jsp"><button class="next_btn">다음</button></a>
            </div>
            <!--end hide content-->


            <!-- content4 -->

        </div>
    </div>
    </div>

    <!-- Javascript -->
    <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
    <script>
        //날짜 선택 플러그인 - flatpickr 사용 - 선아
        $(function () {
            $('.startdate').flatpickr({
                dateFormat: "Y.m.d",
                minDate: "today",
                maxDate: new Date().fp_incr(30),
                defaultDate: new Date()
            });
            //요일 선택시 
			$(".day_btn").on("click", function () {
				$(this).toggleClass("select_btn");

				var count = $(".select_btn").length;
				if (count == 0) {
					$("#content").removeClass("show_content");
					$("#content").addClass("hide_content");
				} else {
					$("#content").removeClass("hide_content");
					$("#content").addClass("show_content");
				}
			});

        });
    </script>

</body>

</html>