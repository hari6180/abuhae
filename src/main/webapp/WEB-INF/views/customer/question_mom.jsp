<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no"/>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<title>맘시터 > 부모회원</title>

		<!-- 모바일 웹 페이지 설정 -->
		<link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/ico/favicon.ico" />
		<link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath}/assets/ico/favicon.ico" />

		<!-- bootstrap -->
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" />

		<!-- noto Sans 웹 폰트 적용 -->
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/notosans.css" />
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/question_mom_yj.css" />
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
                        <a href="#">부모회원</a>
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
                        <h1>부모회원
                            <p>자주 묻는 질문</p>
                        </h1>
                        </div>
                        <div class="col-xs-12 section_middle">
                            <h2><a href="${pageContext.request.contextPath}/customer/question_mom_ch2.html">맘시터 찾기</a></h2>
                    </div>
                    <div class="col-xs-12 section_title">
                        <a href="${pageContext.request.contextPath}/customer/guide_mom_ch2.html">[시터 찾기] 시터님을 어떻게 구하나요?</a>
                    </div>
                    <div class="col-xs-12 section_title">
                        <a href="#">[시터 찾기] 최소 돌봄활동 시간이 정해져 있나요?</a>
                    </div>
                    <div class="col-xs-12 section_title">
                        <a href="#">[시터 찾기] 당장 시터님이 필요한데 구할 수 있나요?</a>
                    </div>
                    <div class="col-xs-12 section_title_2">
                        <a href="${pageContext.request.contextPath}/customer/question_mom_ch2.html">문서 7개 모두 보기</a>
                    </div>
                    <div class="col-xs-12 section_middle">
                        <h2><a href="${pageContext.request.contextPath}/customer/mom_contract.html">채용 및 계약</a></h2>
                    </div>
                    <div class="col-xs-12 section_title">
                        <a href="${pageContext.request.contextPath}/customer/mom_contract_ch2.html">[채용 및 계약] 시터님과 계약서를 작성할 수 있나요?</a>
                    </div>
                    <div class="col-xs-12 section_title">
                        <a href="#">[채용 및 계약] 아부해 활동 계약서를 꼭 작성해야 하나요?</a>
                    </div>
                    <div class="col-xs-12 section_title">
                        <a href="#">[채용 및 계약] 아부해 활동계약서를 다운로드받고 싶어요.</a>
                    </div>
                    <div class="col-xs-12 section_title_2">
                        <a href="${pageContext.request.contextPath}/customer/mom_contract.html">문서 8개 모두 보기</a>
                    </div>
                    <div class="col-xs-12 section_middle">
                        <h2><a href="${pageContext.request.contextPath}/customer/mom_activity.html">돌봄활동과 활동비</a></h2>
                    </div>
                    <div class="col-xs-12 section_title">
                        <a href="${pageContext.request.contextPath}/customer/mom_activity_ch2.html">[돌봄활동] 자세한 돌봄활동이 궁금해요!</a>
                    </div>
                    <div class="col-xs-12 section_title">
                        <a href="#">[돌봄활동] 시터님은 어떤 돌봄활동을 해줄 수 있나요?</a>
                    </div>
                    <div class="col-xs-12 section_title">
                        <a href="#">[돌봄활동] 시터님에게 기사일을 요청할 수 있나요?</a>
                    </div>
                    <div class="col-xs-12 section_title_2">
                        <a href="${pageContext.request.contextPath}/customer/mom_activity.html">문서 7개 모두 보기</a>
                    </div>
                    <div class="col-xs-12 section_middle">
                        <h2><a href="${pageContext.request.contextPath}/customer/mom_epilogue.html">후기</a></h2>
                    </div>
                    <div class="col-xs-12 section_title">
                        <a href="${pageContext.request.contextPath}/customer/mom_epilogue_ch2.html">[후기] 후기는 언제 작성할 수 있나요?</a>
                    </div>
                    <div class="col-xs-12 section_title">
                        <a href="#">[후기] 후기는 어디에서 작성할 수 있나요?</a>
                    </div>
                    <div class="col-xs-12 section_title">
                        <a href="#">[후기] 후기를 작성하면 어떤 점이 좋나요?</a>
                    </div>
                    <div class="col-xs-12 section_middle">
                        <h2><a href="${pageContext.request.contextPath}/customer/mom_information.html">회원정보</a></h2>
                    </div>
                    <div class="col-xs-12 section_title">
                        <a href="${pageContext.request.contextPath}/customer/mom_information_ch2.html">[회원정보] 로그인 정보가 기억나지 않아요.</a>
                    </div>
                    <div class="col-xs-12 section_title">
                        <a href="#">[회원정보] 휴대폰번호는 어떻게 변경하나요?</a>
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
			//$("#menu").load("../index_header.html");
		//});
		</script>
	</body>
</html>