<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no"/>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<title>맘시터 > 이용가이드</title>

		<!-- 모바일 웹 페이지 설정 -->
		<link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/ico/favicon.ico" />
		<link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath}/assets/ico/favicon.ico" />

		<!-- bootstrap -->
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" />

		<!-- noto Sans 웹 폰트 적용 -->
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/notosans.css" />
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/guide_yj.css" />
        <script src="https://kit.fontawesome.com/f27ac0bcc1.js" crossorigin="anonymous"></script>
	</head>

	<body>
		<div class="container">
			<div class="row">
			
			<%@ include file="../index_header.jsp" %>
			
                <div class="col-xs-12 nav">
                    <li>
                        <a href="${pageContext.request.contextPath}/customer/customer_center.do">맘시터</a>
                    </li>
                    <span>></span>
                    <li>
                        <a href="#">이용가이드</a>
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
                        <h1>이용가이드</h1>
                        </div>
                        <div class="col-xs-12 section_middle">
                            <h2><a href="${pageContext.request.contextPath}/customer/question_mom_ch1.do">부모회원 가이드</a></h2>
                    </div>
                    <div class="col-xs-12 section_title">
                        <a href="${pageContext.request.contextPath}/customer/guide_mom.do">[부모회원 가이드] 아부해는 어떤 서비스인가요?</a>
                    </div>
                    <div class="col-xs-12 section_title">
                        <a href="#">[부모회원 가이드] 아부해 시작하기</a>
                    </div>
                    <div class="col-xs-12 section_title">
                        <a href="#">[부모회원 가이드] 시터님에게 인터뷰 신청하기</a>
                    </div>
                    <div class="col-xs-12 section_title">
                        <a href="#">[부모회원 가이드] 시터님에게 인터뷰 지원받기</a>
                    </div>
                    <div class="col-xs-12 section_title">
                        <a href="#">[부모회원 가이드] 인터뷰 보기</a>
                    </div>
                    <div class="col-xs-12 section_title">
                        <a href="#">[부모회원 가이드] 시터님 채용하기</a>
                    </div>
                    <div class="col-xs-12 section_title_2">
                        <a href="#">문서 7개 모두 보기</a>
                    </div>
                    <div class="col-xs-12 section_middle">
                        <h2><a href="${pageContext.request.contextPath}/customer/question_sitter_ch1.do">시터회원 가이드</a></h2>
                    </div>
                    <div class="col-xs-12 section_title">
                        <a href="${pageContext.request.contextPath}/customer/guide_sitter.do">[시터회원 가이드] 아부해는 어떤 서비스인가요?</a>
                    </div>
                    <div class="col-xs-12 section_title">
                        <a href="#">[시터회원 가이드] 아부해 시작하기</a>
                    </div>
                    <div class="col-xs-12 section_title">
                        <a href="#">[시터회원 가이드] 맘시터 인증받기</a>
                    </div>
                    <div class="col-xs-12 section_title">
                        <a href="#">[시터회원 가이드] 부모님에게 인터뷰 지원하기</a>
                    </div>
                    <div class="col-xs-12 section_title">
                        <a href="#">[시터회원 가이드] 부모님에게 인터뷰 신청 받기</a>
                    </div>
                    <div class="col-xs-12 section_title">
                        <a href="#">[시터회원 가이드] 인터뷰 보기</a>
                    </div>
                    <div class="col-xs-12 section_title_2">
                        <a href="#">문서 8개 모두 보기</a>
                    </div>
                    <div class="col-xs-12 section_middle">
                        <h2><a href="${pageContext.request.contextPath}/customer/question_danger_ch1.do">맘시터 주의사항</a></h2>
                    </div>
                    <div class="col-xs-12 section_title">
                        <a href="${pageContext.request.contextPath}/customer/guide_danger.do">맘시터 회원 모두가 절대로 하면 안 되는 행동들</a>
                    </div>
                    <div class="col-xs-12 section_middle">
                        <h2><a href="${pageContext.request.contextPath}/customer/question_solution_ch1.do">해결방법</a></h2>
                    </div>
                    <div class="col-xs-12 section_title">
                        <a href="${pageContext.request.contextPath}/customer/guide_solution.do">[문제해결] 부모님께서 급여를 지급하지 않으세요.</a>
                    </div>
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
		//$(function() {
		//	$("#menu").load("../index_header.html");
		//});
		</script>
	</body>
</html>