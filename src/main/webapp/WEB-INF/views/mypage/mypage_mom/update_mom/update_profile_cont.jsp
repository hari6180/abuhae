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
        
        <!-- icon 참조 -->
        <script src="https://kit.fontawesome.com/12ac058ac7.js" crossorigin="anonymous"></script>

        <!--flatpickr-->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">

        <!-- css 참조 -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/upd_mom_appl.css">
        
        
        <style type="text/css">
        /** for 후기 관리 페이지 (review.html) --------------------------------------*/
        /** 공통 for 후기 관리 */


        .flatpickr-day.selected,
		.flatpickr-day.selected:focus,
		.flatpickr-day.selected:hover {
			background-color: #ff7000;
			border-color: #ff7000;
		}

		.flatpickr-day.selected.prevMonthDay,
		.flatpickr-day.selected.nextMonthDay {
			background-color: #fff0e8;
			border-color: #fff0e8;
		}

		.flatpickr-day.today {
			border-color: #ff7000;
        }
        
        .select_btn {
            background-color: #ff7000 !important;
            position: relative !important;
            color: #fff !important;
        }
        
        h4 {
	           display: block;
	           text-align: left;
	           font-size: 0.9em;
	           color: #666;
	           margin: 34px 0 11px;
	       }
	
	       .payment_box i {
	           font-size: 1.2em;
	           color: #838383;
	       }
	       
	        /** for 후기 관리 페이지 (review.html) --------------------------------------*/
        /** 공통 for 후기 관리 */
        .wrap_update_activity {
            padding: 20px 20px;
            margin: 0 auto;
            max-width: 600px;
        }

        .upd_care_age_in {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
            width: 100%;
        }

        .care_age_btn {
            text-align: center;
            margin: 10px 0;
            box-sizing: content-box;
            position: relative;
        }

        .care_age_btn input[type="checkbox"]+label {
            position: relative;
            border: 0;
            outline: 0;
            text-decoration: none;
            margin: 0;
            padding: 0;
            padding-top: 10px;
            line-height: 36px;
            color: #d9d9d9;
            background-color: #efefef;
            transition: all 450ms cubic-bezier(0.23, 1, 0.32, 1) 0ms;
            text-align: center;
            width: 56px;
            height: 56px;
            border-radius: 56px;
        }

        .care_age_btn input[type="checkbox"]+label img {
            width: 38px;
            height: 38px;
        }

        .care_age_btn input[type="checkbox"]:checked+label {
            background-color: #ff7000;
            position: relative;
            color: #fff;
        }

        .care_age_text {
            color: #878787;
            font-weight: 600;
            margin-top: 17px;
            text-align: center;
        }

        .care_age_btn input[type='checkbox'] {
            display: none;
        }

        .care_age_cont_in {
            padding-top: 30px;
            color: #919191;
        }

		</style>
    
    </head>

    <body>
        <div id="app">
            <div class="container">
           	 	<form action="#">
           	 		<!-- header -->
                <header class="mp_detail_tl">
                    <div class="row">
                        <div class="col-xs-12 mp_detail_tl_in">
                            <a href="${pageContext.request.contextPath}/mypage/mypage_mom/update_appl.do">
                                <i class="fas fa-times"></i>
                            </a>
                            <h3 class="center-block">신청서 수정</h3>
                            <button type="submit">저장</button>
                        </div>
                    </div>
                </header>
                
                <div class="wrap_upd_profile_cont">
                
                    <!-- content1 -->
                    <section class="group_upd_img">
                    	<h3>신청서 수정</h3>
                    	<br>
                        <div class="row">
                            <div class="col-xs-12">
                                <h5 class="upd_img_tl">1. 내 사진 (선택사항)</h5>
                                <div class="upload_prof">
                                    <div class="user_img">
                                        <input type="file" id="new_profile_img" name="new_profile_img" accept="image/*" >
                                        <label for="new_profile_img"><img src="${pageContext.request.contextPath}/assets/img/mypage_img/user.png" alt=""></label>
                                    </div>
                                </div>
                                <div class="guide_user_img">
                                    <p>
                                        부모님 또는 아이 사진을 등록할 경우, <br/>
                                        맘시터와 <span style="color: #ff7000; text-decoration: underline;">5배</span> 더 빨리 매칭이 될 수 있습니다.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </section>   
                    <!-- end content1 -->
                    
                    <!-- content2 -->
                    <section class="group2_unp_img">
                        <div class="row">
                            <div class="col-xs-12">
                                <h5 class="upd_img_tl">2. 제목</h5>
                                <div class="choice_title">
                                    <select name="mom_appl_title" id="mom_appl_title">
                                        <option value="" disabled>제목을 입력해주세요.</option>
                                        <option value="1">하원 후 저녁 시간까지 돌봐줄 맘시터 찾습니다.</option>
                                        <option value="2">아이가 좋아하는 놀이를 같이해줄 맘시터 찾습니다.</option>
                                        <option value="3">간단한 학습지도를 해줄 맘시터 찾습니다.</option>
                                        <option value="4">야외 활동 같이해줄 맘시터 찾습니다.</option>
                                        <option value="5">+ 직접입력</option>
                                    </select>
                                </div>
                                <div class="mom_appl_title_text hide">
                                    <input type="text" name="mom_appl_title_text" placeholder="영어놀이, 등하원돕기, 학습지도 맘시터 찾습니다.">
                                </div>
                            </div>
                        </div>
                    </section>

                    <!-- content3 -->
                    <section class="group3_unp_img">
                        <div class="row">
                            <div class="col-xs-12">
                                <h5 class="upd_img_tl">3. 신청 내용(선택사항)</h5>
                                <textarea name="mom_appl_cont" id="mom_appl_cont" cols="30" rows="7" placeholder="아이 성별, 나이(개월 수), 성격, 특이사항 등을 적어주세요."></textarea>
                                <div class="mom_appl_ban">
                                    <div>
                                        <i class="fas fa-ban" style="color: #fcbe8f;"></i>
                                    </div> 
                                    <div>신청서에 연락처, 이메일, 카카오ID 등을 작성할 경우 회원 자격을 영구적으로 잃게 됩니다.</div>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
                
                <div class="wrap_upd_sage">
                    <section class="want_age_box">
                    	<h3>원하는 시터 나이 수정</h3>
                    	<br>
                    	<br>
                        <div class="row">
                            <div class="col-xs-12 age_box_cont">
                                <input type="checkbox" name="sitter_age" id="sage20" class="sitter_age" value="20">
                                <label for="sage20"><div class="check_age"></div> 20대</label>
                                <input type="checkbox" name="sitter_age" id="sage30" class="sitter_age" value="30">
                                <label for="sage30"><div class="check_age"></div> 30대</label>
                                <input type="checkbox" name="sitter_age" id="sage40" class="sitter_age" value="40">
                                <label for="sage40"><div class="check_age"></div> 40대</label>
                                <input type="checkbox" name="sitter_age" id="sage50" class="sitter_age" value="50">
                                <label for="sage50"><div class="check_age"></div> 50대</label>
                                <input type="checkbox" name="sitter_age" id="sage60" class="sitter_age" value="60">
                                <label for="sage60"><div class="check_age"></div> 60대</label>
                            </div>
                        </div>
                    </section>
                </div>
                
                <hr>
                
                <div class="wrap_upd_loc">
                    <!-- content1 (dropdown) -->
                    <section class="group1_upd_loc">
                    	<h3>돌봄장소 수정</h3>
                    	<br>
                        <div class="row">
                            <div class="col-xs-12 upd_loc_cont1">
                                <!--시,도-->
                                <div class="location_group" id="si">
                                    <div>
                                        <button class="loc_btn">서울특별시</button>
                                    </div>
                                    <div>
                                        <button class="loc_btn">경기도</button>
                                    </div>
                                    <div>
                                        <button class="loc_btn">인천광역시</button>
                                    </div>
                                    <div>
                                        <button class="loc_btn">부산광역시</button>
                                    </div>
                                    <div>
                                        <button class="loc_btn">대전광역시</button>
                                    </div>
                                    <div>
                                        <button class="loc_btn">대구광역시</button>
                                    </div>
                                    <div>
                                        <button class="loc_btn">울산광역시</button>
                                    </div>
                                    <div>
                                        <button class="loc_btn">세종특별자치시</button>
                                    </div>
                                    <div>
                                        <button class="loc_btn">광주광역시</button>
                                    </div>
                                    <div>
                                        <button class="loc_btn">강원도</button>
                                    </div>
                                    <div>
                                        <button class="loc_btn">충청북도</button>
                                    </div>
                                    <div>
                                        <button class="loc_btn">충청남도</button>
                                    </div>
                                    <div>
                                        <button class="loc_btn">경상북도</button>
                                    </div>
                                    <div>
                                        <button class="loc_btn">경상남도</button>
                                    </div>
                                    <div>
                                        <button class="loc_btn">전라북도</button>
                                    </div>
                                    <div>
                                        <button class="loc_btn">전라남도</button>
                                    </div>
                                    <div>
                                        <button class="loc_btn">제주특별자치도</button>
                                    </div>

                                </div>
                                <!--end 시-->
                                <!--구-->
                                <div class="location_group" id="gu">
                                    <div class="hide_content">
                                        <div>
                                            <button>강남구</button>
                                        </div>
                                        <div>
                                            <button>강동구</button>
                                        </div>
                                        <div>
                                            <button>강북구</button>
                                        </div>
                                        <div>
                                            <button>강서구</button>
                                        </div>
                                        <div>
                                            <button>관악구</button>
                                        </div>
                                        <div>
                                            <button>광진구</button>
                                        </div>
                                        <div>
                                            <button>구로구</button>
                                        </div>
                                        <div>
                                            <button>금천구</button>
                                        </div>
                                        <div>
                                            <button>노원구</button>
                                        </div>
                                        <div>
                                            <button>도봉구</button>
                                        </div>
                                        <div>
                                            <button>동대문구</button>
                                        </div>
                                        <div>
                                            <button>동작구</button>
                                        </div>
                                        <div>
                                            <button>마포구</button>
                                        </div>
                                        <div>
                                            <button>서대문구</button>
                                        </div>
                                        <div>
                                            <button>서초구</button>
                                        </div>
                                        <div>
                                            <button>성동구</button>
                                        </div>
                                        <div>
                                            <button>성북구</button>
                                        </div>
                                        <div>
                                            <button>송파구</button>
                                        </div>
                                        <div>
                                            <button>양천구</button>
                                        </div>
                                        <div>
                                            <button>영등포구</button>
                                        </div>
                                        <div>
                                            <button>용산구</button>
                                        </div>
                                        <div>
                                            <button>은평구</button>
                                        </div>
                                        <div>
                                            <button>종로구</button>
                                        </div>
                                        <div>
                                            <button>중구</button>
                                        </div>
                                        <div>
                                            <button>중랑구</button>
                                        </div>
                                    </div>
                                </div>
                                <!--end 구-->
                                <!--동-->
                                <div class="location_group" id="dong">
                                    <div class="hide_content">
                                        <div>
                                            <button>가산동</button>
                                        </div>
                                        <div>
                                            <button>독산1동</button>
                                        </div>
                                        <div>
                                            <button>독산2동</button>
                                        </div>
                                        <div>
                                            <button>독산3동</button>
                                        </div>
                                        <div>
                                            <button>독산4동</button>
                                        </div>
                                        <div>
                                            <button>독산동</button>
                                        </div>
                                        <div>
                                            <button>시흥1동</button>
                                        </div>
                                        <div>
                                            <button>시흥2동</button>
                                        </div>
                                        <div>
                                            <button>시흥3동</button>
                                        </div>
                                        <div>
                                            <button>시흥4동</button>
                                        </div>
                                        <div>
                                            <button>시흥5동</button>
                                        </div>
                                        <div>
                                            <button>시흥동</button>
                                        </div>
                                    </div>
                                </div>
                                <!--end 동-->
                            </div>
                        </div>

                       </section>
                    
                </div>
                
                <hr>
                
                <div class="wrap_upd_ct">
                     <!-- content1 -->
                     <section class="group_upd_ct">
                     	<h3>돌봄 기간 / 시간 변경</h3>
                     	<br>
                         <div class="row">
                             <div class="col-xs-12">
                                 <!-- 탭 버튼 영역 (정기적으로 / 특정한 날에만)-->
                                 <div class="upd_ct_tab">
                                     <a class="upd_ct_tab_item_link selected" href="#upd_ct_tab_page1">정기적으로</a>
                                     <a class="upd_ct_tab_item_link" href="#upd_ct_tab_page2">특정한 날에만</a>
                                 </div>
                                 <!-- end 탭 버튼 영역 -->

                                 <!-- 내용 영역 -->
                                 <div class="upd_ct_tab_panel">
                                     <div id="upd_ct_tab_page1" class="upd_ct_tab_page">
                                         <!--돌봄 시작일-->
                                         <div class="calc_box">
                                             <div class="regu_title">돌봄 시작일</div>
                                             <input id="datepicker" class="date_box">
                                         </div>
                                         <hr>
                                         <div>
                                             <div class="regu_title">돌봄 요일</div>
                                             <div class="day_btn_group">
                                                 <button class="day_btn" value="mon">월</button>
                                                 <button class="day_btn" value="tue">화</button>
                                                 <button class="day_btn" value="wen">수</button>
                                                 <button class="day_btn" value="thu">목</button>
                                                 <button class="day_btn" value="fri">금</button>
                                                 <button class="day_btn" value="sat">토</button>
                                                 <button class="day_btn" value="sun">일</button>
                                             </div>
                                         </div>
                                         <hr>
                                         <!--요일 선택시 나타내주기-->
                                         <div id="content" class="hide_content">
                                             <!--시간 선택-->
                                             <div class="time_select_box">
                                                <!--   <div>
                                                     <!--시작 시간-->
                                                   <!--    <div class="regu_title">시작시간</div>
                                                     <!--시간-->
                                                   <!--  <div class="select_time">
                                                         <select>
                                                             <option value="10:00">오전 10:00</option>
                                                             <option value="10:30">오전 10:30</option>
                                                             <option value="11:00" selected>오전 11:00</option>
                                                             <option value="11:30">오전 11:30</option>
                                                             <option value="12:00">오전 12:00</option>
                                                             <option value="12:30">오전 12:30</option>
                                                         </select>
                                                     </div>
                                                 </div>
                                                 <!--end select-->

                                                 <!--중간 바-->
                                                 <div class="middle_bar"></div>
                                                 <!--종료시간-->
                                                <!--   <div>
                                                     <div>
                                                         <div class="regu_title">종료시간</div>
                                                     </div>
                                                     <div class="select_time">
                                                         <select>
                                                             <option value="20:00">오후 20:00</option>
                                                             <option value="20:30">오후 20:30</option>
                                                             <option value="21:00" selected>오후 21:00</option>
                                                             <option value="21:30">오후 21:30</option>
                                                             <option value="22:00">오후 22:00</option>
                                                             <option value="22:30">오후 22:30</option>
                                                         </select>
                                                     </div>
                                                 </div>
                                                 <!--end select-->
                                             </div>
                                             <!--end select box-->

                                             <!--일정은 시터에게 맞출 수 잇어요-->
                                             <!--  <div class="jojung_box">
                                                 <span class="jojung_check"></span>
                                                 <span class="jojung_text">본 일정은 맘시터에 맞춰서 얼마든지 조정할 수 있어요.</span>
                                             </div> -->
	                            		</div>
                                     </div>
                                     <div id="upd_ct_tab_page2" class="upd_ct_tab_page hide">
                                         <div class="calen">
                                             <!--특정 날 선택 daypicker-->
                                              <div class="calrendar_block"></div>
                                         </div>
                                          <!--시간 선택-->
                                         <!--  <div class="time_select_box">
                                             <div>
                                                 <!--시작 시간-->
                                           <!--      	<div class="regu_title">시작시간</div>
                                                 <!--시간-->
                                             <!--      <div class="select_time">
                                                     <select>
                                                         <option value="10:00">오전 10:00</option>
                                                         <option value="10:30">오전 10:30</option>
                                                         <option value="11:00" selected>오전 11:00</option>
                                                         <option value="11:30">오전 11:30</option>
                                                         <option value="12:00">오전 12:00</option>
                                                         <option value="12:30">오전 12:30</option>
                                                     </select>
                                                 </div>
                                             </div>
                                             <!--end select-->

                                             <!--중간 바-->
                                        <!--       <div class="middle_bar"></div>
                                             <!--종료시간-->
                                            <!--  <div>
                                                 <div>
                                                     <div class="regu_title">종료시간</div>
                                                 </div>
                                                 <div class="select_time">
                                                     <select>
                                                         <option value="20:00">오후 20:00</option>
                                                         <option value="20:30">오후 20:30</option>
                                                         <option value="21:00" selected>오후 21:00</option>
                                                         <option value="21:30">오후 21:30</option>
                                                         <option value="22:00">오후 22:00</option>
                                                         <option value="22:30">오후 22:30</option>
                                                     </select>
                                                 </div>
                                             </div>
                                             <!--end select-->
                                         </div>
                                         <!--end select box-->
                                         <!--일정은 시터에게 맞출 수 잇어요-->
                                         <div class="jojung_box">
                                             <span class="jojung_check"></span>
                                             <span class="jojung_text">본 일정은 맘시터에 맞춰서 얼마든지 조정할 수 있어요.</span>
                                         </div>
                                     </div>
                                 </div>
                             </div>
                         </div>
                     </section>                       
                </div>
                
                <hr>
                
                <div class="wrap_upd_profile_cont">

                     <!-- content1 -->
                     <section class="group_upd_img">
                         <div class="row">
                             <div class="col-xs-12">
                             	<h3>아이정보/희망시급 수정</h3>
                             	<br>
                                 <div class="number_children_wrap">
                                     <button class="childeren_num1 btn_children_off" data-tab="select_one"><a class="child_num" href="#select_title1">1명</a></button>
                                     <button class="childeren_num2 btn_children_off" data-tab="select_two"><a class="child_num" href="#select_title2">2명</a></button>
                                 </div>
                                 <!--동적 요소 위치-->
                                 <div class="title">
                                     <!--아이 명수 선택 안 할시 띄우기-->
                                     <!--아이 명수 셀렉하면 동적 요소로 타이틀 변경-->
                                     <div class="noselect_title">
                                         안전한 아이 돌봄 서비스를 위해
                                         <br>
                                         시터 1명이 최대 2명까지 돌볼 수 있습니다.
                                     </div>
                                     <div id="select_title1" class="select_title hide">
                                     	<p>아이 생년/월을 입력해 주세요</p>
										<p>출산 예정이라면 예정 년/월을 입력해 주세요.</p>
										
										<div class="children_age_block">
										    <div class="title_block">아이 1</div>
										    <div class="select_children_age_wrap">
										        <div class="select_list">
										            <select id="year">
										                <option value="">출생년도</option>
										                <option value="2021">2021년</option>
										                <option value="2020">2020년</option>
										                <option value="2019">2019년</option>
										                <option value="2018">2018년</option>
										                <option value="2017">2017년</option>
										                <option value="2016">2016년</option>
										                <option value="2015">2015년</option>
										                <option value="2014">2014년</option>
										                <option value="2013">2013년</option>
										                <option value="2012">2012년</option>
										                <option value="2011">2011년</option>
										                <option value="2010">2010년</option>
										            </select>
										        </div>
										        <div class="select_list">
										            <select id="month">
										                <option value="">출생 월</option>
										                <option value="01">1월</option>
										                <option value="02">2월</option>
										                <option value="03">3월</option>
										                <option value="04">4월</option>
										                <option value="05">5월</option>
										                <option value="06">6월</option>
										                <option value="07">7월</option>
										                <option value="08">8월</option>
										                <option value="09">9월</option>
										                <option value="10">10월</option>
										                <option value="11">11월</option>
										                <option value="12">12월</option>
										            </select>
										        </div>
										    </div>
										</div>
										
										<div class="payment_wrap">
										    <div class="payment_box ">
										        <h4>맘시터에게 지급할 희망 시급을 적어 주세요.
										            <a href="#child_modal" data-toggle="modal"><i class="fas fa-question-circle"></i></a>
										        </h4>
										        <div class="payment_input_wrap">
										            <input type="text" class="payment_input" value="10,000" id="payment_input">
										            <span class="payment_fix">원</span>
										        </div>
										        <div class="disc_box">
										            <input type="checkbox" value="discussion" id="discussion"><label for="discussion">시급 협의
										                가능</label>
										        </div>
										    </div>
										</div>
                                     </div>
                                     
                                     <!-- 두번째 탭내용 -->
      				              <div id="select_title2" class="select_title hide">
                                     	<p>아이 생년/월을 입력해 주세요</p>
										<p>출산 예정이라면 예정 년/월을 입력해 주세요.</p>
										
										<div class="children_age_block">
										    <div class="title_block">아이 1</div>
										    <div class="select_children_age_wrap">
										        <div class="select_list">
										            <select>
										                <option value="">출생년도</option>
										                <option value="2021">2021년</option>
										                <option value="2020">2020년</option>
										                <option value="2019">2019년</option>
										                <option value="2018">2018년</option>
										                <option value="2017">2017년</option>
										                <option value="2016">2016년</option>
										                <option value="2015">2015년</option>
										                <option value="2014">2014년</option>
										                <option value="2013">2013년</option>
										                <option value="2012">2012년</option>
										                <option value="2011">2011년</option>
										                <option value="2010">2010년</option>
										            </select>
										        </div>
										        <div class="select_list">
										            <select>
										                <option value="">출생 월</option>
										                <option value="1">1월</option>
										                <option value="2">2월</option>
										                <option value="3">3월</option>
										                <option value="4">4월</option>
										                <option value="5">5월</option>
										                <option value="6">6월</option>
										                <option value="7">7월</option>
										                <option value="8">8월</option>
										                <option value="9">9월</option>
										                <option value="10">10월</option>
										                <option value="11">11월</option>
										                <option value="12">12월</option>
										            </select>
										        </div>
										    </div>
										</div>
										<div class="children_age_block">
										    <div class="title_block">아이 2</div>
										    <div class="select_children_age_wrap">
										        <div class="select_list">
										            <select id="year">
										                <option value="">출생년도</option>
										                <option value="2021">2021년</option>
										                <option value="2020">2020년</option>
										                <option value="2019">2019년</option>
										                <option value="2018">2018년</option>
										                <option value="2017">2017년</option>
										                <option value="2016">2016년</option>
										                <option value="2015">2015년</option>
										                <option value="2014">2014년</option>
										                <option value="2013">2013년</option>
										                <option value="2012">2012년</option>
										                <option value="2011">2011년</option>
										                <option value="2010">2010년</option>
										            </select>
										        </div>
										        <div class="select_list">
										            <select id="month">
										                <option value="">출생 월</option>
										                <option value="1">1월</option>
										                <option value="2">2월</option>
										                <option value="3">3월</option>
										                <option value="4">4월</option>
										                <option value="5">5월</option>
										                <option value="6">6월</option>
										                <option value="7">7월</option>
										                <option value="8">8월</option>
										                <option value="9">9월</option>
										                <option value="10">10월</option>
										                <option value="11">11월</option>
										                <option value="12">12월</option>
										            </select>
										        </div>
										    </div>
										</div>
										
										<div class="payment_wrap">
										    <div class="payment_box ">
										        <h4>맘시터에게 지급할 희망 시급을 적어 주세요.
										            <a href="#child_modal" data-toggle="modal"><i class="fas fa-question-circle"></i></a>
										        </h4>
										        <div class="payment_input_wrap">
										            <input type="text" class="payment_input" value="10,000" id="payment_input">
										            <span class="payment_fix">원</span>
										        </div>
										        <div class="disc_box">
										            <input type="checkbox" value="discussion" id="discussion"><label for="discussion">시급 협의
										                가능</label>
										        </div>
										    </div>
										</div>
                                     </div>
                                 </div>
                                 <!--버튼 select시 공지내용 변경 - ajax-->
                                 
                                 <!--end 동적 요소 위치-->
                             </div>
                         </div>
                     </section>   
                     <!-- end content1 -->


                    <!-- modal -->
                    <div id="child_modal" class="modal fade" tabindex="-1" role="dialog" 
                    aria-labelledby="modalLabel" aria-hidden="true">
	                    <!-- mocal-dialog -->
	                    <div class="modal-dialog">
	                        <!-- modal-content -->
	                        <div class="modal-content">
	                            <!--제목-->
	                            <div class="modal-header">
	                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"
	                                style="padding: 10px 0;">
	                                    <i class="fas fa-times"></i>
	                                </button>
	                                <h4 class="modal-title" id="modalLabel" 
	                                style="font-size: 1.2em; font-weight: bold; padding: 10px 0; color: #000;">
	                                    아래 시급 기준을 확인해주세요.
	                                </h4>
	                            </div>
	                            
	                            <!-- 내용 -->
	                            <div class="modal-body">
	                                <div style="margin-bottom: 20px;">
	                                    <h5 style="font-weight: bold; margin-bottom: 10px;">돌봄 아이 시급 1명일 경우</h5>
	                                    <p style="color: #838383; font-size: 0.9em;">최저시급 8,720원 이상 필수</p>
	                                </div>
	                                <div style="margin-bottom: 20px;">
	                                    <h5 style="font-weight: bold; margin-bottom: 10px;">돌봄 아이 시급 2명일 경우</h5>
	                                    <p style="color: #838383; font-size: 0.9em;">최저시급 8,720 x 1.5배인 13,000원 이상 필수</p>
	                                </div>
	                            </div>
	                        </div>
	                        <!-- //modal-content end -->
	                    </div>
	                    <!-- //modal-dailog end-->
	                </div>
                    
                </div>
                
                <hr>
                
                <div class="wrap_update_activity">
                	<h3>원하는 활동 수정</h3>
                    <br>     
                    <!-- content -->
                    <section class="upd_care_age_cont">
                        <div class="row">
                            <div class="col-xs-12 care_age_cont_in">
                                <h4>원하는 활동이란<a href="#mom_activity_modal" data-toggle="modal"><i class="fas fa-question-circle" style="margin-left: 10px; color: #919191;"></i></a></h4>
                                <br/>
                            </div>
                        </div>
                    </section> 

                    <section class="upd_care_age">
                        <div class="row">
                            <div class="col-xs-12 upd_care_age_in">
                                <!-- 첫째줄-->
                                <div class="age_line">
                                    <div class="care_age_btn">
                                        <input type="checkbox" class="care_age" id="care_age11" name="want_care_age" value="babyage1">
                                        <label for="care_age11"><img class="want_img" src="${pageContext.request.contextPath}/assets/img/innerplayicon_n.png" alt=""></label>
                                        <div class="care_age_text">실내놀이</div>
                                    </div>
        
                                    <div class="care_age_btn">
                                        <input type="checkbox" class="care_age" id="care_age12" name="want_care_age" value="babyage2">
                                        <label for="care_age12"><img class="want_img" src="${pageContext.request.contextPath}/assets/img/koreanicon_n.png" alt=""></label>
                                        <div class="care_age_text">한글놀이</div>
                                    </div>
        
                                    <div class="care_age_btn">
                                        <input type="checkbox" class="care_age" id="care_age13" name="want_care_age" value="babyage3">
                                        <label for="care_age13"><img class="want_img" src="${pageContext.request.contextPath}/assets/img/cleanicon_n.png" alt=""></label>
                                        <div class="care_age_text">간단청소</div>
                                    </div>
        
                                    <div class="care_age_btn">
                                        <input type="checkbox" class="care_age" id="care_age14" name="want_care_age" value="babyage2">
                                        <label for="care_age14"><img class="want_img" src="${pageContext.request.contextPath}/assets/img/longhouseicon_n.png" alt=""></i></label>
                                        <div class="care_age_text">장기입주</div>
                                    </div>
                                </div>
                                <!-- 둘째줄 -->
                                <div class="age_line">
                                    <div class="care_age_btn">
                                        <input type="checkbox" class="care_age" id="care_age21" name="want_care_age" value="babyage1">
                                        <label for="care_age21"><img class="want_img" src="${pageContext.request.contextPath}/assets/img/guideicon_n.png" alt=""></label>
                                        <div class="care_age_text">등하원돕기</div>
                                    </div>
        
                                    <div class="care_age_btn">
                                        <input type="checkbox" class="care_age" id="care_age22" name="want_care_age" value="babyage2">
                                        <label for="care_age22"><img class="want_img" src="${pageContext.request.contextPath}/assets/img/englishicon_n.png" alt=""></label>
                                        <div class="care_age_text">영어놀이</div>
                                    </div>
        
                                    <div class="care_age_btn">
                                        <input type="checkbox" class="care_age" id="care_age23" name="want_care_age" value="babyage3">
                                        <label for="care_age23"><img class="want_img" src="${pageContext.request.contextPath}/assets/img/eaticon_n.png" alt=""></label>
                                        <div class="care_age_text">밥 챙겨주기</div>
                                    </div>
        
                                    <div class="care_age_btn">
                                        <input type="checkbox" class="care_age" id="care_age24" name="want_care_age" value="babyage2">
                                        <label for="care_age24"><img class="want_img" src="${pageContext.request.contextPath}/assets/img/houseicon_n.png" alt=""></i></label>
                                        <div class="care_age_text">단기입주</div>
                                    </div>
                                </div>
                                <!-- 셋째줄 -->
                                <div class="age_line">
                                    <div class="care_age_btn">
                                        <input type="checkbox" class="care_age" id="care_age31" name="want_care_age" value="babyage1">
                                        <label for="care_age31"><img class="want_img" src="${pageContext.request.contextPath}/assets/img/readicon_n.png" alt=""></label>
                                        <div class="care_age_text">책읽기</div>
                                    </div>
        
                                    <div class="care_age_btn">
                                        <input type="checkbox" class="care_age" id="care_age32" name="want_care_age" value="babyage2">
                                        <label for="care_age32"><img class="want_img" src="${pageContext.request.contextPath}/assets/img/studyicon_n.png" alt=""></label>
                                        <div class="care_age_text">학습지도</div>
                                    </div>
        
                                    <div class="care_age_btn">
                                        <input type="checkbox" class="care_age" id="care_age33" name="want_care_age" value="babyage3">
                                        <label for="care_age33"><img class="want_img" src="${pageContext.request.contextPath}/assets/img/dishicon_n.png" alt=""></label>
                                        <div class="care_age_text">간단설거지</div>
                                    </div>
                                </div>
                                <!-- 넷째줄 -->
                                <div class="age_line">
                                    <div class="care_age_btn">
                                        <input type="checkbox" class="care_age" id="care_age41" name="want_care_age" value="babyage1">
                                        <label for="care_age41"><img class="want_img" src="${pageContext.request.contextPath}/assets/img/ousideicon_n.png" alt=""></label>
                                        <div class="care_age_text">야외활동</div>
                                    </div>
        
                                    <div class="care_age_btn">
                                        <input type="checkbox" class="care_age" id="care_age42" name="want_care_age" value="babyage2">
                                        <label for="care_age42"><img class="want_img" src="${pageContext.request.contextPath}/assets/img/ballicon_n.png" alt=""></label>
                                        <div class="care_age_text">체육놀이</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>

                    <!-- modal -->
                    <div id="mom_activity_modal" class="modal fade" tabindex="-1" role="dialog" 
                    aria-labelledby="modalLabel" aria-hidden="true">
                        <!-- mocal-dialog -->
                        <div class="modal-dialog">
                            <!-- modal-content -->
                            <div class="modal-content">
                                 <!--제목-->
                                 <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"
                                    style="padding: 10px 0;">
                                        <i class="fas fa-times"></i>
                                    </button>
                                    <h4 class="modal-title" id="modalLabel" 
                                    style="font-size: 1.2em; font-weight: bold; padding: 10px 0;">
                                        원하는 활동이란?
                                    </h4>
                                </div>
                                
                                <!-- 내용 -->
                                <div class="modal-body" style="padding: 20px 20px;">
                                    <div><span style="font-size: 0.9em; font-weight: bold;">실내놀이</span> <span style="font-size: 0.8em; color: #777;">그림 그리기, 게임하기</span></div>
                                    <hr>
                                    <div><span style="font-size: 0.9em; font-weight: bold;">등하원 돕기</span> <span style="font-size: 0.8em; color: #777;">유치원 데려다주기, 데리고오기</span></div>
                                    <hr>
                                    <div><span style="font-size: 0.9em; font-weight: bold;">책 읽기</span> <span style="font-size: 0.8em; color: #777;">아이가 좋아하는 책 읽어주기</span></div>
                                    <hr>
                                    <div><span style="font-size: 0.9em; font-weight: bold;">야외활동</span> <span style="font-size: 0.8em; color: #777;">놀이동산, 키즈카페 가기</span></div>
                                    <hr>
                                    <div><span style="font-size: 0.9em; font-weight: bold;">한글놀이</span> <span style="font-size: 0.8em; color: #777;">한글 카드놀이, 받아쓰기</span></div>
                                    <hr>
                                    <div><span style="font-size: 0.9em; font-weight: bold;">영어놀이</span> <span style="font-size: 0.8em; color: #777;">영어노래 부르기, 영어책 읽어주기</span></div>
                                    <hr>
                                    <div><span style="font-size: 0.9em; font-weight: bold;">학습지도</span> <span style="font-size: 0.8em; color: #777;">면학분위기 조성, 숙제 도와주기</span></div>
                                    <hr>
                                    <div><span style="font-size: 0.9em; font-weight: bold;">체육놀이</span> <span style="font-size: 0.8em; color: #777;">공놀이, 놀이터 나가기</span></div>
                                    <hr>
                                    <div><span style="font-size: 0.9em; font-weight: bold;">간단 청소</span> <span style="font-size: 0.8em; color: #777;">아이 장난감 치우기, 청소기 돌리기</span></div>
                                    <hr>
                                    <div><span style="font-size: 0.9em; font-weight: bold;">밥 챙겨주기</span> <span style="font-size: 0.8em; color: #777;">있는 반찬으로 밥 챙겨주기</span></div>
                                    <hr>
                                    <div><span style="font-size: 0.9em; font-weight: bold;">간단 설거지</span> <span style="font-size: 0.8em; color: #777;">젖병세척, 아이먹은 그릇 씻기</span></div>
                                    <hr>
                                    <div><span style="font-size: 0.9em; font-weight: bold;">장기입주</span> <span style="font-size: 0.8em; color: #777;">함께 살면서 종일 봐주기</span></div>
                                    <hr>
                                    <div><span style="font-size: 0.9em; font-weight: bold;">단기입주</span> <span style="font-size: 0.8em; color: #777;">2-3일 종일 봐주기</span></div>
                                </div>
                            </div>
                            <!-- //modal-content end -->
                        </div>
                        <!-- //modal-dailog end-->
                    </div>
                    <!-- // modal end -->
                    
                </div>
                
                <hr>
                
                <div class="wrap_upd_request">
					<h3>그 외 요청사항</h3>
					<br>
                    <section class="group1_upd_req">
                        <div class="row">
                            <div class="col-xs-12 upd_sitter_gender">
                                <div class="request_box">
                                    <h4>원하는 맘시터 성별</h4>
                                    <div class="choice_gender">
                                        <input type="radio" id="gender_f" name="s_gender" value="F">
                                        <label for="gender_f">여자</label>
                                        <input type="radio" id="gender_m" name="s_gender" value="M">
                                        <label for="gender_m">남자</label>
                                        <input type="radio" id="gender_n" name="s_gender" value="N">
                                        <label for="gender_n">무관</label>
                                    </div>
                                </div>
                                <div class="request_box">
                                    <h4>
                                        인터뷰 방식
                                        <a href="#interview_modal" data-toggle="modal"><i class="fas fa-question-circle"></i></a>
                                    </h4>
                                    <div class="choice_interview">
                                        <input type="radio" id="call" name="type_interview" value="call">
                                        <label for="call">전화 인터뷰</label>
                                        <input type="radio" id="face" name="type_interview" value="face">
                                        <label for="face">대면 인터뷰</label>
                                        <input type="radio" id="text" name="type_interview" value="test">
                                        <label for="text">시범 채용 </label>
                                    </div>
                                </div>
                                <div class="request_box">
                                    <h4>돌보는 방식</h4>
                                    <div class="choice_care">
                                        <div>
                                            <input type="radio" id="type_care1" name="type_care" value="1">
                                            <label for="type_care1">부모 대신 혼자 돌봐주세요.</label>
                                        </div>
                                        <div>
                                            <input type="radio" id="type_care2" name="type_care" value="2">
                                            <label for="type_care2">엄마 아빠와 함께 돌봐주세요.</label>
                                        </div>
                                        <div>
                                            <input type="radio" id="type_care3" name="type_care" value="3">
                                            <label for="type_care3">할머니(할아버지)와 함께 도와주세요.</label>
                                        </div>
                                        <div>
                                            <input type="radio" id="type_care4" name="type_care" value="4">
                                            <label for="type_care4">이모님(도우미)과 함께 도와주세요.</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>

                    <!-- modal -->
                    <div id="interview_modal" class="modal fade" tabindex="-1" role="dialog" 
                    aria-labelledby="modalLabel" aria-hidden="true">
                        <!-- mocal-dialog -->
                        <div class="modal-dialog">
                            <!-- modal-content -->
                            <div class="modal-content">
                                <!--제목-->
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"
                                    style="padding: 10px 0;">
                                        <i class="fas fa-times"></i>
                                    </button>
                                    <h4 class="modal-title" id="modalLabel" 
                                    style="font-size: 1.2em; font-weight: bold; padding: 10px 0;">
                                        인터뷰 방식이란?
                                    </h4>
                                </div>
                                
                                <!-- 내용 -->
                                <div class="modal-body">
                                    <div class="way_interview">
                                        <h4>전화 인터뷰</h4>
                                        <p>시터에게 전화하여 근무조건이 맞는지 말은 잘 통하는지 간단하게 확인</p>
                                    </div>
                                    <div class="way_interview">
                                        <h4>대면 인터뷰</h4>
                                        <p>
                                            맘시터가 부모회원 집으로 방문하여 30분 정도 서로 얼굴을 보며 근무 조건과 성향을 확인
                                            (5천원 ~ 1만원 현장 지급)
                                        </p>
                                    </div>
                                    <div class="way_interview">
                                        <h4>시범 채용</h4>
                                        <p>맘시터가 부모회원 집으로 방문하여 부모가 옆에 있을 때
                                            1~2시간 아이를 직접 돌보며 아이와 잘 맞는지 확인
                                            (희망시급에 따른 활동비 현장지급)</p>
                                    </div>
                                </div>
                            </div>
                            <!-- //modal-content end -->
                        </div>
                        <!-- //modal-dailog end-->
                    </div>
                    <!-- // modal end -->
                    
                </div>
         	 </form>
            </div>
        </div>

		<!-- Javascript -->
		<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
        <script>
            $(function() {
                function upload_img(input) {
                if (input.files && input.files[0]) {
                    var reader = new FileReader();
                    reader.onload = function(e) {
                        var img_html = "<div class=user_img><img src="+e.target.result+'></div>';
                        $(".upload_prof").append(img_html);
                    }
                    reader.readAsDataURL(input.files[0]);
                }
            }

            $("#new_profile_img").change(function() {
                upload_img(this);
                $(".upload_prof").css('justify-content', 'flex-start');
            });

                /** 직접 입력 클릭 시 텍스트 박스 나타남 */
                $("#mom_appl_title").change(function() {
                    var value = $(this).val();
                    if (value==5) {
                        $(".mom_appl_title_text").removeClass("hide");
                    } else {
                        $(".mom_appl_title_text").addClass("hide");
                    }
                });
            });
            
            $(function () {
                //시 클릭했을 때
                $(".loc_btn").on("click", function () {
                    var select = $(this).hasClass("select_location");
                    //선택이 안되어있을때
                    if (select == false) {
                        //선택이 되어있는 요소 탐색
                        var loc = $("#si").find("button").removeClass("select_loaction");
                        //console.log(loc);
                        $(this).addClass("select_loaction");
                        //시 선택하면 gu 보이게
                        $("#gu>div").removeClass("hide_content");
                        $("#gu>div").addClass("show_content");
                    }

                });
                //구 클릭했을 때
                $("#gu button").on("click", function () {
                    var select = $(this).hasClass("select_location");
                    //선택이 안되어있을때
                    if (select == false) {
                        //선택이 되어있는 요소 탐색
                        var loc = $("#gu").find("button").removeClass("select_loaction");
                        //console.log(loc);
                        $(this).addClass("select_loaction");
                        //구 선택하면 동 보이게
                        $("#dong>div").removeClass("hide_content");
                        $("#dong>div").addClass("show_content");
                    }
                });

                //동 클릭했을때
                $("#dong button").on("click", function () {
                    var select = $(this).hasClass("select_location");
                    //선택이 안되어있을때
                    if (select == false) {
                        //선택이 되어있는 요소 탐색
                        var loc = $("#dong").find("button").removeClass("select_loaction");
                        //console.log(loc);
                        $(this).addClass("select_loaction");
                    }
                });
            });
            
            $(function() {
                
                /** 직접 입력 클릭 시 텍스트 박스 나타남 */
                $(".upd_ct_tab_item_link").click(function(e) {
                    e.preventDefault();

                    $(".upd_ct_tab_item_link").not(this).removeClass("selected");
                    $(this).addClass("selected");

                    var target = $(this).attr("href");
                    $(target).removeClass("hide");
                    $(".upd_ct_tab_page").not($(target)).addClass("hide");
                });

                $('#datepicker').flatpickr({
                    dateFormat: "Y/m/d",
                    minDate: "today",
                    maxDate: new Date().fp_incr(30), //지금으로부터 30일 이내
                    defaultDate: new Date().fp_incr(6) //지금으로부터 6일이 기본
                });

                //요일 선택시 
                $(".day_btn").on("click", function () {
                                $(this).toggleClass("select_btn");

				var count = $(".select_btn").length;
				if (count == 0) {
					$("#content").removeClass("show_content");
					$("#content").addClass("hide_content");
				} else {
					$("#content").removeClass("hide_content");
					$("#content").addClass("show_content");
				}
            });
            
            $(".calrendar_block").flatpickr({
                inline: true,
                dateFormat: "Y/m/d",
                minDate: "today",
                maxDate: new Date().fp_incr(30), //지금으로부터 30일 이내
                defaultDate: new Date().fp_incr(6) //지금으로부터 6일이 기본
            });


			//일정 조정 선택
			$(".jojung_box").on("click", function () {
				$(this).toggleClass("box_check");
				$(this).find(".jojung_check").toggleClass("check_check");
			});
            });
            
            function addCommas(x) {
                return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
            }
            $(function () {
                //시급 입력시 콤마 자동으로 찍히기
                $("#payment_input").on("blur", function () {
                    var val = $(this).val();
                    if (val.length != 0) {
                        $(this).val(addCommas($(this).val().replace(/[^0-9]/g, "")));
                    }
    
                    if (/\D/.test(val)) {
                        val = val.replace(/\D/g, '')
                        alert('숫자만 입력가능합니다.');
                        $("#payment_input").val("0");
                    }
                    if (val < 8590) {
                        val = 8590;
                        alert('최저시급 이상 입력해야 합니다.');
                        $("#payment_input").val("8590");
    
                    }
                });
    
    
                //아이명수 클릭시 버튼 색상 바뀜
                $(".childeren_num1, .childeren_num2").on("click", function () {
                    var select = $(this).hasClass("childeren_num1");
    
                    //num1 클릭했을 때
                    if (select) {
                        //버튼 색상 적용
                        $(this).removeClass("btn_children_off");
                        $(this).addClass("btn_children_on");
                        $(this).next().removeClass("btn_children_on");
                        $(this).next().addClass("btn_children_off");
                        ;
    
                    } else {
                        //num2 클릭했을 때
                        $(this).removeClass("btn_children_off");
                        $(this).addClass("btn_children_on");
                        $(this).prev().removeClass("btn_children_on");
                        $(this).prev().addClass("btn_children_off");
                    }
    
                    $(".noselect_title").empty();
                    //버튼 클릭시에 내용 변경
                    /**var test = $(this).attr('data-tab');
                    $.ajax({
                        type: 'GET',                 //get방식으로 통신
                        url: test + ".html",    //탭의 data-tab속성의 값으로 된 html파일로 통신
                        dataType: "html",            //html형식으로 값 읽기
                        error: function () {          //통신 실패시 ㅠㅠ
                            alert('통신실패!');
                        },
                        success: function (data) {    //통신 성공시 탭 내용을 담는 div를 읽어들인 값으로 채우기
                            $('.select_title').html(data);
                        }
                    });*/
    
                });
    
            });
            
            $(function () {
           //활동 버튼 클릭
           $(".care_age").click(function (e) {
               //버튼 클릭시 이미지 URL 변경
               //url 가져오기
               var img_url = $(this).next().find(".want_img").attr('src');
               var indeximg = img_url.indexOf("_n") //잘라서 _n이 있는지 확인
               if (indeximg > -1) {
                   var img_src = img_url.replace(/_n/, "_s");
                   $(this).next().find(".want_img").attr('src', img_src);
               } else {
                   var img_src = img_url.replace(/_s/, "_n");
                   $(this).next().find(".want_img").attr('src', img_src);
               }


           });
       });
            
            $(function () {
                //활동 버튼 클릭
                $(".care_age").click(function (e) {
                    //버튼 클릭시 이미지 URL 변경
                    //url 가져오기
                    var img_url = $(this).next().find(".want_img").attr('src');
                    var indeximg = img_url.indexOf("_n") //잘라서 _n이 있는지 확인
                    if (indeximg > -1) {
                        var img_src = img_url.replace(/_n/, "_s");
                        $(this).next().find(".want_img").attr('src', img_src);
                    } else {
                        var img_src = img_url.replace(/_s/, "_n");
                        $(this).next().find(".want_img").attr('src', img_src);
                    }
                });
                
   
                  
                  /** 직접 입력 클릭 시 텍스트 박스 나타남 */
                  $(".child_num").click(function(e) {
                      e.preventDefault();

                     /** $(".upd_ct_tab_item_link").not(this).removeClass("selected");
                      $(this).addClass("selected"); */

                      var target = $(this).attr("href");
                      $(target).removeClass("hide");
                      $(".select_title").not($(target)).addClass("hide");
                  });
            });
            
        </script>
 
	</body>
</html>