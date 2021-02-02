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
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" />

<!-- noto Sans 웹 폰트 적용 -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/notosans.css" />

<!-- 아이콘 사용 -->
<script src="https://kit.fontawesome.com/7018452b37.js" crossorigin="anonymous"></script> 

<!-- sweetalert 사용 -->
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

 <!-- header css 적용 -->
 <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/upd_mpm_detail.css">

<!-- css 참조 -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/mom_page_detail_yj.css" />
<style type="text/css">
	/** for header */
	.mp_detail_tl {
        margin: 0;
        padding: 20px 20px;
    }
	/** end for header */

	#modal_ok {
		color: #008f69;
		border-color: #fff;
		height: 50px;
		margin-left: -30px;
		width: 160px;
		font-weight: bold;
	}
	#modal_serach {
		color: #008f69;
		border-color: #fff;
		margin-right: -50px;
		font-weight: bold;
		height: 50px;
		width: 190px;
		border-left: 1px solid #ccc;
    }
    
    .info_text.upd_appl {
        display: flex;
        flex-direction: column;
        align-items: center;
        padding: 20px;
    } 

    .info_text.upd_appl img {
        width: 100px;
        height: 100px;
        padding: 10px;
        background-color: #eee;
        border-radius: 50%;
        margin-bottom: 20px;
        position: relative;
	}
	
	.info_box {
		position: relative;
	}

    .box_name_edit1 {
        color: #838383;
        font-size: 2.5em;
        position: absolute;
        right: 20px;
        z-index: 10;
    }

    .iwant_box {
        position: relative;
    }

    .box_name_edit2 {
        color: #838383;
        font-size: 2.5em;
        position: absolute;
        top: 0;
        right: 20px;
        z-index: 10;
    }

    .possible_zone_box {
        position: relative;
    }

    .box_name_edit3 {
        color: #838383;
        font-size: 2.5em;
        position: absolute;
        top: 10px;
        right: 20px;
        z-index: 10;
    }

    .active_box {
        position: relative;
    }

    .box_name_edit4 {
        color: #838383;
        font-size: 2.5em;
        position: absolute;
        top: 0;
        right: 20px;
        z-index: 10;
    }

    .possible_age_box {
        position: relative;
    }

    .box_name_edit5 {
        color: #838383;
        font-size: 2.5em;
        position: absolute;
        top: 0;
        right: 20px;
        z-index: 10;
    }
    
</style>
</head>
	
