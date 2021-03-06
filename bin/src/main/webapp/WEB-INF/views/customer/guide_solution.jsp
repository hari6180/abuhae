<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no"/>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<title>맘시터 > 이용가이드 > 해결방법</title>

		<!-- 모바일 웹 페이지 설정 -->
		<link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/ico/favicon.ico" />
		<link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath}/assets/ico/favicon.ico" />

		<!-- bootstrap -->
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" />

		<!-- noto Sans 웹 폰트 적용 -->
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/notosans.css" />
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/customer/css/guide_solution.css" />
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
                        <a href="${pageContext.request.contextPath}/customer/guide.html">이용가이드</a>
                    </li>
                    <span>></span>
                    <li>
                        <a href="#">해결방법 가이드</a>
                    </li>
                </div>
                    <div class="col-xs-12 input">
                        <span class="glyphicon glyphicon-search" id="glyphicon"></span>
                        <form role="search" class="search search-full" data-search
                        data-instant="true" autocomplete="off" accept-charset="UTF-8" method="GET">
                        <input type="search" name="query" id="query" placeholder="검색" aria-label="검색">
                        </form>
                    </div>
                    <div class="col-xs-12 sidebar">
                        <div class="col-xs-10 sidebar_1">이 섹션의 문서
                        </div>
                        <div class="col-xs-2 sidebar_2">
                            <span class="glyphicon glyphicon-chevron-down" id="glyphicon_2">    
                            </span>
                        </div>
                    </div>
                    <div class="col-xs-12 section">
                        <div class="section_header">
                        <h1>[문제해결] 부모님께서 급여를 지급하지 않으세요.</h1>
                        </div>
                    </div>
                    <div class="col-xs-12 article">
                        <div class="col-xs-2 article_img">
                            <img src="${pageContext.request.contextPath}/customer/img/logo2.png" width="40" height="40">
                        </div>
                        <div class="col-xs-10 article_title">
                            <p>맘시터</p>
                            <p class="date">2020년 08월 26일 23:06</p>
                    </div>
                    </div>
                    <div class="col-xs-12 section_body">
                        <p>맘시터는 부모님과 시터님이 서로의 정보를 자유롭게 확인하고 인터뷰를 신청하거나 지원할 수 있도록 도와드리는 정보제공 서비스입니다.</p>
                        <p><a href="#">>>맘시터 서비스 소개(클릭)</a></p>
                        <p>부모님은 돌봄활동 신청서를 작성한 후에 <a href="#">[맘시터 찾기]</a>를 통해 나에게 맞는 시터님을 찾아 직접 인터뷰를 신청할 수 있고,</p>
                        <p>시터님은 프로필을 작성한 후에 <a href="#">[일자리 찾기]</a>를 통해 알맞는 부모님을 찾아 직접 인터뷰를 지원할 수 있습니다.</p>
                        <p>자세한 이용 방법은 고객센터의 <a href="#">부모회원 이용가이드</a>항목을 통해 확인할 수 있습니다.</p>
                    </div>
                    <div class="col-xs-12 section_footer">
                        <p>선긋기</p>
                    </div>
                    <div class="col-xs-12 article_footer">
                        <span>도움이 되었습니까?</span>
                    </div>
                    <div class="col-xs-6">
                        <button type="button" id="button_true"class="button article-vote article-vote-up button-primary" aria-label="이 문서가 유용했음" aria-pressed="true">예</button>
                    </div>
                    <div class="col-xs-6">
                        <button type="button" class="button article-vote article-vote-down" aria-label="이 문서가 유용하지 않았음" aria-pressed="false">아니요</button>
                    </div>
                    <div class="col-xs-12 chat">
                        <a href="#" class="chat_title">1:1 채팅 문의하기</a>
                    </div>
                    <div class="col-xs-12 topbar">
                        <a href="#">
                        <div class="col-xs-5 topbar_1">맨 위로 돌아가기
                        </div>
                        <div class="col-xs-7 topbar_2">
                            <span class="glyphicon glyphicon-chevron-up" id="glyphicon_3">    
                            </span>
                        </div>
                    </a>
                    </div>
                    <div class="col-xs-12 footer_title">
                    <h2>최근 본 문서</h2>
                    <div class="col-xs-12 footer_content">
                        <a href="#"><p>[맘시터 찾기] 시터님을 어떻게 구하나요?</p></a>
                    </div>
                    <div class="col-xs-12 footer_content">
                        <a href="#"><p>[공지] 부모회원 약속알림 설정기능 중단 안내 (2020.12.21 시행)</p></a>
                    </div>
                    <div class="col-xs-12 footer_content">
                        <a href="#"><p>[이용요금] 가입비나 소개비, 수수료가 있나요?</p></a>
                    </div>
                    <div class="col-xs-12 footer_content">
                        <a href="#"><p>[부모회원 가이드] 맘시터 시작하기</p></a>
                    </div>
                    <div class="col-xs-12 footer_content">
                        <a href="#"><p>[공지] 맘시터 개인정보 처리방침 개정안내 (20.12.16 개정)</p></a>
                    </div>
                    <h2>관련 문서</h2>
                    <div class="col-xs-12 footer_content">
                        <a href="#"><p>[부모회원 가이드] 맘시터 시작하기</p></a>
                    </div>
                    <div class="col-xs-12 footer_content">
                        <a href="#"><p>[시터회원 가이드] 맘시터는 어떤 서비스인가요?</p></a>
                    </div>
                    <div class="col-xs-12 footer_content">
                        <a href="#"><p>[공지] 아이돌봄연결 긴급무료지원 "맘이든든 자유이용주간" 안내</p></a>
                    </div>
                    <div class="col-xs-12 footer_content">
                        <a href="#"><p>[부모회원 가이드] 시터님에게 인터뷰 지원받기</p></a>
                    </div>
                    <div class="col-xs-12 footer_content">
                        <a href="#"><p>[시터 정보] 안전보험이 무엇인가요?</p></a>
                    </div>
                    </div>
                        <div class="col-xs-12 footer">
                    </div>
			</div> <!-- row 끝 -->
        </div> <!-- container 끝 -->
        <!-- Javascript -->
		<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script> <!-- jquery 파일명 수정 -->		
		<script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
		<script type="text/javascript">
		//$(function() {
			//$("#menu").load("../index_header.html");
		//});
		</script>
	</body>
</html>