<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no"/>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<title>맘시터 > 부모회원 > 회원정보</title>

		<!-- 모바일 웹 페이지 설정 -->
		<link rel="shortcut icon" href="/ezen-android2020-2/assets/ico/favicon.ico" />
		<link rel="apple-touch-icon-precomposed" href="/ezen-android2020-2/assets/ico/favicon.ico" />

		<!-- bootstrap -->
		<link rel="stylesheet" type="text/css" href="/ezen-android2020-2/assets/css/bootstrap.min.css" />

		<!-- noto Sans 웹 폰트 적용 -->
        <link rel="stylesheet" type="text/css" href="/ezen-android2020-2/assets/css/notosans.css" />
        <link rel="stylesheet" type="text/css" href="/ezen-android2020-2/customer/css/mom_information.css" />
        <script src="https://kit.fontawesome.com/f27ac0bcc1.js" crossorigin="anonymous"></script>
	</head>

	<body>
		<div class="container">
			<div class="row">
			<div id="menu"></div> <!-- 헤더영역 load함수 -->
                <div class="col-xs-12 nav">
                    <li>
                        <a href="/ezen-android2020-2/customer/customer_center.html">맘시터</a>
                    </li>
                    <span>></span>
                    <li>
                        <a href="/ezen-android2020-2/customer/question_mom.html">부모회원</a>
                    </li>
                    <span>></span>
                    <li>
                        <a href="#">회원정보</a>
                    </li>
                </div>
                    <div class="col-xs-12 input">
                        <span class="glyphicon glyphicon-search" id="glyphicon"></span>
                        <form role="search" class="search search-full" data-search
                        data-instant="true" autocomplete="off" accept-charset="UTF-8" method="GET">
                        <input type="search" name="query" id="query" placeholder="검색" aria-label="검색">
                        </form>
                    </div>
                    <div class="col-xs-12 section">
                        <div class="section_header">
                        <h1>회원정보</h1>
                        </div>
                        <div class="col-xs-12 section_title">
                            <a href="/ezen-android2020-2/customer/mom_information_ch2.html">[회원정보] 로그인 정보가 기억나지 않아요.</a>
                        </div>
                        <div class="col-xs-12 section_title">
                            <a href="#">[회원정보] 휴대폰번호는 어떻게 변경하나요?</a>
                        </div>
                        <div class="col-xs-12 section_title">
                            <a href="#">[회원정보] 할인코드가 무엇인가요?</a>
                        </div>
                        <div class="col-xs-12 section_title">
                            <a href="#">[회원정보] 회원탈퇴는 어떻게 하나요?</a>
                        </div>
                    </div>
                    <div class="col-xs-12 footer">
                    </div>
			</div> <!-- row 끝 -->
        </div> <!-- container 끝 -->

		</div>
	
		<!-- Javascript -->
		<script src="/ezen-android2020-2/assets/js/jquery.min.js"></script> <!-- jquery 파일명 수정 -->		
		<script src="/ezen-android2020-2/assets/js/bootstrap.min.js"></script>
		<script type="text/javascript">
		$(function() {
			$("#menu").load("../index_header.html");
		});
		</script>
	</body>
</html>