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
    </style>
</head>

<body>
    <div class="container">
        <div class="col-xs-12">
            <!-- xs-12로 모바일 맞춤 -->
            <div>
                <p class="noplan_text">
                    <span class="noplan_grey">아직 정확환 시간 계획이 없더라도,</span>
                    <br>
                    만나보고 싶은 시간을 선택하면
                    <br>
                    시터에게 <span class="noplan_orange">무료</span>로 지원을 받을 수 있습니다.
                </p>
            </div>
            <div class="noplan_wrap">
                <!--원하는 시간 선택-->
                <div class="noplan_schedule">
                    <img src="${pageContext.request.contextPath}/assets/img/time_img.png" class="time_bar" alt="시간">
                    <div class="noplan_check_box">
                        <div class="title">평일</div>
                        <div class="time_box"><button class="time_btn" value="wek_morning">아침</button></div>
                        <div class="time_box"><button class="time_btn" value="wek_launch">점심</button></div>
                        <div class="time_box"><button class="time_btn" value="wek_evning">저녁</button></div>
                    </div>
                    <div class="noplan_check_box">
                        <div class="title">주말</div>
                        <div class="time_box"><button class="time_btn" value="end_morning">아침</button></div>
                        <div class="time_box"><button class="time_btn" value="end_launch">점심</button></div>
                        <div class="time_box"><button class="time_btn" value="end_evning">저녁</button></div>
                    </div>
                </div>
                <a href="description.do"><button class="next_btn">다음</button></a>
            </div>

        </div> <!-- fin. col-xs-12 -->
    </div>

    <!-- Javascript -->
    <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script> <!-- jquery 파일명 수정 -->
    <script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        $(function(){
            $(".time_btn").on("click", function(){
                $(this).toggleClass("select_btn");
            });
        });
    </script>
</body>

</html>