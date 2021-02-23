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
		<link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/ico/favicon.ico" />
		<link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath}/assets/ico/favicon.ico" />

		<!-- bootstrap -->
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" />

		<!-- noto Sans 웹 폰트 적용 -->
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/notosans.css" />
        
        <!-- icon 참조 -->
        <script src="https://kit.fontawesome.com/12ac058ac7.js" crossorigin="anonymous"></script>
   
        <!-- css 참조 -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/upd_sitter_profile.css">
        
         <!--flatpickr-->
	    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">

        <style type="text/css">

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
        
        .edit_btn {
            width: 70%;
            border: none;
            color: #fff;
            background-color: #ff7000;
            border-radius: 5px;
            line-height: 30px;
            margin: 15px auto;
            display: block;
        }
        
        p {
            margin: 0 0 20px !important;
        }
        .main_title {
            font-weight: bold;
        }

        .sub_text {
            color: #ff5400;
            text-decoration: underline;
        }

        .title_box {
            margin: 20px;
        }
        
        .upd_img_tl {
        	font-size: 1.2em;
        	font-weight: bold;
        	margin-bottom: 40px;
        }
        
		</style>

    </head>

    <body>
        <div id="app">
            <div class="container">
                <div class="wrap_upd">
               	<!-- header -->
               	 	<header class="mp_detail_tl">
                           <div class="row">
                               <div class="col-xs-12 mp_detail_tl_in">
                                   <a href="${pageContext.request.contextPath}/mypage/mypage_sitter/sitter_mypage.do?sitterno=${login.sitterno}">
                                       <i class="fas fa-times"></i>
                                   </a>
                                   <h3 class="center-block">내 프로필 수정</h3>
                               </div>
                           </div>
                       </header>
                       <div class="title_box">
					        <h3 class="main_title">프로필 수정</h3>
					        <br>
					        <p class="sub_text"><i class="fas fa-check"></i> 원하는 항목만 수정할 수 있습니다.</p>
					    </div>
                        
                    <div class="wrap_img">
                    	<!-- content1 -->
	                    <form action="#">
	                    	<div>
	                    		<h5 class="upd_img_tl">1. 내 사진 (선택사항)</h5>
	                    	</div>
	                        <section class="introduce_text">
	                            <div class="row">
	                                <div class="col-xs-12 update_img_cont">
	                                    <div class="upload_prof">
	                                        <div class="user_img">
	                                            <input type="file" id="new_profile_img" name="new_profile_img" accept="image/*" >
	                                            <label for="new_profile_img"><img src="${pageContext.request.contextPath}/assets/img/mypage_img/user.png" alt=""></label>
	                                        </div>
	                                    </div>
	                                    <div class="guide_user_img">
	                                        <p>
	                                            "내 사진을 올리면 부모회원의 선택을 <br/>
	                                            <span style="color: #ff7000; text-decoration: underline;">5배 더 많이</span> 받을 수 있습니다."
	                                        </p>
	                                    </div>
	                                    <div class="example_img">
	                                        <a data-toggle="modal" href="#way_upd_img">
	                                            <button type="button">
	                                                <i class="fas fa-lightbulb" style="color: #ffd446; font-size: 1.2em;"></i> 부모님이 좋아하는 사진 올리는 방법!
	                                            </button>
	                                        </a>
	                                    </div>
	                                </div>
	                            </div>
	
	                            <!-- modal (사진 올리는 방법 )-->
	                            <div id="way_upd_img" class="modal fade" tabindex="-1" role="dialog"
	                            aria-labelledby="modal_label" aria-hidden="true">
	                            <!-- modal dialog -->
		                            <div class="modal-dialog">
		                                <!-- modal content -->
		                                <div class="modal-content">
		                                    <!-- 제목 -->
		                                    <div class="modal-header">
		                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true" style="padding: 10px 0;">
		                                            <i class="fas fa-times"></i>
		                                        </button>
		                                        <h4 class="modal-title" id="modalLabel" style="font-size: 1.2em; font-weight: bold; padding: 10px 0;">
		                                            부모님이 좋아하는 사진 올리는 방법!
		                                        </h4>
		                                    </div>
		                                    <div class="modal-body" style="color: #838383;">
		                                        <div class="way_upd_img_cont">
		                                            <div>
		                                                <img src="../../img/example_proflie_img.png" class="col-xs-6" alt="" width="150px" height="150px">
		                                                <p class="col-xs-6">
		                                                    <span style="color:rgb(34, 172, 135); font-size:5em">o</span>
		                                                    <br> 본인 얼굴 정면이 <br> 나온 모습
		                                                </p>
		                                            </div>
		                                            <div>
		                                                <img src="../../img/example_profile2.png" class="col-xs-6" alt="" width="150px" height="150px">
		                                                <p class="col-xs-6">
		                                                    <span style="color:rgb(231, 73, 73); font-size:5em">x</span>
		                                                    <br> 이모티콘이 <br> 포함된 사진
		                                                </p>
		                                            </div>  
		                                            <div>
		                                                <img src="../../img/example_profile6.jpg" class="col-xs-6" alt="" width="150px" height="150px">
		                                                <p class="col-xs-6">
		                                                    <span style="color:rgb(231, 73, 73); font-size:5em">x</span>
		                                                    <br> 얼굴이 <br> 가려진 경우
		                                                </p>
		                                            </div> 
		                                            <div>
		                                                <img src="../../img/example_profile_3.png" class="col-xs-6" alt="" width="150px" height="150px">
		                                                <p class="col-xs-6">
		                                                    <span style="color:rgb(231, 73, 73); font-size:5em">x</span>
		                                                    <br> 여러명이 <br> 함께 찍은 경우
		                                                </p>
		                                            </div>   
		                                            <div>
		                                                <img src="../../img/example_profile4.png" class="col-xs-6" alt="" width="150px" height="150px">
		                                                <p class="col-xs-6">
		                                                    <span style="color:rgb(231, 73, 73); font-size:5em">x</span>
		                                                    <br> 먼 거리에서 <br> 찍은 경우
		                                                </p>
		                                            </div> 
		                                            <div>
		                                                <img src="../../img/example_profile5.jpg" class="col-xs-6" alt="" width="150px" height="150px">
		                                                <p class="col-xs-6">
		                                                    <span style="color:rgb(231, 73, 73); font-size:5em">x</span>
		                                                    <br> 인물 식별이 <br> 어려운 경우
		                                                </p>
		                                            </div>    
		                                        </div>
		                                        <div class="way_upd_img_text">
		                                            <p>이 외 본인이 아닌 경우, 본인 식별이 어려운 사진을 올리면 부모님의 선택을 받지 못할 수도 있습니다.</p>
		                                        </div>
		                                    </div>
		                                </div>
		                                <!-- end modal content -->
		                            </div>
		                            <!-- end modal dialog -->
		                        </div>
		                        <!-- end modal -->
	                        </section>
	                        
	                        <button type="submit" class="edit_btn"> 수정하기 </button>
	                    </form>
                   	</div>
	                   
                   	<hr>
                    
                    <!-- content2 -->
                    <div class="wrap_choice_care">
                    	<form id="choice_care_form" action="#">
                    		<div>
                    			<h5 class="upd_img_tl" style="margin-bottom: 30px">2. 돌봄유형 선택</h5>
                                <p style="color: #858585;"><i class="fas fa-check-circle"></i> 선호하는 유형을 선택해주세요.</p>
                    		</div>
	                        <section class="choice_care_cont">
	                            <div class="row">
	                                <div class="col-xs-12 care_form_in">
	
	                                    <div class="care_box">
	                                        <div class="care_list">
	                                            <input type="radio" class="kind_care" id="kind_care1" name="kind_care" value="1">
	                                            <label for="kind_care1"> 신생아/영아 풀타임 돌봄</label>
	                                        </div>
	                                        <p id="kind_care_cont1" class="guide_care hide" >
	                                            - 0~24개월 아이를 먹이고, 재우고, 놀아주는 활동 <br/>
	                                            - 보통 주5일 하루 8~10시간 책임지고 돌봄 필요 <br/>
	                                            - 아이 관련 가사활동 필수 <br/>
	                                        </p>
	                                    </div>
	
	                                    <div class="care_box">
	                                        <div class="care_list">
	                                            <input type="radio" class="kind_care" id="kind_care2" name="kind_care" value="2">
	                                            <label for="kind_care2"> 등하원 돌봄</label>
	                                        </div>
	                                        <p id="kind_care_cont2" class="guide_care hide" >
	                                            - 2~10세 아이를 기관에 가기 전후에는 돌보는 활동 <br/> 
	                                            - 보통 주5일 하루 3~5시간 책임지고 돌봄 필요 <br/>
	                                            - 등하원, 밥 챙겨주기, 씻기기, 놀아주기 활동 포함 <br/>
	                                        </p>
	                                    </div>
	
	                                    <div class="care_box">
	                                        <div class="care_list">
	                                            <input type="radio" class="kind_care" id="kind_care3" name="kind_care" value="3">
	                                            <label for="kind_care3"> 신생아/영아 보조 돌봄</label>
	                                        </div>
	                                        <p id="kind_care_cont3" class="guide_care hide" >
	                                            - 0~24개월 아이를 보호자와 함께 또는 혼자 돌봄 <br/>
	                                            - 최근 0~12개월 돌본 경험 1주일 이상 필수 <br/>
	                                            - 주 1~4회 정기적으로 또는 단기로 2~4시간 활동 <br/>
	                                        </p>
	                                    </div>
	
	                                    <div class="care_box">
	                                        <div class="care_list">
	                                            <input type="radio" class="kind_care" id="kind_care4" name="kind_care" value="4">
	                                            <label for="kind_care4"> 놀이/학습 돌봄</label>
	                                        </div>
	                                        <p id="kind_care_cont4" class="guide_care hide" >
	                                            - 2~10세 아이와 특기를 활용해서 즐겁고 학습적인 시간을 보내는 활동 <br/>
	                                            - 주 1~4회 정기적으로 또는 단기로 2~4시간 활동 <br/>
	                                        </p>
	                                    </div>
	
	                                    <div class="care_box">
	                                         <div class="care_list">
	                                            <input type="radio" class="kind_care" id="kind_care5" name="kind_care" value="5">
	                                            <label for="kind_care5"> 긴급/단기 돌봄</label>
	                                        </div>
	                                        <p id="kind_care_cont5" class="guide_care hide" >
	                                            - 정기 방문이 아닌 1~2회 또는 짧은 기간 동안만 돌봄 활동 <br/>
	                                            - 프로필에 돌봄 가능한 아이 연령과 활동 명시 필요 <br/>
	                                        </p>
	                                    </div>  
	                                </div>
	                            </div>
	                        </section>
	                       <button type="submit" class="edit_btn">수정하기</button>
	                    </form>
                    </div>
                    
                    <hr>
                    
                    <!-- content3 -->
                    <div class="wrap_age">
                    	<form action="#">
	                        <div>
	                        	<h5 class="upd_img_tl">3. 돌봄 가능 연령 수정</h5>
	                        </div>
	
	                        <!-- content -->
	                        <section class="upd_care_age_cont">
	                            <div class="row">
	                                <div class="col-xs-12 care_age_cont_in">
	                                    <p style="font-size: 1.1em;">
	                                        돌봄 가능 연령 
	                                        <a href="#age_modal" data-toggle="modal"><span style="color: #858585;"><i class="fas fa-question-circle"></i></span></a> 
	                                    </p>
	                                    <br/>
	                                    <p>현재 신생아/영아 풀타임 돌봄유형이므로 신생아/영아 중 1개 아이 연령은 필수로 선택되어야 합니다.</p>
	                                </div>
	                            </div>
	                        </section>
	
	                        <section class="upd_care_age">
	                            <div class="row">
	                                <div class="col-xs-12 upd_care_age_in">
	                                    <div class="care_age_btn">
	                                        <input type="checkbox" id="care_age1" name="want_care_age" value="babyage1">
	                                        <label for="care_age1"><i class="fas fa-baby fa-3x act_btn"></i></label>
	                                        <div class="care_age_text">신생아</div>
	                                    </div>
	        
	                                    <div class="care_age_btn">
	                                        <input type="checkbox" id="care_age2" name="want_care_age" value="babyage2">
	                                        <label for="care_age2"><i class="fas fa-baby-carriage fa-3x"></i></label>
	                                        <div class="care_age_text">영아</div>
	                                    </div>
	        
	                                    <div class="care_age_btn">
	                                        <input type="checkbox" id="care_age3" name="want_care_age" value="babyage3">
	                                        <label for="care_age3"><i class="fas fa-child fa-3x"></i></label>
	                                        <div class="care_age_text">유아</div>
	                                    </div>
	        
	                                    <div class="care_age_btn">
	                                        <input type="checkbox" id="care_age4" name="want_care_age" value="babyage2">
	                                        <label for="care_age4"><i class="fas fa-school fa-3x"></i></label>
	                                        <div class="care_age_text">초등학생</div>
	                                    </div>
	                                </div>
	                            </div>
	                        </section>
	                        <button type="submit" class="edit_btn">수정하기</button>
	                    </form>
                    </div>
                    
                    <hr/>
                    
                    <!-- content4 -->
                    
                    <div class="wrap_update_activity">
                    	<form action="#">
	                         <div>
	                         	<h5 class="upd_img_tl">4. 원하는 활동 수정</h5>
	                         </div>
	
	                        <!-- content -->
	                        <section class="upd_care_age_cont">
	                            <div class="row">
	                                <div class="col-xs-12 care_age_cont_in">
	                                    <p style="font-size: 1.1em;">가능한 활동이란
	                                    	<a href="#activ_modal" data-toggle="modal"><i class="fas fa-question-circle" style="margin-left: 10px; color: #919191;"></i></a></p>
	                                    <br/>
	                                    <p>현재 신생아/영아 풀타임 돌봄유형이므로 실내놀이, 아이와 관련된 가사활동은 필수로 선택되어야 합니다.</p>
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
	                        <button type="submit" class="edit_btn">수정하기</button>
	                    </form>
                    </div>
                    
                    <hr>
                    
                    <!-- content5 -->
                    <div class="wrap_upd_regular">
                    	<form action="#">
	                         <div>
	                         	<h5 class="upd_img_tl">5. 활동 가능 시간 변경</h5>
	                         </div>

	                         <!-- sub_content1 -->
	                        <section class="start_job">
	                            <div class="row">
	                                <div class="col-xs-12">
	                                    <h4 class="regular_tl">활동 시작일</h4>
	                                    <input type="text" name="start_date" id="datepicker" class="startdate center-block">
	                                </div>
	                            </div>
	                        </section>
	
	                        <hr/>
	
	                        <!-- sub_content2 -->
	                        <section class="available_days">
	                            <div class="row">
	                                <div class="col-xs-12">
	                                    <div class="choose_day_title">
	                                        <h4 class="regular_tl">활동 요일</h4>
	                                    </div>
	                                    <div class="available_days_in">
	                                        <input type="checkbox" name="workdays" id="workday1" class="workdays" value="mon">
	                                        <label for="workday1">월</label>
	                        
	                                        <input type="checkbox" name="workdays" id="workday2" class="workdays" value="tue">
	                                        <label for="workday2">화</label>
	                                
	                                        <input type="checkbox" name="workdays" id="workday3" class="workdays" value="wed">
	                                        <label for="workday3">수</label>
	                        
	                                        <input type="checkbox" name="workdays" id="workday4" class="workdays" value="thur">
	                                        <label for="workday4">목</label>
	                                
	                                        <input type="checkbox" name="workdays" id="workday5" class="workdays" value="fri">
	                                        <label for="workday5">금</label>
	                                
	                                        <input type="checkbox" name="workdays" id="workday6" class="workdays" value="sat">
	                                        <label for="workday6">토</label>
	                                
	                                        <input type="checkbox" name="workdays" id="workday7" class="workdays" value="sun">
	                                        <label for="workday7">일</label>
	                                    </div>
	                                </div>
	                            </div>
	                        </section>
	
	                        <hr/>
	
	                        <!-- sub_content3 -->
	                        <section class="work_term">
	                            <div class="row">
	                                <div class="col-xs-12">
	                                    <h4 class="regular_tl">이 일정으로 얼마동안 일할 수 있나요?</h4>
	                                </div>
	                            </div>
	                            <div class="term_list">
	                                <input type="radio" name="workterm" class="workterm" id="workterm1" value="1week">
	                                <label for="workterm1">1주일 이상</label>
	
	                                <input type="radio" name="workterm" class="workterm" id="workterm2" value="1month">
	                                <label for="workterm2">1개월 이상</label>
	                                
	                                <input type="radio" name="workterm" class="workterm" id="workterm3" value="3month">
	                                <label for="workterm3">3개월 이상</label>
	
	                                <input type="radio" name="workterm" class="workterm" id="workterm4" value="6month">
	                                <label for="workterm4">6개월 이상</label>
	                            </div>
	
	                            <div id="result"></div>
	                        </section>       
	                        <button type="submit" class="edit_btn">수정하기</button>                 
	                    </form>
                    </div>
                    
                    <hr>
                    
                    <!-- content6 -->
                    <div class="wrap_want_wage">
                    	<form action="#">
	                        <div>
	                        	<h5 class="upd_img_tl">6. 희망 시급</h5>
	                        </div>
	                        
	                        <!-- sub_scontent -->
	                        <section class="upd_want_wage">
	                            <div class="row">
	                                <div class="col-xs-12 want_wage_in">
	                                    <div class="wage_box one">
	                                        <i class="fas fa-hand-holding-usd"></i>
	                                    </div>
	                                    <div class="wage_box">
	                                        <input type="text" name="want_wage" id="want_wage_text" placeholder="0">
	                                        <span>원/1시간</span>
	                                    </div>
	                                    <div class="wage_box">
	                                        <input type="checkbox" id="avg_wage"> 
	                                        <label for="avg_wage"> <div class="check_avg"></div> 평균시급 적용</label>
	                                    </div>
	                                </div>
	                            </div>
	                        </section>
	                        <section class="guide_wage">
	                            <ul>
	                                <li>아이 1명을 돌보는 경우, <br/> = 최저시급 8,590원 이상 필수</li>
	                                <li>아이 2명을 돌보는 경우, <br/> = 최저시급 8,590원x1.5배 = 12,855원 이상 필수</li>
	                            </ul>
	                        </section>
	                        <button type="submit" class="edit_btn">수정하기</button>
	                    </form>
                    </div>
                    
                    <hr>
                    
                    <!-- content7 -->
                    <div class="wrap_experience">
                    	<form action="#">
	                      <div>
	                      		<h5 class="upd_img_tl">7. 자기소개 수정</h5>
	                      </div>
	
	                        <!-- content -->
	                        <section class="introduce_text">
	                            <div class="row">
	                                <div class="col-xs-12">
	                                    <textarea name="introduce" id="introduce" cols="30" rows="10"
	                                    placeholder="자기소개 작성 시 부모님에게 2배 더 많은 신청을 받게 됩니다."></textarea>
	                                    <div class="intro_ban">
	                                        <div><i class="fas fa-ban"></i></div>
	                                        <p>자기소개 내용에 연락처, 이메일 카카오ID 등을 작성할 경우 회원 자격을 영구적으로 잃게 됩니다.</p>
	                                    </div>
	                                    <a href="#introduce_modal" data-toggle="modal"><span>다른 맘시터 자기소개 내용 확인하기</span></a>
	                                </div>
	                            </div>
	
	                        </section>
	                        <button type="submit" class="edit_btn">수정하기</button>
	                    </form>
	
	                    <!-- modal -->
	                    <div id="introduce_modal" class="modal fade" tabindex="-1" role="dialog" 
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
	                                       다른 맘시터 자기소개
	                                    </h4>
	                                </div>
	                                
	                                <!-- 내용 -->
	                                <div class="modal-body" style="background-color: #eee;">
	                                    <div style="text-align: center;">
	                                        <p style="color: #838383;">아래 내용을 참고하여 작성해보세요 :)</p>
	                                    </div>
	                                    <div style="background-color: #ffffff; padding: 10px 10px; margin-bottom: 20px;">
	                                        <p>
	                                            <span style="font-size: 1em; font-weight: bold; color: #777;">선생님 맘시터</span> ㅣ <span style="font-size: 0.8em;">송○예 ㅣ 27세</span>
	                                        </p>
	                                        <p>
	                                            저는 밝고 활발하며 적극적인 성격을 지니고 있습니다. <mark> ○○대학교 유아교육학과</mark>
	                                            서 아동사회학 드으이 여러 과목들을 배웠습니다. 평소 약속을 중요하게 생각하는 
	                                            성격이라 <mark>한번 정한 약속은 꼭 지킬 수 있도록 노력하겠습니다.</mark>
	                                        </p>
	                                    </div>
	                                    <div style="background-color: #ffffff; padding: 10px 10px;">
	                                        <p>
	                                            <span style="font-size: 1em; font-weight: bold; color: #777;">엄마 맘시터</span> ㅣ <span style="font-size: 0.8em;">남○재ㅣ 50세</span>
	                                        </p>
	                                        <p>
	                                            현재 <mark>두 아들을 잘 키워내고</mark> 대학까지 무사히 보냈습니다. 
	                                            아이들을 워낙 좋아하고 잘 돌볼 수 있는 자신이 있어서 맘시터로 활동하고 있습니다. 내 아들같이
	                                            사랑으로 돌보겠습니다.^^
	                                        </p>
	                                    </div>
	                                </div>
	                            </div>
	                            <!-- //modal-content end -->
	                        </div>
	                        <!-- //modal-dailog end-->
	                    </div>
	                    <!-- // modal end -->
                    </div>
                    
                    <hr>
                    
                    <!-- content8 -->
                    <div class="wrap_upd_loc">
                    	 <form action="#">
	                       <div >
	                       		<h5 class="upd_img_tl">8. 장소 수정</h5>
	                       </div>
	
	                        <!-- sub_content1 (dropdown) -->
	                        <section class="group1_upd_loc">
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
	                        
	                        <button type="submit" class="edit_btn">수정하기</button>
	                    </form>
                    </div>
                    
                </div>
            </div>
        </div>

		<!-- Javascript -->
		<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
        <script>
	        /** for content4 */
	        $(function() {
	            $('.startdate').flatpickr({
	            dateFormat: "Y.m.d",
	            minDate: "today",
	            maxDate: new Date().fp_incr(30),
	            defaultDate: new Date()
	            });
	        });
        
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
            
            /** for content2 */
             $(function() {
                /** 라디오 버튼 클릭시 아코디언 형식으로 내용이 나타는 기능 */
                $(".kind_care").click(function(e) {
                    var value = $(".kind_care:checked").val();
                    
                    if(value == 1) {
                        $("#kind_care_cont1").removeClass("hide");
                    } else {
                        $("#kind_care_cont1").addClass("hide");
                    }

                    if(value == 2) {
                        $("#kind_care_cont2").removeClass("hide");
                    } else {
                        $("#kind_care_cont2").addClass("hide");
                    }

                    if(value == 3) {
                        $("#kind_care_cont3").removeClass("hide");
                    } else {
                        $("#kind_care_cont3").addClass("hide");
                    }

                    if(value == 4) {
                        $("#kind_care_cont4").removeClass("hide");
                    } else {
                        $("#kind_care_cont4").addClass("hide");
                    }

                    if(value == 5) {
                        $("#kind_care_cont5").removeClass("hide");
                    } else {
                        $("#kind_care_cont5").addClass("hide");
                    }
                }); 
             });
            
            /** for content5 */
            function addCommas(x) {
            return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
            }
            $(function () {
                //시급 입력시 콤마 자동으로 찍히기
                $("#want_wage_text").on("blur", function () {
                    var val = $(this).val();
                    if (val.length != 0) {
                        $(this).val(addCommas($(this).val().replace(/[^0-9]/g, "")));
                    }

                    if (/\D/.test(val)) {
                        val = val.replace(/\D/g, '')
                        alert('숫자만 입력가능합니다.');
                        $("#want_wage_text").val("0");
                    }
                    if (val < 8590) {
                        alert('최저시급 이상 입력해야 합니다.');
                        $("#want_wage_text").val("8590");
                    }
                    if (val > 50000) {
                        alert('시급은 최대 50000원까지 입력할 수 있습니다.');
                        $("#want_wage_text").val("8590");
                    }
                });

                //평균시급 적용 체크박스 체크 해제시 최저임금으로 설정
                $("#avg_wage").change(function(){
                    var chk = $(this).is(":checked"); //.attr('checked'); 
                    if(chk == true) {
                        $("#want_wage_text").val("8,600");
                    } else {
                        $("#want_wage_text").val("8,590");
                    }
                    
                });
            });
            
            /** for conetent8 */
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

        </script>
	</body>
</html>