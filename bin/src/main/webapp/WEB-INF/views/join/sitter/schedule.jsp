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

    <style type="text/css">
        .what_want {
            margin-bottom: 35px;
        }
    </style>
</head>

<body>
    <div id="schedule" class="container">
        <div class="col-xs-12">
            <!-- xs-12로 모바일 맞춤 -->
            <div>
                <div class="page_dots">
                    <span class="dot now_dots"></span>
                    <span class="dot now_dots"></span>
                    <span class="dot now_dots"></span>
                    <span class="dot now_dots"></span>
                    <span class="dot"></span>
                    <span class="dot"></span>
                    <span class="dot"></span>
                </div>
                <h3 class="what_want">언제 활동할 수 있나요?</h3>
                <div id="select_group">
                    <div class="schedule_box">
                        <input type="radio" name="schedule" id="schedule_set_1" class="type_select"
                            value="schedule_set_1" checked>
                        <label for="schedule_set_1" class="radio_text">
                            <div>
                                <h3>월~금 종일<span>&nbsp;&nbsp;오전 8시 - 저녁 8시</span></h3>
                            </div>
                        </label>
                    </div>
                    <div class="schedule_box">
                        <input type="radio" name="schedule" id="schedule_set_2" class="type_select"
                            value="schedule_set_2">
                        <label for="schedule_set_2" class="radio_text">
                            <div>
                                <h3>월~금 오전<span>&nbsp;&nbsp;오전 7시 - 오후 2시</span></h3>
                            </div>
                        </label>
                    </div>
                    <div class="schedule_box">
                        <input type="radio" name="schedule" id="schedule_set_3" class="type_select"
                            value="schedule_set_3">
                        <label for="schedule_set_3" class="radio_text">
                            <div>
                                <h3>월~금 오후<span>&nbsp;&nbsp;오후 2시 - 저녁 10시</span></h3>
                            </div>
                        </label>
                    </div>
                    <div class="schedule_box">
                        <input type="radio" name="schedule" id="schedule_set_4" class="type_select"
                            value="schedule_set_4">
                        <label for="schedule_set_4" class="radio_text">
                            <div>
                                <h3>주말 종일<span>&nbsp;&nbsp;오전 8시 - 저녁 8시</span></h3>
                            </div>
                        </label>
                    </div>
                    <div class="schedule_box">
                        <input type="radio" name="schedule" id="schedule_set_5" class="type_select"
                            value="schedule_set_5">
                        <label for="schedule_set_5" class="radio_text">
                            <div>
                                <h3>내가 원하는 시간 직접 입력하기</h3>
                            </div>
                        </label>
                    </div>
                </div>
                <button class="next_btn">다음</button>
            </div>

        </div> <!-- fin. col-xs-12 -->
    </div>

    <!-- Javascript -->
    <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script> <!-- jquery 파일명 수정 -->
    <script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        $(function(){
            //라디오 버튼에 따라 페이지 이동 위치 변경 - 선아
            $(".next_btn").on("click", function () {
                var select = $("input[name='schedule']:checked").val();
                //console.log(select);
                //선택이 안되어있을때
                if (select == 'schedule_set_5') {
                    location.href='detail.jsp';
                } else {
                    location.href='payment_cctv.jsp';
                }

            });
        });
    </script>
</body>

</html>