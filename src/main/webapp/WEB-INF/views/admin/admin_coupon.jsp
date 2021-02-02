<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no"/>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<title>관리자페이지</title>

		<!-- 모바일 웹 페이지 설정 -->
		<link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/ico/favicon.ico" />
		<link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath}/assets/ico/favicon.ico" />

		<!-- bootstrap -->
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" />
		<!-- noto Sans 웹 폰트 적용 -->
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/notosans.css" />
		<!-- css 참조  -->
		<script src="https://kit.fontawesome.com/f27ac0bcc1.js" crossorigin="anonymous"></script>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/admin_header.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/admin_coupon.css" />
		<style>

		</style>
</head>
	<body>
<div class="container">
		<header>
			<%@ include file="../admin/admin_header.jsp"%>
			</header>
		<div class="Title">
		<h1>이용권 관리 현황 / 쿠폰 발송</h1>
		<ol class="breadcrumb">
		<li>
		<i class="fas fa-home"></i>
		<a href="${pageContext.request.contextPath}/admin_member.do">Home</a>
		</li>
		<li class="active">
		이용권 관리 현황 / 쿠폰 발송
		</li>	
		</ol>
		</div>
		<div class="dropdown">
		<select class="filter" id="filter_bbs" name="filter_bbs">
		<option value="" selected>전체</option>
		<option value="find">이용권사용중회원</option>
		<option value="payment">미사용중회원</option>
		<option value="apply">만료회원</option>
		<option value="care">소멸회원</option>
		</select>
	    <select class="filter" id="filter_bbs" name="filter_bbs">
		<option value="nomal" selected>기본정렬</option>
		<option value="startdate">이용권시작일순</option>
		<option value="enddate">이용권만료일순</option>
	    </select>
	    <select class="filter" id="filter_limit" name="filter_limit">
		<option value="10" selected>10개씩보기</option>
		<option value="20">20개씩보기</option>
		<option value="30">30개씩보기</option>
	    </select>
        </div>
		<div id="tabCont2_1" class="tabCont">
		<div class="mTab typeTab eTab">
		<ul>	
		<button type="button" class="button">쿠폰발송</button>
		</ul>
		</div>
		<div id="tabContSub2_1_1" class="tabContSub">
		<div class="mBoard typeLiset gScroll gCellSingle">
		<table>
		<thead>
		<tr>
		<th class="col-md-1"><input type="checkbox" onclick="allcheck(this)"></th>
		<th class="col-md-1">회원번호</th>
		<th class="col-md-1">이름</th>
		<th class="col-md-1">아이디</th>
		<th class="col-md-2">이용권시작일</th>
		<th class="col-md-2">이용권만료일</th>
		<th class="col-md-2">쿠폰지급일</th>
		</tr>
		</thead>
		<tbody class="middle center">
		<tr>
		<td class="text-center"><input type="checkbox" name="chk"></td>
		<td class="text-center">1</td>
	    <td class="text-center">홍길동</td>
	    <td class="text-center">Iron</td>
		<td class="text-center">2020-10-10</td>
		<td class="text-center">2021-03-10</td>
		<td class="text-center">2020-10-10</td>
		</tr>
		<tr>
		<td class="text-center"><input type="checkbox" name="chk"></td>
		<td class="text-center">2</td>
	    <td class="text-center">이춘향</td>
	    <td class="text-center">Bronze</td>
		<td class="text-center">2020-11-01</td>
		<td class="text-center">2021-04-01</td>
		<td class="text-center">2020-11-01</td>
		</tr>
		<tr>
		<td class="text-center"><input type="checkbox" name="chk"></td>
		<td class="text-center">3</td>
	    <td class="text-center">이몽룡</td>
	    <td class="text-center">Silver</td>
		<td class="text-center">2020-03-05</td>
		<td class="text-center">2021-08-05</td>
		<td class="text-center">2020-03-05</td>
		</tr>
		<tr>
		<td class="text-center"><input type="checkbox" name="chk"></td>
		<td class="text-center">4</td>
	    <td class="text-center">오태식</td>
	    <td class="text-center">Gold</td>
		<td class="text-center">2020-06-06</td>
		<td class="text-center">2021-11-06</td>
		<td class="text-center">2020-06-06</td>
		</tr>
		</tbody>
		</table>
		</div>
		</div>
		</div>
		
</div>
		<!-- Javascript -->
		<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
		<script type="text/javascript">
		function allcheck(o) {
			// 클릭한 체크박스의 table 에서 (바로위 부모요소를 대상)
			// 이름이 chk 인것을 찾고
			// 현재 요소의 체크 상태를 찾은 대상에 적용
			$(o).closest('table').find('[name=chk]').prop('checked', o.checked);
		}
		$(document).ready(function() {
			$('#btn_delete').click(function() {
				var result = confirm('정말 삭제하시겠습니까?');
				if(result) {
					//yes
					location.replace('admin_main.html');
				} else {
					// no
				}
			});
		});
		$(document).ready(function() {
			$('.logout').click(function() {
				var result = confirm('정말 로그아웃 하시겠습니까?');
				if(result) {
					//yes
					location.replace('admin_login.html');
				} else {
					// no
				}
			});
		});
			</script>
	</body>
</html>