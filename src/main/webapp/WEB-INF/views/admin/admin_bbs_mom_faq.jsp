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
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/admin/css/admin_custom_bbs.css" />
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
                <h1>부모회원 자주 묻는 질문</h1>
                <ol class="breadcrumb">
                    <li>
						<i class="fas fa-home"></i>
                        <a href="admin_main.html">Home</a>
                    </li>
                    <li class="active">
                        부모회원 자주 묻는 질문
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
								<option value="" selected>카테고리별</option>
								<option value="find">맘시터 찾기</option>
								<option value="payment">부모회원 전용상품</option>
								<option value="apply">채용 및 계약</option>
								<option value="care">돌봄활동과 활동비</option>
								<option value="review">후기</option>
								<option value="member">회원정보</option>
							</select>
							<select class="filter" id="filter_bbs" name="filter_bbs">
								<option value="nomal" selected>기본정렬</option>
								<option value="hit">조회수많은순</option>
								<option value="recent">최근작성순</option>
							</select>
							<select class="filter" id="filter_limit" name="filter_limit">
								<option value="10" selected>10개씩보기</option>
								<option value="20">20개씩보기</option>
								<option value="30">30개씩보기</option>
							</select>
						</div>
					</div>
					<div class="type_header">
						<div class="bbs_btn">
							<a href="#" class="btn_nomal"><span><i class="far fa-file-alt"></i>&nbsp;새글작성</span></a>
							<a href="#" class="btn_nomal"><span><i class="fas fa-pen"></i>&nbsp;수정</span></a>
							<a href="#" class="btn_nomal"><span><i class="far fa-trash-alt"></i>&nbsp;삭제</span></a>
						</div>
					</div>
					<div class="type_content">
						<div class="bbs_list">
							<table>
								<colgroup>
									<col style="width: 42px;">
									<col style="width: 70px;">
									<col style="width: 70px;">
									<col style="width: 300px;">
									<col style="width: 120px">
									<col style="width: 120px;">
								</colgroup>
								<thead>
									<tr>
										<th scope="col">
											<input type="checkbox" class="allcheck">
										</th>
										<th scope="col">번호</th>
										<th scope="col">카테고리</th>
										<th scope="col">제목</th>
										<th scope="col">작성자</th>
										<th scope="col">작성일자</th>
									</tr>
								</thead>
								<tbody class="center">
									<tr>
										<td>
											<input type="checkbox" name="bbs_no[]" value="1" class="rowcheck">
										</td>
										<td>
											5
										</td>
										<td>
											맘시터 찾기
										</td>
										<td class="left">
											<a href="#"><span>시터를 어떻게 찾나요?</span></a>
										</td>
										<td>
											맘시터
										</td>
										<td>2021-01-26&nbsp;15:38</td>
									</tr>
									<tr>
										<td>
											<input type="checkbox" name="bbs_no[]" value="1" class="rowcheck">
										</td>
										<td>
											4
										</td>
										<td>
											맘시터 찾기
										</td>
										<td class="left">
											<a href="#"><span>최소 돌봄 시간이 정해져있나요?</span></a>
										</td>
										<td>
											맘시터
										</td>
										<td>2021-01-10&nbsp; 15:38</td>
									</tr>
									<tr>
										<td>
											<input type="checkbox" name="bbs_no[]" value="1" class="rowcheck">
										</td>
										<td>
											3
										</td>
										<td>
											채용 및 계약
										</td>
										<td class="left">
											<a href="#"><span>시터님과 계약서를 작성할 수 있나요?</span></a>
										</td>
										<td>
											맘시터
										</td>
										<td>2020-12-31&nbsp; 15:38</td>
									</tr>
									<tr>
										<td>
											<input type="checkbox" name="bbs_no[]" value="1" class="rowcheck">
										</td>
										<td>
											2
										</td>
										<td>
											돌봄 활동
										</td>
										<td class="left">
											<a href="#"><span>자세한 돌봄활동이 궁금해요!</span></a>
										</td>
										<td>
											맘시터
										</td>
										<td>2020-10-21&nbsp; 15:38</td>
									</tr>
									<tr>
										<td>
											<input type="checkbox" name="bbs_no[]" value="1" class="rowcheck">
										</td>
										<td>
											1
										</td>
										<td>
											후기
										</td>
										<td class="left">
											<a href="#"><span>후기는 언제 작성할 수 있나요?</span></a>
										</td>
										<td>
											맘시터
										</td>
										<td>2021-01-26&nbsp; 15:38</td>
									</tr>
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