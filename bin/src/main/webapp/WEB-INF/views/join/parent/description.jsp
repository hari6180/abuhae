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
    <!--fontawwsome-->
    <script src="https://kit.fontawesome.com/ac95729007.js" crossorigin="anonymous"></script>

    <!-- noto Sans 웹 폰트 적용 -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/notosans.css" />
    <!-- join css -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/join_parent.css" />

    <style type="text/css">
        .container {
            padding: 0;
        }
    </style>
</head>

<body>
    <div id="description" class="container">
        <div class="col-xs-12">
            <!-- xs-12로 모바일 맞춤 -->
            <div>
                <div class="page_dots">
                    <span class="dot now_dots"></span>
                    <span class="dot now_dots"></span>
                    <span class="dot now_dots"></span>
                    <span class="dot now_dots"></span>
                    <span class="dot now_dots"></span>
                </div>
                <div class="no_require">선택작성 항목</div>
                <h3 class="what_want">맘시터가 알아야 할 내용이 있나요?</h3>
                <textarea placeholder="아이 성별, 나이(개월 수), 성격, 특이사항 등을 적어주세요." class="desc_textarea"
                    maxlength="1000"></textarea>
                <p class="warning">
                    <i class="fas fa-times"></i><span>&nbsp;&nbsp;신청서 내용에 연락처, 이메일, 카카오ID 등을 작성할 경우 회원 자격을 영구적으로
                        잃게됩니다.</span>
                </p>

                <a href="account.jsp"><button class="next_btn">나중에 입력할게요.</button></a>
            </div>


        </div> <!-- fin. col-xs-12 -->
    </div>

    <!-- Javascript -->
    <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script> <!-- jquery 파일명 수정 -->
    <script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
</body>

</html>