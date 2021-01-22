<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!doctype html>
<html>

<head>
    <meta charset="UTF-8" />
    <meta name="viewport"
        content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>아이를 부탁해</title>
    <!-- 모바일 웹 페이지 설정 -->
    <link rel="shortcut icon" href="/ezen-android2020-2/assets/ico/favicon.ico" />
    <link rel="apple-touch-icon-precomposed" href="/ezen-android2020-2/assets/ico/favicon.ico" />

    <!-- bootstrap -->
    <link rel="stylesheet" type="text/css" href="/ezen-android2020-2/assets/css/bootstrap.min.css" />
    <!-- noto Sans 웹 폰트 적용 -->
    <link rel="stylesheet" type="text/css" href="/ezen-android2020-2/assets/css/notosans.css" />
    <!-- icon 참조 -->
    <script src="https://kit.fontawesome.com/12ac058ac7.js" crossorigin="anonymous"></script>
    <!--join css-->
    <link rel="stylesheet" href="/ezen-android2020-2/join/css/join_parent.css">

    <style type="text/css">
        .col-xs-12 {
            margin: 0;
            overflow: hidden;
        }

        .container {
            padding: 0;
        }
    </style>
</head>

<body>
    <div class="app">
        <div class="container">
            <div id="menu"></div>
            <div id="join">
                <div class="col-xs-12">
                    <!-- xs-12로 모바일 맞춤 -->
                    <div class="join_box">
                        <div class="join_button">
                            <a href="parent/start.jsp">
                                <button class="join_mom">
                                    <div class="join_group">
                                        <div>
                                            <img src="img/join-mom-img.png">
                                        </div>
                                        <div class="join_text">
                                            <h3>"아이를 돌봐줄 <br>맘시터가 필요해요."</h3>
                                            <span>부모회원가입 ></span>
                                        </div>
                                    </div>
                                </button></a>
                            <hr>
                            <a href="sitter/start.html">
                                <button class="join_siter">
                                    <div class="join_group">
                                        <div>
                                            <img src="img/join-sitter-img.png">
                                        </div>
                                        <div class="join_text">
                                            <h3>"든든한 맘시터로 <br>활동하고 싶어요."</h3>
                                            <span>시터회원가입 ></span>
                                        </div>
                                    </div>
                                </button></a>
                            <hr>
                        </div>
                        <div class="already_join">
                            <span>이미 맘시터 회원이신가요?</span><br>
                            <a href="/ezen-android2020-2/login/login.html">로그인</a>
                        </div>
                    </div>
                </div> <!-- fin. col-xs-12 -->
            </div><!--end join-->
        </div>
        <!--end container-->
    </div>

    <!-- Javascript -->
    <script src="/ezen-android2020-2/assets/js/jquery.min.js"></script> <!-- jquery 파일명 수정 -->
    <script src="/ezen-android2020-2/assets/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        $(function () {
            //헤더 로드
            $("#menu").load("../index_header.html");
        })
    </script>
</body>

</html>