<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
                <h1>이용가이드</h1>
                <ol class="breadcrumb">
                    <li>
						<i class="fas fa-home"></i>
                        <a href="${pageContext.request.contextPath}/admin_member.do">Home</a>
                    </li>
                    <li class="active">
                        이용가이드
                    </li>
                </ol>
			</section>
			<!--end content_header-->
			<!--main content-->
			<section>
				<div class="col-md-12">
					<div class="state">
						<div class="gleft">
							<p class="total">오늘 등록된 글 <strong>4</strong>건 / 전체 게시글 <strong>10</strong>건</p>
						</div>
						<div class="gright">
							<select class="filter" id="filter_bbs" name="filter_bbs">
								<option value="">카테고리별</option>
								<option value="payment">부모회원 가이드</option>
								<option value="member">시터회원 가이드</option>
								<option value="resi">아부해 주의사항</option>
								<option value="find">해결방법</option>

							</select>
							<select class="filter" id="filter_bbs" name="filter_bbs">
								<option value="nomal">기본정렬</option>
								<option value="hit">조회수많은순</option>
								<option value="recent">최근작성순</option>
							</select>
						</div>
					</div>
					<div class="type_header">
						<div class="bbs_btn">
							<a href="${pageContext.request.contextPath}/admin/admin_bbs_write.do" class="btn_nomal"><span><i class="far fa-file-alt"></i>&nbsp;새글작성</span></a>
							<a href="#" class="btn_nomal"><span><i class="fas fa-pen"></i>&nbsp;수정</span></a>
							<a href="#" class="btn_nomal"><span><i class="far fa-trash-alt"></i>&nbsp;삭제</span></a>
						</div>
					</div>
					<div class="type_content">
						<div class="bbs_list">
							<table>
								<colgroup>
									<col style="width: 42px;">
									<col style="width: 80px;">
									<col style="width: 70px;">
									<col style="width: 300px;">
									<col style="width: 120px">
									<col style="width: 120px;">
								</colgroup>
								<thead>
									<tr>
										<th class="col-md-1"><input type="checkbox" id="all_check"></th>
										<th class="col-md-1">회원번호</th>
										<th class="col-md-1">이름</th>
										<th class="col-md-1">아이디</th>
										<th class="col-md-2">이용권시작일</th>
										<th class="col-md-2">이용권만료일</th>
										<th class="col-md-2">쿠폰지급일</th>
									</tr>
								</thead>
								<tbody class="center">
									<c:choose>
									<%-- 조회결과가 없는 경우 --%>
										<c:when test="${output == null || fn:length(output) == 0}">
											<tr>
												<td colspan="7" align="center">조회결과가 없습니다.</td>
											</tr>
										</c:when>
									<%-- 조회결과가 있는 경우 --%>
										<c:otherwise>
										<%-- 조회 결과에 따른 반복 처리 --%>
											<c:forEach var="item" items="${output}" varStatus="status">
												<tr>
													<td class="text-center"><input type="checkbox" name="bbs_no[]" class="rowcheck"></td>
													<td align="center">${item.boardnum}</td>
													<td align="center">${item.subcategory}</td>
													<td align="center">${item.title}</td>
													<td align="center">${item.writer}</td>
													<td align="center">${item.reg_date}</td>
												</tr>
											</c:forEach>
										</c:otherwise>
									</c:choose>
								</tbody>
							</table>
							<div class="pagenate">
								<a class="prev"></a>
								<ol>
									<li class="active">1</li>
									<li>2</li>
								</ol>
								<a class="next"></a>
							</div>
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
</body>

</html>