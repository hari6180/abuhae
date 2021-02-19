<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>아이를부탁해</title>

<!-- 모바일 웹 페이지 설정 -->
<link rel="shortcut icon" href="<%=request.getContextPath()%>/assets/ico/favicon.ico" />
<link rel="apple-touch-icon-precomposed" href="<%=request.getContextPath()%>/assets/ico/favicon.ico" />

<!-- bootstrap -->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/css/bootstrap.min.css" />

<!-- noto Sans 웹 폰트 적용 -->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/css/notosans.css" />

<!-- 아이콘 사용 -->
<script src="https://kit.fontawesome.com/7018452b37.js" crossorigin="anonymous"></script> 

<!-- sweetalert 사용 -->
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<!-- css 참조 -->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/css/mom_page_detail.css" />
</head>
	
<body>		
		<div class="container">
			<div class="col-xs-12"> <!-- xs-12로 모바일 맞춤 -->
				<div class="pull-right">
					<button type="button" class="btn btn-dark btn-xs" id="siren" onclick = "location.href='${pageContext.request.contextPath}/page_detail/mom_page_detail/mom_report.do?momno=${output.momno}';">
				 	 <img src="<%=request.getContextPath()%>/assets/img/siren.png" width="13" height="15"/>
				             신고
				  	</button>
				</div>
				  <button type="button" class="x_btn" onclick = "history.back() ">
					<img src="<%=request.getContextPath()%>/assets/img/x-btn.jpg" width="28" height="28"/>
				  </button>
				<div class="profil_photo">
				  <div class="profil_img">			  
					<img src="<%=request.getContextPath()%>/assets/img/chat_mom.png"/>				
				  </div>
				</div> <!-- fin. profil_photo -->
				<div class="profil_info">
					<p style="font-weight: bold; font-size: 1.2em;">${output.apply_title}</p>
				</div> <!-- fin. profil_info -->
				<div class="mom_info">
				    <div class="name">${output.name}</div>
					<div class="line"></div>
					<div class="number">no.${output.momno}</div>
				</div>
				
				<hr/>
				
				<div class="two_info_box">
					<div class="two_info_area">
						<div class="views_area">
							<div id="views"><i class="fas fa-user-friends"></i> 지원자 수</div>
							<div id="views_number"><span style="color: #00726e;">현재 ${output.cntno}명</span></div>
						</div>
						<div class="two_info_style"></div>
						<div class="clock_area">
							<div id="clock"><i class="far fa-clock"></i> 신청서 작성</div>
							<div id="date">${output.openingdate}</div>
						</div>
					</div>
				</div>
				<!-- Main start-->
				<div class="main">
				<c:if test="${output.apply_content!=null}">
					<div class="info_box">
						<div class="box_name">신청내용</div>
						<div class="info_area">
							<div class="info_text_box">
								<div class="info_text">
									<span>
										${output.apply_content}
									</span>
								</div>
							</div>
						</div>
					</div>
					</c:if>
					<div class="iwant_box">
						<div class="box_name">원하는 시터나이</div>
						<div class="iwant_area">
							<div class="sitter_age_area">
								<c:if test="${output.want_age!='20대'}">
								<div class="sitter_age_no_area">
									20대
								</div>
								</c:if>
								<c:if test="${output.want_age=='20대'}">
								<div class="sitter_age_ok_area">
									20대
								</div>
								</c:if>
								<c:if test="${output.want_age!='30대'}">
								<div class="sitter_age_no_area">
									30대
								</div>
								</c:if>
								<c:if test="${output.want_age=='30대'}">
								<div class="sitter_age_ok_area">
									30대
								</div>
								</c:if>
								<c:if test="${output.want_age!='40대'}">
								<div class="sitter_age_no_area">
									40대
								</div>
								</c:if>
								<c:if test="${output.want_age=='40대'}">
								<div class="sitter_age_ok_area">
									40대
								</div>
								</c:if>
								<c:if test="${output.want_age!='50대'}">
								<div class="sitter_age_no_area">
									50대
								</div>
								</c:if>
								<c:if test="${output.want_age=='50대'}">
								<div class="sitter_age_ok_area">
									50대
								</div>
								</c:if>
								<c:if test="${output.want_age!='60대'}">
								<div class="sitter_age_no_area">
									60대
								</div>
								</c:if>
								<c:if test="${output.want_age=='60대'}">
								<div class="sitter_age_ok_area">
									60대
								</div>
								</c:if>
							</div>
						</div>
					</div> <!-- fin. iwant_box -->
					<div class="possible_zone_box">
						<div class="box_name">돌봄 지역</div>
						<div class="possible_zone_area">
							<div>
								<div class="zone_line">
									<span style="color: #028071;"><i class="fas fa-map-marker-alt"></i></span> 
									<div id="zone_line_blank">${output.si}&nbsp;${output.gu}</div>
								</div>
							</div>
						</div> <!-- fin. possible_zone_area -->
					</div> <!-- fin. possible_zone_box -->
					<div class="active_box">
						<div class="box_name">활동 가능 시간</div>
						<div class="active_area">
							<div class="active_area_text">
								<div class="active_area_profil">
									<img src="<%=request.getContextPath()%>/assets/img/chat_mom03.jpg" width="60" height="60" style="border-radius: 100%;"/>
								</div>
								<div class="active_area_text_box">
									<div id="active_area_style"></div>
									<div style="padding: 8px 0px;">
										<div class="active_text_line">
											<span id="active_text_style">
											* 아래 표시된 날에만 돌봐주세요.
											<br/>
											<c:if test="${fn:contains(output.schedule_ok,Y)}">
											<span style="margin-left: 5px;">
											* 이 일정은 맘시터에 맞춰서 얼마든지 
											<br/>
											<span style="margin-left: 13px;">
											조정할 수 있어요.
											</span>
											</span>
											</c:if>
											</span>
										</div>
									</div>
								</div>
							</div>
							<div>
							<c:if test="${output.frequency=='noplan'}">
							<c:set var="theString" value="${output.days}" />
							
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
										<c:if test="${fn:contains(theString, 'wek_morning')}">
										<div class="partDay_ok"><i class="fas fa-check"></i></div>
										</c:if>
										<c:if test="${fn:contains(theString, 'wek_morning')==false}">
										<div class="partDay_no"></div>
										</c:if>
										<c:if test="${fn:contains(theString, 'wek_launch')}">
										<div class="partDay_ok"><i class="fas fa-check"></i></div>
										</c:if>
										<c:if test="${fn:contains(theString, 'wek_launch')==false}">
										<div class="partDay_no"></div>
										</c:if>
										<c:if test="${fn:contains(theString, 'wek_evning')}">
										<div class="partDay_ok"><i class="fas fa-check"></i></div>
										</c:if>
										<c:if test="${fn:contains(theString, 'wek_evning')==false}">
										<div class="partDay_no"></div>
										</c:if>
									</div> <!-- fin. partDay_line -->
									<div class="partDay_line">
										화
										<c:if test="${fn:contains(theString, 'wek_morning')}">
										<div class="partDay_ok"><i class="fas fa-check"></i></div>
										</c:if>
										<c:if test="${fn:contains(theString, 'wek_morning')==false}">
										<div class="partDay_no"></div>
										</c:if>
										<c:if test="${fn:contains(theString, 'wek_launch')}">
										<div class="partDay_ok"><i class="fas fa-check"></i></div>
										</c:if>
										<c:if test="${fn:contains(theString, 'wek_launch')==false}">
										<div class="partDay_no"></div>
										</c:if>
										<c:if test="${fn:contains(theString, 'wek_evning')}">
										<div class="partDay_ok"><i class="fas fa-check"></i></div>
										</c:if>
										<c:if test="${fn:contains(theString, 'wek_evning')==false}">
										<div class="partDay_no"></div>
										</c:if>
									</div> <!-- fin. partDay_line -->
									<div class="partDay_line">
										수
										<c:if test="${fn:contains(theString, 'wek_morning')}">
										<div class="partDay_ok"><i class="fas fa-check"></i></div>
										</c:if>
										<c:if test="${fn:contains(theString, 'wek_morning')==false}">
										<div class="partDay_no"></div>
										</c:if>
										<c:if test="${fn:contains(theString, 'wek_launch')}">
										<div class="partDay_ok"><i class="fas fa-check"></i></div>
										</c:if>
										<c:if test="${fn:contains(theString, 'wek_launch')==false}">
										<div class="partDay_no"></div>
										</c:if>
										<c:if test="${fn:contains(theString, 'wek_evning')}">
										<div class="partDay_ok"><i class="fas fa-check"></i></div>
										</c:if>
										<c:if test="${fn:contains(theString, 'wek_evning')==false}">
										<div class="partDay_no"></div>
										</c:if>
									</div> <!-- fin. partDay_line -->
									<div class="partDay_line">
										목
										<c:if test="${fn:contains(theString, 'wek_morning')}">
										<div class="partDay_ok"><i class="fas fa-check"></i></div>
										</c:if>
										<c:if test="${fn:contains(theString, 'wek_morning')==false}">
										<div class="partDay_no"></div>
										</c:if>
										<c:if test="${fn:contains(theString, 'wek_launch')}">
										<div class="partDay_ok"><i class="fas fa-check"></i></div>
										</c:if>
										<c:if test="${fn:contains(theString, 'wek_launch')==false}">
										<div class="partDay_no"></div>
										</c:if>
										<c:if test="${fn:contains(theString, 'wek_evning')}">
										<div class="partDay_ok"><i class="fas fa-check"></i></div>
										</c:if>
										<c:if test="${fn:contains(theString, 'wek_evning')==false}">
										<div class="partDay_no"></div>
										</c:if>
									</div> <!-- fin. partDay_line -->
									<div class="partDay_line">
										금
										<c:if test="${fn:contains(theString, 'wek_morning')}">
										<div class="partDay_ok"><i class="fas fa-check"></i></div>
										</c:if>
										<c:if test="${fn:contains(theString, 'wek_morning')==false}">
										<div class="partDay_no"></div>
										</c:if>
										<c:if test="${fn:contains(theString, 'wek_launch')}">
										<div class="partDay_ok"><i class="fas fa-check"></i></div>
										</c:if>
										<c:if test="${fn:contains(theString, 'wek_launch')==false}">
										<div class="partDay_no"></div>
										</c:if>
										<c:if test="${fn:contains(theString, 'wek_evning')}">
										<div class="partDay_ok"><i class="fas fa-check"></i></div>
										</c:if>
										<c:if test="${fn:contains(theString, 'wek_evning')==false}">
										<div class="partDay_no"></div>
										</c:if>
									</div> <!-- fin. partDay_line -->
									<div class="partDay_line">
										토
										<c:if test="${fn:contains(theString, 'end_morning')}">
										<div class="partDay_ok"><i class="fas fa-check"></i></div>
										</c:if>
										<c:if test="${fn:contains(theString, 'end_morning')==false}">
										<div class="partDay_no"></div>
										</c:if>
										<c:if test="${fn:contains(theString, 'end_launch')}">
										<div class="partDay_ok"><i class="fas fa-check"></i></div>
										</c:if>
										<c:if test="${fn:contains(theString, 'end_launch')==false}">
										<div class="partDay_no"></div>
										</c:if>
										<c:if test="${fn:contains(theString, 'end_evning')}">
										<div class="partDay_ok"><i class="fas fa-check"></i></div>
										</c:if>
										<c:if test="${fn:contains(theString, 'end_evning')==false}">
										<div class="partDay_no"></div>
										</c:if>
									</div> <!-- fin. partDay_line -->
									<div class="partDay_line">
										일
										<c:if test="${fn:contains(theString, 'end_morning')}">
										<div class="partDay_ok"><i class="fas fa-check"></i></div>
										</c:if>
										<c:if test="${fn:contains(theString, 'end_morning')==false}">
										<div class="partDay_no"></div>
										</c:if>
										<c:if test="${fn:contains(theString, 'end_launch')}">
										<div class="partDay_ok"><i class="fas fa-check"></i></div>
										</c:if>
										<c:if test="${fn:contains(theString, 'end_launch')==false}">
										<div class="partDay_no"></div>
										</c:if>
										<c:if test="${fn:contains(theString, 'end_evning')}">
										<div class="partDay_ok"><i class="fas fa-check"></i></div>
										</c:if>
										<c:if test="${fn:contains(theString, 'end_evning')==false}">
										<div class="partDay_no"></div>
										</c:if>
									</div> <!-- fin. partDay_line -->
									
								</div> <!-- fin. active_time_box -->
								</c:if>
							</div>
						</div> <!-- fin. active_area -->
					</div> <!-- fin. active_box -->
					<div class="possible_age_box">
					<div class="box_name">아이 정보</div>
					<div class="possible_age_area">
						<div>												
							<div class="child_age_line">
								<div style="margin-bottom: -10px">
								<span style="color: #ff7000;"><i class="fas fa-child fa-3x"></i></span>
								</div>
								<span class="child_age_text">${output.kids_num} 명</span>							</div>						
						</div>
					</div> <!-- fin. possible_age_area -->
				</div> <!-- fin. possible_age_box -->
					<div class="possible_age_box">
						<div class="box_name">원하는 활동</div>
						<div class="possible_age_area">
							<div>
							<div class="possible_active_main">
									<div class="active_line col-xs-3">
										<c:if test="${output.want_act1!='실내놀이'}">
										<c:if test="${output.want_act2!='실내놀이'}">
										<c:if test="${output.want_act3!='실내놀이'}">
										<div class="active_no">
											<div class="active_no_img">
												<div class="active_no_box">
												<img src="<%=request.getContextPath()%>/assets/img/innerplayicon_s.png"/>
												</div>
												<span>실내놀이</span>
											</div>
										</div>
										</c:if>
										</c:if>
										</c:if>
										<c:if test="${output.want_act1=='실내놀이' || output.want_act2=='실내놀이' || output.want_act3=='실내놀이'}">
										<div class="active_ok">
											<div class="active_ok_img">
												<div class="active_ok_box">
												<img src="<%=request.getContextPath()%>/assets/img/innerplayicon_s.png"/>
												</div>
												<span>실내놀이</span>
											</div>
										</div>
										</c:if>
										<c:if test="${output.want_act1!='한글놀이'}">
										<c:if test="${output.want_act2!='한글놀이'}">
										<c:if test="${output.want_act3!='한글놀이'}">
										<div class="active_no">
											<div class="active_no_img">
												<div class="active_no_box">
												<img src="<%=request.getContextPath()%>/assets/img/koreanicon_s.png"/>
												</div>
												<span>한글놀이</span>
											</div>
										</div>
										</c:if>
										</c:if>
										</c:if>
										<c:if test="${output.want_act1=='한글놀이' || output.want_act2=='한글놀이' || output.want_act3=='한글놀이'}">
										<div class="active_ok">
											<div class="active_ok_img">
												<div class="active_ok_box">
												<img src="<%=request.getContextPath()%>/assets/img/koreanicon_s.png"/>
												</div>
												<span>한글놀이</span>
											</div>
										</div>
										</c:if>
										<c:if test="${output.want_act1!='간단청소'}">
										<c:if test="${output.want_act2!='간단청소'}">
										<c:if test="${output.want_act3!='간단청소'}">
										<div class="active_no">
											<div class="active_no_img">
												<div class="active_no_box">
												<img src="<%=request.getContextPath()%>/assets/img/cleanicon_s.png"/>
												</div>
												<span>간단 청소</span>
											</div>
										</div>
										</c:if>
										</c:if>
										</c:if>
										<c:if test="${output.want_act1=='간단청소' || output.want_act2=='간단청소' || output.want_act3=='간단청소'}">
										<div class="active_ok">
											<div class="active_ok_img">
												<div class="active_ok_box">
												<img src="<%=request.getContextPath()%>/assets/img/cleanicon_s.png"/>
												</div>
												<span>간단 청소</span>
											</div>
										</div>
										</c:if>
										<c:if test="${output.want_act1!='장기입주'}">
										<c:if test="${output.want_act2!='장기입주'}">
										<c:if test="${output.want_act3!='장기입주'}">
										<div class="active_no">
											<div class="active_no_img">
												<div class="active_no_box">
												<img src="<%=request.getContextPath()%>/assets/img/longhouseicon_s.png"/>
												</div>
												<span>장기입주</span>
											</div>
										</div>
										</c:if>
										</c:if>
										</c:if>
										<c:if test="${output.want_act1=='장기입주' || output.want_act2=='장기입주' || output.want_act3=='장기입주'}">
										<div class="active_ok">
											<div class="active_ok_img">
												<div class="active_ok_box">
												<img src="<%=request.getContextPath()%>/assets/img/longhouseicon_s.png"/>
												</div>
												<span>장기입주</span>
											</div>
										</div>
										</c:if>
									</div>
									<!-- --- -->
									<div class="active_line col-xs-3">
										<c:if test="${output.want_act1!='등하원돕기'}">
										<c:if test="${output.want_act2!='등하원돕기'}">
										<c:if test="${output.want_act3!='등하원돕기'}">
										<div class="active_no">
											<div class="active_no_img">
												<div class="active_no_box">
												<img src="<%=request.getContextPath()%>/assets/img/guideicon_s.png"/>
												</div>
												<span>등하원 돕기</span>
											</div>
										</div>
										</c:if>
										</c:if>
										</c:if>
										<c:if test="${output.want_act1=='등하원돕기' || output.want_act2=='등하원돕기' || output.want_act3=='등하원돕기'}">
										<div class="active_ok">
											<div class="active_ok_img">
												<div class="active_ok_box">
												<img src="<%=request.getContextPath()%>/assets/img/guideicon_s.png"/>
												</div>
												<span>등하원 돕기</span>
											</div>
										</div>
										</c:if>
										<c:if test="${output.want_act1!='영어놀이'}">
										<c:if test="${output.want_act2!='영어놀이'}">
										<c:if test="${output.want_act3!='영어놀이'}">
										<div class="active_no">
											<div class="active_no_img">
												<div class="active_no_box">
												<img src="<%=request.getContextPath()%>/assets/img/englishicon_s.png"/>
												</div>
												<span>영어놀이</span>
											</div>
										</div>
										</c:if>
										</c:if>
										</c:if>
										<c:if test="${output.want_act1=='영어놀이' || output.want_act2=='영어놀이' || output.want_act3=='영어놀이'}">
										<div class="active_ok">
											<div class="active_ok_img">
												<div class="active_ok_box">
												<img src="<%=request.getContextPath()%>/assets/img/englishicon_s.png"/>
												</div>
												<span>영어놀이</span>
											</div>
										</div>
										</c:if>
										<c:if test="${output.want_act1!='밥챙겨주기'}">
										<c:if test="${output.want_act2!='밥챙겨주기'}">
										<c:if test="${output.want_act3!='밥챙겨주기'}">
										<div class="active_no">
											<div class="active_no_img">
												<div class="active_no_box">
												<img src="<%=request.getContextPath()%>/assets/img/eaticon_s.png"/>
												</div>
												<span>밥 챙겨주기</span>
											</div>
										</div>
										</c:if>
										</c:if>
										</c:if>
										<c:if test="${output.want_act1=='밥챙겨주기' || output.want_act2=='밥챙겨주기' || output.want_act3=='밥챙겨주기'}">
										<div class="active_ok">
											<div class="active_ok_img">
												<div class="active_ok_box">
												<img src="<%=request.getContextPath()%>/assets/img/eaticon_s.png"/>
												</div>
												<span>밥 챙겨주기</span>
											</div>
										</div>
										</c:if>
										<c:if test="${output.want_act1!='단기입주'}">
										<c:if test="${output.want_act2!='단기입주'}">
										<c:if test="${output.want_act3!='단기입주'}">
										<div class="active_no">
											<div class="active_no_img">
												<div class="active_no_box">
												<img src="<%=request.getContextPath()%>/assets/img/houseicon_s.png"/>
												</div>
												<span>단기입주</span>
											</div>
										</div>
										</c:if>
										</c:if>
										</c:if>
										<c:if test="${output.want_act1=='단기입주' || output.want_act2=='단기입주' || output.want_act3=='단기입주'}">
										<div class="active_ok">
											<div class="active_ok_img">
												<div class="active_ok_box">
												<img src="<%=request.getContextPath()%>/assets/img/houseicon_s.png"/>
												</div>
												<span>단기입주</span>
											</div>
										</div>
										</c:if>
									</div>
									<!-- ----- -->
									<div class="active_line col-xs-3">
										<c:if test="${output.want_act1!='책읽기'}">
										<c:if test="${output.want_act2!='책읽기'}">
										<c:if test="${output.want_act3!='책읽기'}">
										<div class="active_no">
											<div class="active_no_img">
												<div class="active_no_box">
												<img src="<%=request.getContextPath()%>/assets/img/readicon_s.png"/>
												</div>
												<span>책읽기</span>
											</div>
										</div>
										</c:if>
										</c:if>
										</c:if>
										<c:if test="${output.want_act1=='책읽기' || output.want_act2=='책읽기' || output.want_act3=='책읽기'}">
										<div class="active_ok">
											<div class="active_ok_img">
												<div class="active_ok_box">
												<img src="<%=request.getContextPath()%>/assets/img/readicon_s.png"/>
												</div>
												<span>책읽기</span>
											</div>
										</div>
										</c:if>
										<c:if test="${output.want_act1!='학습지도'}">
										<c:if test="${output.want_act2!='학습지도'}">
										<c:if test="${output.want_act3!='학습지도'}">
										<div class="active_no">
											<div class="active_no_img">
												<div class="active_no_box">
												<img src="<%=request.getContextPath()%>/assets/img/studyicon_s.png"/>
												</div>
												<span>학습지도</span>
											</div>
										</div>
										</c:if>
										</c:if>
										</c:if>
										<c:if test="${output.want_act1=='학습지도' || output.want_act2=='학습지도' || output.want_act3=='학습지도'}">
										<div class="active_ok">
											<div class="active_ok_img">
												<div class="active_ok_box">
												<img src="<%=request.getContextPath()%>/assets/img/studyicon_s.png"/>
												</div>
												<span>학습지도</span>
											</div>
										</div>
										</c:if>
										<c:if test="${output.want_act1!='설거지'}">
										<c:if test="${output.want_act2!='설거지'}">
										<c:if test="${output.want_act3!='설거지'}">
										<div class="active_no">
											<div class="active_no_img">
												<div class="active_no_box">
												<img src="<%=request.getContextPath()%>/assets/img/dishicon_s.png"/>
												</div>
												<span>간단 설거지</span>
											</div>
										</div>
										</c:if>
										</c:if>
										</c:if>
										<c:if test="${output.want_act1=='설거지' || output.want_act2=='설거지' || output.want_act3=='설거지'}">
										<div class="active_ok">
											<div class="active_ok_img">
												<div class="active_ok_box">
												<img src="<%=request.getContextPath()%>/assets/img/dishicon_s.png"/>
												</div>
												<span>간단 설거지</span>
											</div>
										</div>
										</c:if>
									</div>
									<!-- ------- -->
									<div class="active_line col-xs-3">
										<c:if test="${output.want_act1!='야외활동'}">
										<c:if test="${output.want_act2!='야외활동'}">
										<c:if test="${output.want_act3!='야외활동'}">
										<div class="active_no">
											<div class="active_no_img">
												<div class="active_no_box">
												<img src="<%=request.getContextPath()%>/assets/img/ousideicon_s.png"/>
												</div>
												<span>야외활동</span>
											</div>
										</div>
										</c:if>
										</c:if>
										</c:if>
										<c:if test="${output.want_act1=='야외활동' || output.want_act2=='야외활동' || output.want_act3=='야외활동'}">
										<div class="active_ok">
											<div class="active_ok_img">
												<div class="active_ok_box">
												<img src="<%=request.getContextPath()%>/assets/img/ousideicon_s.png"/>
												</div>
												<span>야외활동</span>
											</div>
										</div>
										</c:if>
										<c:if test="${output.want_act1!='체육놀이'}">
										<c:if test="${output.want_act2!='체육놀이'}">
										<c:if test="${output.want_act3!='체육놀이'}">
										<div class="active_no">
											<div class="active_no_img">
												<div class="active_no_box">
												<img src="<%=request.getContextPath()%>/assets/img/ballicon_s.png" />
												</div>
												<span>체육놀이</span>
											</div>
										</div>
										</c:if>
										</c:if>
										</c:if>
										<c:if test="${output.want_act1=='체육놀이' || output.want_act2=='체육놀이' || output.want_act3=='체육놀이'}">
										<div class="active_ok">
											<div class="active_ok_img">
												<div class="active_ok_box">
												<img src="<%=request.getContextPath()%>/assets/img/ballicon_s.png" />
												</div>
												<span>체육놀이</span>
											</div>
										</div>
										</c:if>
										</div>								
								</div>
							</div>
						</div>
						</div> <!-- fin. possible_active_area -->
						<div class="talk_box">
						<div class="box_name">맘시터 후기</div>
						<div class="talk_area">
							<div class="talk_main">
								<div>
									<div class="talk_box_ea">
										<div class="talk_box_line">
											<img src="<%=request.getContextPath()%>/assets/img/chat_mom02.png" width="50" height="50"/>
											<div class="talk_box_line_text">
												<div class="talk_box_line_date_name">
													<div class="talk_box_line_name">김<i class="far fa-circle"></i>준</div>
													<div class="talk_box_line_date">7달 전</div>
												</div>
												<div class="talk_box_line_date_name">
													<div style="color: #000; font-size: 0.8em; margin-right: 5px; font-weight: bold;">인터뷰 후기</div>
													<div class="star_area">
														<span style="color: #ff7000;"><i class="fas fa-star"></i></span>
														<span style="color: #ff7000;"><i class="fas fa-star"></i></span>
														<span style="color: #ff7000;"><i class="fas fa-star"></i></span>
														<span style="color: #ff7000;"><i class="fas fa-star"></i></span>
														<span style="color: #e5e5e5;"><i class="fas fa-star"></i></span>
													</div>
												</div>
												<div class="talk_box_line_date_name">
													<div class="talk_box_talk">
														<span>원하는 시간이 저와 맞지 않아 매칭이 성사되지 못하였습니다ㅠㅠ</span>
													</div>
												</div>
											</div>
										</div>
									</div>
									
									<hr style="margin: -1px 0px 0px; height: 1px; border: none; background-color: rgb(224,224,224);">
									
									<div class="talk_box_ea">
										<div class="talk_box_line">
											<img src="<%=request.getContextPath()%>/assets/img/chat_mom02.png" width="50" height="50"/>
											<div class="talk_box_line_text">
												<div class="talk_box_line_date_name">
													<div class="talk_box_line_name">김<i class="far fa-circle"></i>준</div>
													<div class="talk_box_line_date">7달 전</div>
												</div>
												<div class="talk_box_line_date_name">
													<div style="color: #000; font-size: 0.8em; margin-right: 5px; font-weight: bold;">인터뷰 후기</div>
													<div class="star_area">
														<span style="color: #ff7000;"><i class="fas fa-star"></i></span>
														<span style="color: #ff7000;"><i class="fas fa-star"></i></span>
														<span style="color: #ff7000;"><i class="fas fa-star"></i></span>
														<span style="color: #ff7000;"><i class="fas fa-star"></i></span>
														<span style="color: #e5e5e5;"><i class="fas fa-star"></i></span>
													</div>
												</div>
												<div class="talk_box_line_date_name">
													<div class="talk_box_talk">
														<span>원하는 시간이 저와 맞지 않아 매칭이 성사되지 못하였습니다ㅠㅠ</span>
													</div>
												</div>
											</div>
										</div>
									</div>
									
									<hr style="margin: -1px 0px 0px; height: 1px; border: none; background-color: rgb(224,224,224);">
									
									<div class="talk_box_ea">
										<div class="talk_box_line">
											<img src="<%=request.getContextPath()%>/assets/img/chat_mom02.png" width="50" height="50"/>
											<div class="talk_box_line_text">
												<div class="talk_box_line_date_name">
													<div class="talk_box_line_name">김<i class="far fa-circle"></i>준</div>
													<div class="talk_box_line_date">7달 전</div>
												</div>
												<div class="talk_box_line_date_name">
													<div style="color: #000; font-size: 0.8em; margin-right: 5px; font-weight: bold;">인터뷰 후기</div>
													<div class="star_area">
														<span style="color: #ff7000;"><i class="fas fa-star"></i></span>
														<span style="color: #ff7000;"><i class="fas fa-star"></i></span>
														<span style="color: #ff7000;"><i class="fas fa-star"></i></span>
														<span style="color: #ff7000;"><i class="fas fa-star"></i></span>
														<span style="color: #e5e5e5;"><i class="fas fa-star"></i></span>
													</div>
												</div>
												<div class="talk_box_line_date_name">
													<div class="talk_box_talk">
														<span>원하는 시간이 저와 맞지 않아 매칭이 성사되지 못하였습니다ㅠㅠ</span>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div> <!-- fin. talk_area -->
					</div> <!-- fin. talk_box -->
					<c:if test="${output.description!=null}">
					<div class="possible_age_box">
					<div class="box_name">그 외 요청사항</div>
					<div class="possible_age_area">
						<div>
						<c:if test="${output.sitter_gender!=null}">							
							<div class="other_line">
								<label class="want_gender_line">희망 맘시터 성별 : </label>
								<c:if test="${fn:contains(output.sitter_gender,'F')}">
								<span class="want_gender">여자</span>
								</c:if>
								<c:if test="${fn:contains(output.sitter_gender,'M')}">
								<span class="want_gender">남자</span>
								</c:if>
							</div>
						</c:if>
						<c:if test="${output.care_type!=null}">	
							<div class="other_line">
								<label class="want_care_line">희망 돌봄 방식 : </label>
								<span class="want_care">${output.care_type}</span>
							</div>	
						</c:if>	
						</div>
					</div> <!-- fin. possible_age_area -->
					</div> <!-- fin. possible_age_box -->
					</c:if>
					</div> <!-- fin. possible_active_box -->
					
					
				</div> <!-- fin. Main -->
				<!-- ----------하단고정 부분 시작------------ -->
			<div class="fixed_box col-xs-12">
				<div class="fixed_area">
					<div class="fixed_area_age">
						<div class="fixed_name">
							
						</div>
						<div class="fixed_age">
							희망시급 <c:if test="${fn:contains(output.payment_ok,Y)}">(협의가능)</c:if>
						</div>
						<div class="fixed_money">
						<fmt:formatNumber value="${output.payment}" pattern="#,###" />원
						</div>
					</div>
				</div> <!-- fin. fixed_area -->
				<div class="fixed_btn">
					<div class="fixed_btn_jim">						
						<button id="swapHeart" class="btn btn-default swap">
						    <span class="glyphicon glyphicon-heart-empty" style="color: rgb(0, 143, 105); font-size: 25px;"></span>
						</button>
					</div>
					<div class="interview_btn">
						<button tabindex="0" type="button" class="btn-interview" onclick = "location.href='${pageContext.request.contextPath}/page_detail/mom_page_detail/mom_interview.do?momno=${output.momno}';">
							<div>
								<div class="btn_text_box">
									<span><a data-toggle="modal" href="#myModal" class="btn btn-primary btn-sm">인터뷰 신청하기</a></span>
								</div>
							</div>
						</button>
					</div>
				</div>
			</div> <!-- fin. fixed_box -->
				<div id="myModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
					<!-- .modal-dialog -->
					<div class="modal-dialog">
						<!-- .modal-content -->
						<div class="modal-content">
							<div class="modal-body">
								<p style="text-align: center; padding-top: 10px; font-weight: bold;">
									일자리에 지원하기 위해
									<br/>
									지원권을 구매해주세요
								</p>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default" data-dismiss="modal" id="btn_ok" onclick="location.href='<%=request.getContextPath()%>/buy/buy.do">
									지원권 구매하러 가기
								</button>
							</div>
						</div>
						<!-- /.modal-content -->
					</div>
					<!-- /.modal-dialog -->
				</div>
				<!-- /.modal -->		
				
			
	
		<!-- Javascript -->
		<script src="<%=request.getContextPath()%>/assets/js/jquery.min.js"></script>
		<script type="text/javascript">
		/*
		jQuery(function($) {
			
			const init = {
					  monList: ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'],
					  dayList: ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'],
					  today: new Date(), // 오늘 날짜 담기
					  monForChange: new Date().getMonth(),
					  activeDate: new Date(),
					  getFirstDay: (yy, mm) => new Date(yy, mm, 1), // 어떤 달의 첫번째 날에 대한 정보 얻기 
					  getLastDay: (yy, mm) => new Date(yy, mm + 1, 0), // 마지막 날에 대한 정보 얻기 
					  nextMonth: function () { // 다음 달 버튼 클릭시 실행 
					    let d = new Date();
					    d.setDate(1); // 일자를 1일로 설정 
					    d.setMonth(++this.monForChange); // d객체 통해서 몇월인지 얻기 
					    this.activeDate = d;
					    return d;
					  },
					  prevMonth: function () { // 이전 달 버튼 클릭 시 실행 
					    let d = new Date();
					    d.setDate(1); // 일자를 1일로 설정 
					    d.setMonth(--this.monForChange); //d객체 통해서 몇월인지 얻기 
					    this.activeDate = d;
					    return d;
					  },
					  addZero: (num) => (num < 10) ? '0' + num : num, // 한자리 숫자 앞에 0붙이기 
					  activeDTag: null
					};

					const $calBody = document.querySelector('.cal-body');
					const $btnNext = document.querySelector('.btn-cal.next');
					const $btnPrev = document.querySelector('.btn-cal.prev');

					/**
					 * @param {number} date
					 * @param {number} dayIn
					*/
					function loadDate (date, dayIn) {
					  document.querySelector('.cal-date').textContent = date;
					  document.querySelector('.cal-day').textContent = init.dayList[dayIn];
					}

					/**
					 * @param {date} fullDate
					 */
					 // 동적으로 달력생성 하기 
					function loadYYMM (fullDate) {
					  let yy = fullDate.getFullYear();
					  let mm = fullDate.getMonth();
					  let firstDay = init.getFirstDay(yy, mm);
					  let lastDay = init.getLastDay(yy, mm);
					  let markToday;  // for marking today date
					  
					  if (mm === init.today.getMonth() && yy === init.today.getFullYear()) {
					    markToday = init.today.getDate();
					  }

					  document.querySelector('.cal-month').textContent = init.monList[mm];
					  document.querySelector('.cal-year').textContent = yy;

					  let trtd = '';
					  let startCount;
					  let countDay = 0;
					  for (let i = 0; i < 6; i++) {
					    trtd += '<tr>';
					    for (let j = 0; j < 7; j++) {
					      if (i === 0 && !startCount && j === firstDay.getDay()) {
					        startCount = 1; // 날짜가 처음 시작하면 startCount 변수를 0에서 1로 변경 
					      }
					      if (!startCount) {
					        trtd += '<td>'
					      } else {
					        let fullDate = yy + '.' + init.addZero(mm + 1) + '.' + init.addZero(countDay + 1);
					        trtd += '<td class="day';
					        trtd += (markToday && markToday === countDay + 1) ? ' today" ' : '"';
					        // -> countDay 변수가 markToday값과 일치하면 td에 today클래스를 준다 
					        trtd += ` data-date="${countDay + 1}" data-fdate="${fullDate}">`;
					      }
					      trtd += (startCount) ? ++countDay : '';
					      if (countDay === lastDay.getDate()) { 
					        startCount = 0; // 날짜 세는 게 끝나면 startCount 변수를 다시 0으로 초기화한다 
					      }
					      trtd += '</td>';
					    }
					    trtd += '</tr>';
					  }
					  $calBody.innerHTML = trtd;
					}

					/**
					 * @param {string} val
					 */
					 // day 리스트 만들기 
					function createNewList (val) {
					  let id = new Date().getTime() + '';
					  let yy = init.activeDate.getFullYear();
					  let mm = init.activeDate.getMonth() + 1;
					  let dd = init.activeDate.getDate();
					  const $target = $calBody.querySelector(`.day[data-date="${dd}"]`);

					  let date = yy + '.' + init.addZero(mm) + '.' + init.addZero(dd);

					  let eventData = {};
					  eventData['date'] = date;
					  eventData['memo'] = val;
					  eventData['complete'] = false;
					  eventData['id'] = id;
					  init.event.push(eventData);
					  $todoList.appendChild(createLi(id, val, date));
					}

					loadYYMM(init.today);
					loadDate(init.today.getDate(), init.today.getDay());
					
					// click 이벤트 
					$btnNext.addEventListener('click', () => loadYYMM(init.nextMonth()));
					$btnPrev.addEventListener('click', () => loadYYMM(init.prevMonth()));

					$calBody.addEventListener('click', (e) => {
					  if (e.target.classList.contains('day')) {
					    if (init.activeDTag) {
					      init.activeDTag.classList.remove('day-active');
					    }
					    let day = Number(e.target.textContent);
					    loadDate(day, e.target.cellIndex);
					    e.target.classList.add('day-active');
					    init.activeDTag = e.target;
					    init.activeDate.setDate(day);
					    reloadTodo();
					  }
					});
			
			  $('#swapHeart').on('click', function() {
			    var $jim = $(this)
			    
			    // 찜할 때 alert창과 glyphicon변형
			    if($(this).find('span').hasClass("glyphicon-heart-empty")) {
			    	$(this).find('span').removeClass("glyphicon-heart-empty");
			    	$(this).find('span').addClass("glyphicon-heart");
		            swal("찜 하기 완료!", "마이페이지 > 찜한 일자리에서 확인할 수 있습니다.");
			    }
			 	// 찜 취소할 때 alert창과 glyphicon변형
		        else{
		           	swal("찜 하기 취소");
		            $(this).find('span').addClass("glyphicon-heart-empty");
		        }
		    
			  }); // fin. 찜버튼 기능
			}); */
		 </script>
		 <!-- jquery 파일명 수정 -->
		<script src="<%=request.getContextPath()%>/assets/js/bootstrap.min.js"></script> 
	</body>
</html>