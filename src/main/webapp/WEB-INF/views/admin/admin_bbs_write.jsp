<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no"/>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<title>아이를부탁해-관리자</title>

		<!-- 모바일 웹 페이지 설정 -->
		<link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/ico/favicon.ico" />
		<link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath}/assets/ico/favicon.ico" />

		<!-- bootstrap -->
		<!--절대 경로 수정 1220 선아-->
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" />

		<!-- noto Sans 웹 폰트 적용 -->
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/notosans.css" />
		<!-- fontawesome(글리피콘) 적용 -->
		<script src="https://kit.fontawesome.com/f27ac0bcc1.js" crossorigin="anonymous"></script>
		<!-- css 참조  -->
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/admin_custom_bbs.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/admin_header.css" />
		<style type="text/css">
		</style>
	</head>

	<body>
		<div class="container">
		<header>
			<%@ include file="../admin/admin_header.jsp"%>
			</header>
			<!--content header-->
			<section class="content_header">
                <h1>새 글 작성</h1>
                <ol class="breadcrumb">
                    <li>
						<i class="fas fa-home"></i>
                        <a href="${pageContext.request.contextPath}/admin_member.do">Home</a>
                    </li>
                    <li class="active">
                        현재 글쓰기 누른 위치
                    </li>
                </ol>
			</section>
			<!--end content_header-->
			<!--main content-->
			<section>
				<div class="col-md-12">
					<div class="write_title_group">
						<div class="gleft">
							<select class="filter" id="filter_bbs" name="filter_bbs">
								<option value="" selected>카테고리 선택</option>
								<option value="notice">공지사항</option>
								<option value="momfaq">부모회원 FAQ</option>
								<option value="sitterfaq">시터회원 FAQ</option>
								<option value="guide">이용가이드</option>
							</select>
						</div>
						<div class="gleft" style="width: 100%; display: block;">
							<input type="text" name="bbs_title" id="bbs_title" placeholder="제목">
						</div>
					</div>
					
					<div>
						<div class="bbs_content">
							<textarea maxlength="1000" name="bbs_content" id="bbs_content" placeholder="내용 입력"></textarea>
						</div>
					</div>
					<hr>
					<div>
						<div class="btn_button">
							<a href="#" class="btn_warning"><span><i class="far fa-file-alt"></i>&nbsp;글쓰기</span></a>
							<a href="#" class="btn_nomal"><span><i class="fas fa-pen"></i>&nbsp;취소</span></a>
						</div>
					</div>
				</div>

			</section>
		</div>
	
		<!-- Javascript -->
		<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script> <!-- jquery 파일명 수정 -->		
		<script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
	</body>
</html>