<body>		
		<div class="container">
			<div class="col-xs-12"> <!-- xs-12로 모바일 맞춤 -->
				<!-- header -->
                <header class="mp_detail_tl" style="border-bottom: 1px solid #ccc;">
                    <div class="row">
                        <div class="col-xs-12 mp_detail_tl_in">
                            <a href="${pageContext.request.contextPath}/mypage/mypage_mom/mom_mypage.do">
                                <i class="fas fa-angle-left"></i>
                            </a>
                            <h3 class="center-block">내 신청서 수정</h3>
                        </div>
                    </div>
				</header>
				<!--end header-->
				
				<!-- Main start-->
				<div class="main">
					<div class="info_box">
                        <a href="${pageContext.request.contextPath}/mypage/mypage_mom/update_mom/update_profile_cont.do" class="box_name_edit1">
                            <i class="fas fa-pen-square"></i>
                        </a>
						<div class="box_name">내 신청서 정보</div>
						<div class="info_area">
							<div class="info_text_box">
								<div class="info_text upd_appl">
                                    <img src="${pageContext.request.contextPath}/assets/img/mypage_img/profile.png" alt="">
                                    <p>영어놀이, 등하원 돕기, 학습지도 맘시터 찾습니다.</p>
                                    <p>정○우 ㅣ no.99999</p>
								</div>
							</div>
						</div>
					</div>
					<div class="iwant_box">
                        <a href="${pageContext.request.contextPath}/mypage/mypage_mom/update_mom/update_sitter_age.do" class="box_name_edit2">
                            <i class="fas fa-pen-square"></i>
                        </a>
						<div class="box_name">원하는 시터나이</div>
						<div class="iwant_area">
							<div class="sitter_age_area">
								<div class="sitter_age_no_area">
									20대
								</div>
								<div class="sitter_age_ok_area">
									30대
								</div>
								<div class="sitter_age_ok_area">
									40대
								</div>
								<div class="sitter_age_ok_area">
									50대
								</div>
								<div class="sitter_age_no_area">
									60대
								</div>
							</div>
						</div>
					</div> <!-- fin. iwant_box -->
					<div class="possible_zone_box">
                        <a href="${pageContext.request.contextPath}/mypage/mypage_mom/update_mom/update_location.do" class="box_name_edit3">
                            <i class="fas fa-pen-square"></i>
                        </a>
						<div class="box_name">돌봄 지역</div>
						<div class="possible_zone_area">
							<div>
								<div class="zone_line">
									<span style="color: #028071;"><i class="fas fa-map-marker-alt"></i></span> 
									<div id="zone_line_blank">인천광역시 남동구</div>
								</div>
							</div>
						</div> <!-- fin. possible_zone_area -->
					</div> <!-- fin. possible_zone_box -->
					<div class="active_box">
                        <a href="${pageContext.request.contextPath}/mypage/mypage_mom/update_mom/update_care_time.do" class="box_name_edit4">
                            <i class="fas fa-pen-square"></i>
                        </a>
						<div class="box_name">활동 가능 시간</div>
						<div class="active_area">
							<div class="active_area_text">
								<div class="active_area_profil">
									<img src="${pageContext.request.contextPath}/assets/img/chat_mom03.jpg" width="60" height="60" style="border-radius: 100%;"/>
								</div>
								<div class="active_area_text_box">
									<div id="active_area_style"></div>
									<div style="padding: 8px 0px;">
										<div class="active_text_line">
											<span id="active_text_style">
											아래 시간 중 서로 맞는 시간에 만나보고
											<br/>
											<span style="color: #c040dc; margin-left: 5px;">
											돌봄 일정을 결정
											</span>
											하고 싶어요.
											</span>
										</div>
									</div>
								</div>
							</div>
							<div>
								<div class="active_time_box">
								
									<div class="partTime_line">
										<div class="partTime">
											<div class="part">오전</div>
											<div class="time">07시 ~ 12시</div>
										</div>
										<div class="partTime">
											<div class="part">오후</div>
											<div class="time">12시 ~ 18시</div>
										</div>
										<div class="partTime">
											<div class="part">저녁</div>
											<div class="time">18시 ~ 22시</div>
										</div>
									</div> <!-- fin. partTime_line -->
									
									<div class="partDay_line">
										월
										<div class="partDay_ok"><i class="fas fa-check"></i></div>
										<div class="partDay_ok"><i class="fas fa-check"></i></div>
										<div class="partDay_no"></div>
									</div> <!-- fin. partDay_line -->
									<div class="partDay_line">
										화
										<div class="partDay_ok"><i class="fas fa-check"></i></div>
										<div class="partDay_ok"><i class="fas fa-check"></i></div>
										<div class="partDay_no"></div>
									</div> <!-- fin. partDay_line -->
									<div class="partDay_line">
										수
										<div class="partDay_ok"><i class="fas fa-check"></i></div>
										<div class="partDay_ok"><i class="fas fa-check"></i></div>
										<div class="partDay_no"></div>
									</div> <!-- fin. partDay_line -->
									<div class="partDay_line">
										목
										<div class="partDay_ok"><i class="fas fa-check"></i></div>
										<div class="partDay_ok"><i class="fas fa-check"></i></div>
										<div class="partDay_no"></div>
									</div> <!-- fin. partDay_line -->
									<div class="partDay_line">
										금
										<div class="partDay_ok"><i class="fas fa-check"></i></div>
										<div class="partDay_ok"><i class="fas fa-check"></i></div>
										<div class="partDay_no"></div>
									</div> <!-- fin. partDay_line -->
									<div class="partDay_line">
										토
										<div class="partDay_no"></div>
										<div class="partDay_no"></div>
										<div class="partDay_no"></div>
									</div> <!-- fin. partDay_line -->
									<div class="partDay_line">
										일
										<div class="partDay_no"></div>
										<div class="partDay_no"></div>
										<div class="partDay_no"></div>
									</div> <!-- fin. partDay_line -->
									
								</div> <!-- fin. active_time_box -->
							</div>
						</div> <!-- fin. active_area -->
					</div> <!-- fin. active_box -->
					<div class="possible_age_box">
                        <a href="${pageContext.request.contextPath}/mypage/mypage_mom/update_mom/update_child_info.do" class="box_name_edit5">
                            <i class="fas fa-pen-square"></i>
                        </a>
                    <div class="box_name">아이 정보</div>
					<div class="possible_age_area">
						<div>							
							<div class="child_age_line">
								<div style="margin-bottom: -10px">
								<span style="color: #ff7000;"><i class="fas fa-baby-carriage fa-3x"></i></span>
								</div>
								<span class="child_age_text">영아 2세</span>
							</div>
							<div class="child_age_line">
								<div style="margin-bottom: -10px">
								<span style="color: #ff7000;"><i class="fas fa-child fa-3x"></i></span>
								</div>
								<span class="child_age_text">유아 7세</span>
							</div>		
						</div>
					</div> <!-- fin. possible_age_area -->
				</div> <!-- fin. possible_age_box -->
					<div class="possible_age_box">
                        <a href="${pageContext.request.contextPath}/mypage/mypage_mom/update_mom/update_activity.do" class="box_name_edit5">
                            <i class="fas fa-pen-square"></i>
                        </a>
						<div class="box_name">원하는 활동</div>
						<div class="possible_age_area">
							<div>
							<div class="possible_active_main">
									<div class="active_line col-xs-3">
										<div class="active_ok">
											<div class="active_ok_img">
												<div class="active_ok_box">
												<img src="${pageContext.request.contextPath}/assets/img/innerplayicon_s.png"/>
												</div>
												<span>실내놀이</span>
											</div>
										</div>
										<div class="active_no">
											<div class="active_no_img">
												<div class="active_no_box">
												<img src="${pageContext.request.contextPath}/assets/img/koreanicon_s.png"/>
												</div>
												<span>한글놀이</span>
											</div>
										</div>
										<div class="active_ok">
											<div class="active_ok_img">
												<div class="active_ok_box">
												<img src="${pageContext.request.contextPath}/assets/img/cleanicon_s.png"/>
												</div>
												<span>간단 청소</span>
											</div>
										</div>
										<div class="active_no">
											<div class="active_no_img">
												<div class="active_no_box">
												<img src="${pageContext.request.contextPath}/assets/img/longhouseicon_s.png"/>
												</div>
												<span>장기입주</span>
											</div>
										</div>
									</div>
									<!-- --- -->
									<div class="active_line col-xs-3">
										<div class="active_no">
											<div class="active_no_img">
												<div class="active_no_box">
												<img src="${pageContext.request.contextPath}/assets/img/guideicon_s.png"/>
												</div>
												<span>등하원 돕기</span>
											</div>
										</div>
										<div class="active_no">
											<div class="active_no_img">
												<div class="active_ok_box">
												<img src="${pageContext.request.contextPath}/assets/img/englishicon_s.png"/>
												</div>
												<span>영어놀이</span>
											</div>
										</div>
										<div class="active_ok">
											<div class="active_ok_img">
												<div class="active_ok_box">
												<img src="${pageContext.request.contextPath}/assets/img/eaticon_s.png"/>
												</div>
												<span>밥 챙겨주기</span>
											</div>
										</div>
										<div class="active_no">
											<div class="active_no_img">
												<div class="active_no_box">
												<img src="${pageContext.request.contextPath}/assets/img/houseicon_s.png"/>
												</div>
												<span>단기입주</span>
											</div>
										</div>
									</div>
									<!-- ----- -->
									<div class="active_line col-xs-3">
										<div class="active_ok">
											<div class="active_ok_img">
												<div class="active_ok_box">
												<img src="${pageContext.request.contextPath}/assets/img/readicon_s.png"/>
												</div>
												<span>책읽기</span>
											</div>
										</div>
										<div class="active_no">
											<div class="active_no_img">
												<div class="active_no_box">
												<img src="${pageContext.request.contextPath}/assets/img/studyicon_s.png"/>
												</div>
												<span>학습지도</span>
											</div>
										</div>
										<div class="active_ok">
											<div class="active_ok_img">
												<div class="active_ok_box">
												<img src="${pageContext.request.contextPath}/assets/img/dishicon_s.png"/>
												</div>
												<span>간단 설거지</span>
											</div>
										</div>
									</div>
									<!-- ------- -->
									<div class="active_line col-xs-3">
										<div class="active_ok">
											<div class="active_ok_img">
												<div class="active_ok_box">
												<img src="${pageContext.request.contextPath}/assets/img/ousideicon_s.png"/>
												</div>
												<span>야외활동</span>
											</div>
										</div>
										<div class="active_no">
											<div class="active_no_img">
												<div class="active_no_box">
												<img src="${pageContext.request.contextPath}/assets/img/ballicon_s.png" />
												</div>
												<span>체육놀이</span>
											</div>
										</div>
									</div>
									<!-- ---- -->
								</div>
							</div>
						</div> <!-- fin. possible_active_area -->
					</div> <!-- fin. possible_active_box -->
					<div class="possible_age_box">
					<a href="${pageContext.request.contextPath}/mypage/mypage_mom/update_mom/update_request.do" class="box_name_edit5">
						<i class="fas fa-pen-square"></i>
					</a>
					<div class="box_name">그 외 요청사항</div>
					<div class="possible_age_area">
						<div>							
							<div class="other_line">
								<label class="want_gender_line">희망 맘시터 성별 : </label>
								<span class="want_gender">여자</span>
							</div>
							<div class="other_line">
								<label class="want_care_line">희망 맘시터 성별 : </label>
								<span class="want_care">할머니(할아버지)와 함께 돌봐주세요.</span>
							</div>		
						</div>
					</div> <!-- fin. possible_age_area -->
					</div> <!-- fin. possible_age_box -->
				</div> <!-- fin. Main -->
			</div> <!-- fin. col-xs-12 -->
		</div>
	
		<!-- Javascript -->
		<script src="<%=request.getContextPath()%>/assets/js/jquery.min.js"></script>
		 <!-- jquery 파일명 수정 -->
		<script src="<%=request.getContextPath()%>/assets/js/bootstrap.min.js"></script> 
	</body>
</html>