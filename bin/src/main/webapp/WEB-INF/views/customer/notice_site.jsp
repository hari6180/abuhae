<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no"/>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<title>맘시터 > 공지사항</title>

		<!-- 모바일 웹 페이지 설정 -->
		<link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/ico/favicon.ico" />
		<link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath}/assets/ico/favicon.ico" />

		<!-- bootstrap -->
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" />

		<!-- noto Sans 웹 폰트 적용 -->
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/notosans.css" />
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/customer/css/notice_site.css" />
        <script src="https://kit.fontawesome.com/f27ac0bcc1.js" crossorigin="anonymous"></script>
	</head>

	<body>
		<div class="container">
			<div class="row">
			<header>
			  <%@ include file="../index_header.jsp" %>
			</header>
			<!-- header end-->
                <div class="col-xs-12 nav">
                    <li>
                        <a href="${pageContext.request.contextPath}/customer/customer_center.html">맘시터</a>
                    </li>
                    <span>></span>
                    <li>
                        <a href="#">공지사항</a>
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
                        <h1>공지사항</h1>
                        </div>
                        <div class="col-xs-12 section_middle">
                            <h2><a href="#">공지 사항</a></h2>
                    </div>
                    <div class="col-xs-12 section_title">
                        <a href="${pageContext.request.contextPath}/customer/notice_site_ch2.html">[공지] 부모회원 약속알림 설정기능 중단 안내</a>
                    </div>
                    <div class="col-xs-12 section_title">
                        <a href="#">[공지] 아부해 부모-시터 채팅 서비스 이용정책 안내</a>
                    </div>
                    <div class="col-xs-12 section_title">
                        <a href="#">[공지] 아부해 개인정보 처리방침 개정안내</a>
                    </div>
                    <div class="col-xs-12 section_title">
                        <a href="#">[공지] 아부해 서비스 서버 점검 안내</a>
                    </div>
                    <div class="col-xs-12 section_title">
                        <a href="#">[공지] 아부해란? 아이를 부탁해!</a>
                    </div>
                    <div class="col-xs-12 section_title_2">
                        <a link="#" id="mybutton">문서 20개 모두 보기</a>
                    </div>
                    <div class="col-xs-12 footer">
                    </div>
			</div> <!-- row 끝 -->
        </div> <!-- container 끝 -->

		</div>
	
		<!-- Javascript -->
		<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script> <!-- jquery 파일명 수정 -->		
        <script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
        <script type="text/javascript">
			$(function() {
				$("#mybutton").click(function(e) {
					$.ajax( {
						// 결과를 읽어올 URL
						url: '${pageContext.request.contextPath}/customer/hello2.jsp',
						// 웹 프로그램에게 데이터를 전송하는 방식
						// 생략할 경우 get으로 자동 지정됨
						method: 'get',
						// 전달할 조건값은 JSON형식으로 구성
						// 사용하지 않을 경우 명시 자체를 생략할 수 있다.
						data: {},
						// 읽어올 내용의 형식(생략할 경우 json)
						dataType: 'html',
						// 읽어온 내용을 처리하기 위한 함수
						success: function(req) {
							// 준비된 요소에게 읽어온 내용을 출력한다.
							$("#mybutton").before(req);
						}
					}); // end $.ajax
				}) // end $.#mybutton
			})
			//$(function() {
				//$("#menu").load("../index_header.html");
				//});
			</script>
	</body>
</html>