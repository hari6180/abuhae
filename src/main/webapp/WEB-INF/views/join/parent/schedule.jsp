<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ page trimDirectiveWhitespaces="true" %>
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
            <link rel="stylesheet" type="text/css"
                href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" />

            <!-- noto Sans 웹 폰트 적용 -->
            <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/notosans.css" />
            <!--join css-->
            <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/join_parent.css">
            <!-- Javascript -->
            <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script> <!-- jquery 파일명 수정 -->
            <script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
            <style type="text/css">
            </style>
        </head>

        <body>
            <div id="schedule" class="container">
                <div class="col-xs-12">
                    <!-- xs-12로 모바일 맞춤 -->
                    <div class="change_box">
                        <div class="page_dots">
                            <span class="dot now_dots"></span>
                            <span class="dot now_dots"></span>
                            <span class="dot now_dots"></span>
                            <span class="dot now_dots"></span>
                            <span class="dot"></span>
                        </div>
                        <h3 class="what_want">언제 돌봐드릴까요?</h3>
                        <div class="when_btn_box">
                            <form id="addform" method="post"
                                action="${pageContext.request.contextPath}/join/parent/regular.do">
                                <input type="hidden" id="type" name="type" value="${type}">
                                <input type="hidden" id="want_act" name="want_act" value="${want_act}">
                                <input type="hidden" id="want_age" name="want_age" value="${want_age}">
                                <input type="hidden" id="kids_num" name="kids_num" value="${kids_num}">
                                <input type="hidden" id="kids_age" name="kids_age" value="${kids_age}">
                                <input type="hidden" id="payment" name="payment" value="${payment}">
                                <input type="hidden" id="loc_si" name="si" value="${si}">
                                <input type="hidden" id="loc_gu" name="gu" value="${gu}">
                                <input type="hidden" id="loc_dong" name="dong" value="${dong}">
                                <button class="when_btn" type="submit" value="regular">정기적으로</button>
                            </form>
                            <form id="addform" method="post"
                                action="${pageContext.request.contextPath}/join/parent/shortTerm.do">
                                <input type="hidden" id="type" name="type" value="${type}">
                                <input type="hidden" id="want_act" name="want_act" value="${want_act}">
                                <input type="hidden" id="want_age" name="want_age" value="${want_age}">
                                <input type="hidden" id="kids_num" name="kids_num" value="${kids_num}">
                                <input type="hidden" id="kids_age" name="kids_age" value="${kids_age}">
                                <input type="hidden" id="payment" name="payment" value="${payment}">
                                <input type="hidden" id="loc_si" name="si" value="${si}">
                                <input type="hidden" id="loc_gu" name="gu" value="${gu}">
                                <input type="hidden" id="loc_dong" name="dong" value="${dong}">
                                <button class="when_btn" type="submit" value="shortTerm">특정 날에만</button>
                            </form>
                            <form id="addform" method="post"
                                action="${pageContext.request.contextPath}/join/parent/shortTerm.do">
                                <input type="hidden" id="type" name="type" value="${type}">
                                <input type="hidden" id="want_act" name="want_act" value="${want_act}">
                                <input type="hidden" id="want_age" name="want_age" value="${want_age}">
                                <input type="hidden" id="kids_num" name="kids_num" value="${kids_num}">
                                <input type="hidden" id="kids_age" name="kids_age" value="${kids_age}">
                                <input type="hidden" id="payment" name="payment" value="${payment}">
                                <input type="hidden" id="loc_si" name="si" value="${si}">
                                <input type="hidden" id="loc_gu" name="gu" value="${gu}">
                                <input type="hidden" id="loc_dong" name="dong" value="${dong}">
                                <button class="when_btn" type="submit" value="noplan">아직 정확한 계획은 없어요.</button>
                            </form>
                        </div>
                    </div>

                </div> <!-- fin. col-xs-12 -->

            </div>

            <script type="text/javascript">

            </script>
        </body>

        </html>