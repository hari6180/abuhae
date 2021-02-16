<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>아이를부탁해</title>

<!-- 모바일 웹 페이지 설정 -->
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/assets/ico/favicon.ico" />
<link rel="apple-touch-icon-precomposed"
	href="${pageContext.request.contextPath}/assets/ico/favicon.ico" />

<!-- bootstrap -->
<!--절대 경로 수정 1220 선아-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" />

<!-- noto Sans 웹 폰트 적용 -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/notosans.css" />

<!-- icon 참조 -->
<script src="https://kit.fontawesome.com/12ac058ac7.js"
	crossorigin="anonymous"></script>

<!-- css 참조 -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/admin_mng_mem.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/admin_header.css" />
</head>

<body>
	<div class="container">
		<header>
			<%@ include file="../admin/admin_header.jsp" %>
		</header>
		<div class="wrap_member">
			<div class="gruop_title row">
				<div class="title_cont col-xs-12">
					<h3>신고 회원 관리</h3>
					<ol class="breadcrumb">
						<li><a href="${pageContext.request.contextPath}/admin_member.do"><i class="fas fa-home"></i>
								Home</a></li>
						<li></i>회원관리</li>
						<li class="active"></i>신고 회원 관리</li>
					</ol>
				</div>
			</div>
			<!--신고 회원 목록-->
			<div class="group_member row">
				<div class="member_list table-responsive col-xs-12">
					<div class="table_title">
						<h3>신고 목록</h3>
	
						<!-- 회원 유형 선택 드롭다운 -->
						<div class="select_list">
							<select class="filter" id="filter_member" name="filter_member">
								<option value="M" selected>부모회원</option>
								<option value="S">시터회원</option>
	
							</select>
						</div>
						<!-- end 드롭다운 -->
					</div>
					<div class="line"></div>

					<div class="btn_list">
						<button class="rep_btn" type="button">
							<a href="#"> <i class="fas fa-bell-slash"></i> 프로필 비공개
							</a>
						</button>
					</div>

					<!-- 조회 결과 목록 -->
					<table class="table table-bordered table-hover">
						<colgroup>
							<col style="width: 42px;">
							<col style="width: 100px;">
							<col style="width: 60px;">
							<col style="width: 75px;">
							<col style="width: 120px">
							<col style="width: 100px;">
							<col style="width: 150px;">
							<col style="width: 150px;">
							<col style="width: 150px;">
						</colgroup>
						<thead>
							<tr role="row">
								<th scope="col" class="text-center"><input type="checkbox"
									onclick="allcheck(this)"></th>
								<th scope="col" class="text-center">회원번호</th>
								<th scope="col" class="text-center">id</th>
								<th scope="col" class="text-center">이름</th>
								<th scope="col" class="text-center">email</th>
								<th scope="col" class="text-center">phone</th>
								<th scope="col" class="text-center">프로필/신청서</th>
								<th scope="col" class="text-center">신고유형</th>
								<th scope="col" class="text-center">신고내용</th>
							</tr>
						</thead>
						<tbody>
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
														<td class="text-center"><input type="checkbox" name="chk"></td>
														<td align="center">${item.memberno}</td>
														<td align="center">${item.id}</td>
														<td align="center">${item.name}</td>
														<td align="center">${item.email}</td>
														<td align="center">${item.phone}</td>
														<td align="center">${item.job_opening}</td>
														<td align="center">${item.r_type}</td>
														<td align="center">${item.contents}</td>
													</tr>
												</c:forEach>
										</c:otherwise>
							</c:choose>
						</tbody>
					</table>
					<div class="page">
						<ul class="pagination">
							<!-- 페이지 번호 구현 -->
							<%-- 이전 그룹에 대한 링크 --%>
								<c:choose>
									<%-- 이전 그룹으로 이동 가능하다면? --%>
										<c:when test="${pageData.prevPage > 0}">
											<%-- 이동할 URL 생성 --%>
												<c:url value="/admin/admin_member.do" var="prevPageUrl">
													<c:param name="page" value="${pageData.prevPage}" />
													<c:param name="type" value="${type}" />
												</c:url>
												<li class="page-item prev_btn"><a href="${prevPageUrl}">[Prev]</a></li>
										</c:when>
										<c:otherwise>
											<li class="page-item disabled"><a>[Prev]</a></li>
										</c:otherwise>
								</c:choose>
	
								<%-- 페이지 번호 (시작 페이지 부터 끝 페이지까지 반복) --%>
									<c:forEach var="i" begin="${pageData.startPage}" end="${pageData.endPage}"
										varStatus="status">
										<%-- 이동할 URL 생성 --%>
											<c:url value="/admin/admin_member.do" var="pageUrl">
												<c:param name="page" value="${i}" />
												<c:param name="type" value="${type}" />
											</c:url>
	
											<%-- 페이지 번호 출력 --%>
												<c:choose>
													<%-- 현재 머물고 있는 페이지 번호를 출력할 경우 링크 적용 안함 --%>
														<c:when test="${pageData.nowPage == i}">
															<li class="page-item active"><a>${i}</a></li>
														</c:when>
														<%-- 나머지 페이지의 경우 링크 적용함 --%>
															<c:otherwise>
																<li class="page-item"><a href="${pageUrl}">${i}</a></li>
															</c:otherwise>
												</c:choose>
									</c:forEach>
	
									<%-- 다음 그룹에 대한 링크 --%>
										<c:choose>
											<%-- 다음 그룹으로 이동 가능하다면? --%>
												<c:when test="${pageData.nextPage > 0}">
													<%-- 이동할 URL 생성 --%>
														<c:url value="/admin/admin_member.do" var="nextPageUrl">
															<c:param name="page" value="${pageData.nextPage}" />
															<c:param name="type" value="${type}" />
														</c:url>
														<li class="page-item next_btn"><a href="${nextPageUrl}">[Next]</a>
														</li>
												</c:when>
												<c:otherwise>
													<li class="page-item disabled"><a>[Next]</a></li>
												</c:otherwise>
										</c:choose>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Javascript -->
	<script
		src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
	<!-- jquery 파일명 수정 -->
	<script
		src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>

	<script>
			function allcheck(o) {
			// 클릭한 체크박스의 table 에서 (바로위 부모요소를 대상)
			// 이름이 chk 인것을 찾고
			// 현재 요소의 체크 상태를 찾은 대상에 적용
			$(o).closest('table').find('[name=chk]').prop('checked', o.checked);
		}
		</script>
</body>
</html>