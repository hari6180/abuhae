<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%

%>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no"/>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<title>고객센터</title>

		<!-- 모바일 웹 페이지 설정 -->
		<link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/ico/favicon.ico" />
		<link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath}/assets/ico/favicon.ico" />

		<!-- bootstrap -->
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" />

		<!-- noto Sans 웹 폰트 적용 -->
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/notosans.css" />
		<link rel="stylesheet" type="text/css" herf="${pageContext.request.contextPath}/assets/css/flexboxgrid.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/customer_center_yj.css" />
		<!--header css-->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/index_header.css">
		<!-- fontawesome(글리피콘) 적용 -->
		<script src="https://kit.fontawesome.com/f27ac0bcc1.js" crossorigin="anonymous"></script>

		</head>
		
		<body>
			<div class="container"> <!-- 페이지 전체 영역 -->
			<header>
				<%@ include file="../index_header.jsp"%>
				</header>
				<!-- header end-->
		<div class="section_wrap"> <!-- section 전체영역 -->
			<div class="col-xs-12"> 
			<div class="section_main"> <!-- Background-image -->
			<div class="section_input"> <!-- glyphicon -->
			<form action="${pageContext.request.contextPath}/customer/cus_search.do" role="search" class="search search-full" data-search
                data-instant="true" autocomplete="off" accept-charset="UTF-8" method="GET">
				<input type="search" name="keyword" id="keyword" value="${keyword}" placeholder="검색" aria-label="검색">
				<button type="submit">검색</button>
			</form>
		</div>
	</div>
	</div>
	</div> <!-- section 전체영역 끝 -->
		<div class="activity_wrap"> <!-- activity 전체영역 -->
			<section class="section_block">
				<div class="row">
					<div class="col-xs-12">
						<ul class="block_list">
							<li class="block_item">
								<a href="${pageContext.request.contextPath}/customer/faq.do" class="block_item_link">
									<span class="block_item_title">자주묻는 질문</span>
									<span class="block_item_title2">FAQ</span>
								</a>
							</li>
							<li class="block_item">
								<a href="${pageContext.request.contextPath}/customer/question_mom.do" class="block_item_link">
									<span class="block_item_title">부모회원</span>
									<span class="block_item_title2">이용가이드</span>
								</a>
							</li>
							<li class="block_item">
								<a href="${pageContext.request.contextPath}/customer/question_sitter.do" class="block_item_link">
									<span class="block_item_title">시터회원</span>
									<span class="block_item_title2">이용가이드</span>
								</a>
							</li>
							<li class="block_item">
								<a href="${pageContext.request.contextPath}/customer/notice_site.do" class="block_item_link">
									<span class="block_item_title">공지사항</span>
								</a>
							</li>
						</ul>
					</section>
					<section class="section_activity">
						<div class="row">
							<div class="col-xs-12">
								<div class="activity">
									<h2 class="activity_header">최근 활동</h2>
								</div>
							</div>
						</div>
						<div class="activity_list">
							<a class="activity_item_parent" href="${pageContext.request.contextPath}/customer/notice_site.do">공지사항</a>
							<a class="activity_item_link" href="${pageContext.request.contextPath}/customer/notice_site_ch2.do">[공지] 아부해 서비스 서버 점검 안내</a>
						</div>
						<div class="activity_list">
							<a class="activity_item_parent" href="#">공지사항</a>	
							<a class="activity_item_link" href="#">[공지] 시터님, KF94 마스크 무료신청하세요!</a>
						</div>
						<div class="activity_list">
							<a class="activity_item_parent" href="#">일자리찾기</a>	
							<a class="activity_item_link" href="#">[맘시터 인증] 건강인증뱃지를 발급 받고 싶어요</a>
						</div>
						<div class="activity_list">
							<a class="activity_item_parent" href="#">해결방법</a>	
							<a class="activity_item_link" href="#">[문제해결] 부모님께서 급여를 지급하지 않으세요.</a>
						</div>
						<div class="activity_list">
							<a class="activity_item_parent" href="#">공지사항</a>	
							<a class="activity_item_link" href="#">[공지] 코로나조심또조심123123123123</a>
						</div>
						<a link="#" id="mybutton">더보기</a>
				</section>
				</div>
				<div class="footer">
				</div>
			</div> <!-- 페이지 전체 영역 끝 -->
		<!-- Javascript -->
		<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
		<script type="text/javascript">
		$(function () {
			$("#mybutton").click(function(e) {
				$.ajax( {
					// 결과를 읽어올 URL
					url: '${pageContext.request.contextPath}/customer/hello.do',
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
				//모달의 로그인 버튼 클릭시
				$("#login_btn").on("click", function () {
					location.replace('${pageContext.request.contextPath}/login/login.do');
				});

				//모달의 회원가입 버튼 클릭시
				$("#go_to_join").on("click", function () {
					location.replace('${pageContext.request.contextPath}/join/join.do');
				});
			});
			</script>
	</body>
</html>