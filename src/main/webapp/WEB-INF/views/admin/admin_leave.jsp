<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no"/>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<title>아이를부탁해</title>

		<!-- 모바일 웹 페이지 설정 -->
		<link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/ico/favicon.ico" />
		<link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath}/assets/ico/favicon.ico" />

		<!-- bootstrap -->
		<!--절대 경로 수정 1220 선아-->
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" />

		<!-- noto Sans 웹 폰트 적용 -->
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/notosans.css" />

		 <!-- icon 참조 -->
		 <script src="https://kit.fontawesome.com/12ac058ac7.js" crossorigin="anonymous"></script>
        
         <!-- css 참조 -->
         <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/admin_mng_mem.css">
         <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/admin_header.css" />
         
	</head>

	<body>
        <div class="container">
        <header>
			<%@ include file="../admin/admin_header.jsp"%>
			</header>
            <div class="wrap_leave">
                <div class="gruop_title row">
					<div class="title_cont col-xs-12">
						<h3>탈퇴회원 관리</h3>
						<ol class="breadcrumb">
							<li><a href="${pageContext.request.contextPath}/admin_member.do"><i class="fas fa-home"></i> Home</a></li>
							<li><a href="#"></i>회원관리</a></li>
							<li class="active"></i><a href="#">탈퇴회원 관리</a></li>
						</ol>
                    </div>

                    <div class="group_report row">
                        <div class="member_list table-responsive col-xs-12">
                            <div class="table_title last_tl">
                                <h3>탈퇴회원 관리</h3>
    
                                <!-- 회원 유형 선택 드롭다운 -->
                                <div class="lv_drop_list">
                                    <div class="dropdown clearfix">
                                        <a id="lv_drop1" href="#" role="button" class="dropdown-toggle" data-toggle="dropdown">
                                            회원유형 <i class="fas fa-caret-down"></i>
                                        </a>
                                        <ul class="dropdown-menu" role="menu" aria-labelledby="lv_drop1">
                                            <li class="drop_list" role="presentation">
                                                <a role="menuitem" tabindex="-1" href="#">전체회원</a>
                                            </li>
                                            <li class="drop_list" role="presentation">
                                                <a role="menuitem" tabindex="-1" href="#">부모회원</a>
                                            </li>
                                            <li class="drop_list" role="presentation">
                                                <a role="menuitem" tabindex="-1" href="#">시터회원</a>
                                            </li>
                                        </ul>
                                    </div>
    
                                    <div class="dropdown clearfix">
                                        <a id="lv_drop2" href="#" role="button" class="dropdown-toggle" data-toggle="dropdown">
                                            탈퇴 신청 날짜 <i class="fas fa-caret-down"></i>
                                        </a>
                                        <ul class="dropdown-menu" role="menu" aria-labelledby="lv_drop2">
                                            <li class="drop_list" role="presentation">
                                                <a role="menuitem" tabindex="-1" href="#">최근순</a>
                                            </li>
                                            <li class="drop_list" role="presentation">
                                                <a role="menuitem" tabindex="-1" href="#">오래된 순</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <!-- end 드롭다운 -->
                            </div>
    
                            <div class="line"></div>
    
                            <div class="btn_list">
                                <button class="rep_btn" type="button">
                                    <a href="#">
                                        <i class="fas fa-times"></i>
                                        회원삭제
                                    </a>
                                </button>
                            </div>
    
                            <table class="table table-bordered table-hover">
                                <thead>
                                    <tr role="row">
                                        <th class="text-center"><input type="checkbox" onclick="allcheck(this)"></th>
                                        <th class="text-center">id</th>
                                        <th class="text-center">이름</th>
                                        <th class="text-center">email</th>
                                        <th class="text-center">phone</th>
                                        <th class="text-center">탈퇴사유</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr role="row">
                                        <td class="text-center"><input type="checkbox" name="chk"></td>
                                        <td class="text-center">abc123</td>
                                        <td class="text-center">남윤재</td>
                                        <td class="text-center">yun123@abu.com</td>
                                        <td class="text-center">01012345567</td>
                                        <td class="text-center">직장을 구했습니다.</td>
                                    </tr>
                                    <tr role="row">
                                        <td class="text-center"><input type="checkbox" name="chk"></td>
                                        <td class="text-center">abc123</td>
                                        <td class="text-center">남윤재</td>
                                        <td class="text-center">yun123@abu.com</td>
                                        <td class="text-center">01012345567</td>
                                        <td class="text-center">돈이 안돼요.</td>
                                    </tr>
                                    <tr role="row">
                                        <td class="text-center"><input type="checkbox" name="chk"></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tr role="row">
                                        <td class="text-center"><input type="checkbox" name="chk"></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tr role="row">
                                        <td class="text-center"><input type="checkbox" name="chk"></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tr role="row">
                                        <td class="text-center"><input type="checkbox" name="chk"></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tr role="row">
                                        <td class="text-center"><input type="checkbox" name="chk"></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                </tbody>
                            </table>
                            <div class="page">
                                <ul class="pagination">
                                    <li class="disabled"><a href="#">Previous</a></li>
                                    <!-- sr-only 스크린 리더 전용 -->
                                    <li class="active"><span>1 <span class="sr-only">(current)</span></span></li>
                                    <li><a href="#">2</a></li>
                                    <li><a href="#">3</a></li>
                                    <li><a href="#">4</a></li>
                                    <li><a href="#">5</a></li>
                                    <li class="next_btn"><a href="#">Next</a></li>
                                </ul>
    
                            </div>
                        </div>
                    </div>
                    
                    <br>

                    <div class="group_member row">
                        <div class="member_list table-responsive col-xs-12">
                            <div class="table_title">
                                <h3>탈퇴회원 목록</h3>
    
                                <!-- 회원 유형 선택 드롭다운 -->
                                <div class="dropdown clearfix">
                                    <a id="leave_drop1" href="#" role="button" class="dropdown-toggle" data-toggle="dropdown">
                                        회원유형 <i class="fas fa-caret-down"></i>
                                    </a>
                                    <ul class="dropdown-menu" role="menu" aria-labelledby="leave_drop1">
                                        <li class="drop_list" role="presentation">
                                            <a role="menuitem" tabindex="-1" href="#">전체회원</a>
                                        </li>
                                        <li class="drop_list" role="presentation">
                                            <a role="menuitem" tabindex="-1" href="#">부모회원</a>
                                        </li>
                                        <li class="drop_list" role="presentation">
                                            <a role="menuitem" tabindex="-1" href="#">시터회원</a>
                                        </li>
                                    </ul>
                                </div>
                                <!-- end 드롭다운 -->
                            </div>
                            <table class="table table-bordered table-hover">
                                <thead>
                                    <tr role="row">
                                        <th class="text-center">id</th>
                                        <th class="text-center">이름</th>
                                        <th class="text-center">email</th>
                                        <th class="text-center">phone</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr role="row">
                                        <td class="text-center">abc123</td>
                                        <td class="text-center">남윤재</td>
                                        <td class="text-center">yun123@abu.com</td>
                                        <td class="text-center">01012345678</td>
                                    </tr>
                                    <tr role="row">
                                        <td class="text-center">abc123</td>
                                        <td class="text-center">남윤재</td>
                                        <td class="text-center">yun123@abu.com</td>
                                        <td class="text-center">01012345678</td>
                                    </tr>
                                    <tr role="row">
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tr role="row">
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tr role="row">
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tr role="row">
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tr role="row">
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                </tbody>
                            </table>
                            <div class="page">
                                <ul class="pagination">
                                    <li class="disabled"><a href="#">Previous</a></li>
                                    <!-- sr-only 스크린 리더 전용 -->
                                    <li class="active"><span>1 <span class="sr-only">(current)</span></span></li>
                                    <li><a href="#">2</a></li>
                                    <li><a href="#">3</a></li>
                                    <li><a href="#">4</a></li>
                                    <li><a href="#">5</a></li>
                                    <li class="next_btn"><a href="#">Next</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
				</div>
            </div>
        </div>
		<!-- Javascript -->
		<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script> <!-- jquery 파일명 수정 -->		
		<script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>

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