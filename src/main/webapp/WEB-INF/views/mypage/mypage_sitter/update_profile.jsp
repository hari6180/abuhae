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

<!-- 상세페이지 css 참조 -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/page_detail_for_sitter.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/upd_mps_detail.css">

<style>
    .mp_detail_tl {
        margin: 0;
        padding: 0 20px 20px;
        margin-bottom: 20px;
    }

    /** 프로필 사진 여백 및 바탕 */
    
    .main .profil_photo {
        background-color: #fff;
        margin-bottom: 30px;
    }

    .main .info_text_box {
        padding-top: 30px;
    }

    /** cctv 동의 여부 탭 버튼 */

    .main .agree_cctv_tab {
        display: flex;
        justify-content: center;
    }

    .main .agree_cctv_text p {
        font-size: 0.85em;
    }

    .main .agree_cctv_choice {
        width: 50%;
        height: 126px;
        padding: 12px;
        margin: 3px;
        border: 1px solid #d5d5d5;
        font-size: 0.8em;
    }
    

    .main .agree_cctv_choice.selected {
        background-color: rgb(0, 174, 153);
        color: #fff;
    }

    .main .agree_cctv_check {
        text-align: right;
        margin-top: 37px;
        font-size: 2em;
    }

    .main .precaution_cctv {
        display: flex;
        justify-content: center;
        padding: 15px;
        color: #a7a7a7;
        font-size: 0.7em;
    }

    /** 프로필 수정 버튼 위치 조정 */

    .main .iwant_box {
        position: relative;
    }

    .main .box_name_edit_iwant {
        position: absolute;
        z-index: 100;
        color: #828282;
        font-size: 2.5em;
        right: 1%;
        top: 0;
    }

    .main .active_box {
        position: relative;
    }

    .main .box_name_edit_act {
        position: absolute;
        z-index: 100;
        color: #828282;
        font-size: 2.5em;
        right: 1%;
        top: 0;
    }

    .main .possible_age_box {
        position: relative;
    }

    .main .info_box {
        position: relative;
    }

    .main .box_name_edit_age {
        position: absolute;
        z-index: 100;
        color: #828282;
        font-size: 2.5em;
        right: 1%;
        top: 0;
    }

    .main .box_name_edit {
        position: absolute;
        z-index: 100;
        color: #828282;
        font-size: 2.5em;
        right: 1%;
        top: 0;
    }

    .main .possible_zone_box {
        position: relative;
    }

    .main .box_name_edit_zone {
        position: absolute;
        z-index: 100;
        color: #828282;
        font-size: 2.5em;
        right: 1%;
        top: 0;
    }

</style>
</head>
	
<body>		
    <div class="container">
        <div class="col-xs-12"> <!-- xs-12로 모바일 맞춤 -->
            <div class="main">
                <!-- header -->
                <header class="mp_detail_tl" style="border-bottom: 1px solid #ccc;">
                    <div class="row">
                        <div class="col-xs-12 mp_detail_tl_in">
                            <a href="${pageContext.request.contextPath}/mypage/mypage_sitter/sitter_mypage.do">
                                <i class="fas fa-angle-left"></i>
                            </a>
                            <h3 class="center-block">프로필 수정</h3>
                        </div>
                    </div>
                </header>

                <div class="info_box">
                    <div class="box_name">내 사진</div>
                    <a href="${pageContext.request.contextPath}/mypage/mypage_sitter/update_profile_detail/update_profile_img.do" class="box_name_edit">
                        <i class="fas fa-pen-square"></i>
                    </a>
                    <div class="profil_photo">
                        <div class="profil_img">			  
                            <img src="${pageContext.request.contextPath}/assets/img/chat_mom.png" width="100%" style="padding: 15px"/>
                        </div>
                    </div> 
                </div>
                <div class="iwant_box">
                    <div class="box_name">선호하는 돌봄유형</div>
                    <a href="${pageContext.request.contextPath}/mypage/mypage_sitter/update_profile_detail/choice_care.do" class="box_name_edit_iwant">
                        <i class="fas fa-pen-square"></i>
                    </a>
                    <div class="iwant_area">
                        <div class="iwant_text_box">
                            <div class="iwant_text_title">
                                "저는<span style="color: #ff7000"> 등하원</span> 돌봄을 가장 선호해요"
                            </div>
                            <div class="iwant_text">
                                <div id="iwant_text_desc">- 2~10세 아이를 기관에 가기 전후에 돌볼 수 있어요</div>
                                <div id="iwant_text_desc">- 주 5일 하루 3~5시간 책임지고 돌볼 수 있어요</div>
                                <div id="iwant_text_desc">- 등하원, 밥챙겨주기, 씻기기, 놀아주기 활동을 할 수 있어요</div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="active_box">
                    <div class="box_name">활동 가능 시간</div>
                    <a href="${pageContext.request.contextPath}/mypage/mypage_sitter/update_profile_detail/update_regular.do" class="box_name_edit_act">
                        <i class="fas fa-pen-square"></i>
                    </a>
                    <div class="active_area">
                        <div>
                            <div class="active">
                                <div class="active_main">
                                    <div class="active_main_box" style="display: block;">
                                        <div>
                                            <div class="day_area">
                                                <div class="day_box">
                                                    <div class="day">
                                                        <div class="day_name">수</div>
                                                        <div class="date_name">12/16</div>
                                                    </div>
                                                </div>
                                                <div class="day_box">
                                                    <div class="day">
                                                        <div class="day_name">목</div>
                                                        <div class="date_name">12/17</div>
                                                    </div>
                                                </div>
                                                <div class="day_box">
                                                    <div class="day">
                                                        <div class="day_name">금</div>
                                                        <div class="date_name">12/18</div>
                                                    </div>
                                                </div>
                                                <div class="day_box">
                                                    <div class="day">
                                                        <div class="day_name">토</div>
                                                        <div class="date_name">12/19</div>
                                                    </div>
                                                </div>
                                                <div class="day_box">
                                                    <div class="day">
                                                        <div class="day_name">일</div>
                                                        <div class="date_name">12/20</div>
                                                    </div>
                                                </div>
                                                <div class="day_box">
                                                    <div class="day">
                                                        <div class="day_name">월</div>
                                                        <div class="date_name">12/21</div>
                                                    </div>
                                                </div>
                                                <div class="day_box">
                                                    <div class="day">
                                                        <div class="day_name">화</div>
                                                        <div class="date_name">12/22</div>
                                                    </div>
                                                </div>
                                                <div class="day_box">
                                                    <div class="day">
                                                        <div class="day_name">수</div>
                                                        <div class="date_name">12/23</div>
                                                    </div>
                                                </div>
                                                <div class="day_box">
                                                    <div class="day">
                                                        <div class="day_name">목</div>
                                                        <div class="date_name">12/24</div>
                                                    </div>
                                                </div>
                                                <div class="day_box">
                                                    <div class="day">
                                                        <div class="day_name">금</div>
                                                        <div class="date_name">12/25</div>
                                                    </div>
                                                </div>
                                                <div class="day_box">
                                                    <div class="day">
                                                        <div class="day_name">토</div>
                                                        <div class="date_name">12/26</div>
                                                    </div>
                                                </div>
                                                <div class="day_box">
                                                    <div class="day">
                                                        <div class="day_name">일</div>
                                                        <div class="date_name">12/27</div>
                                                    </div>
                                                </div>
                                                <div class="day_box">
                                                    <div class="day">
                                                        <div class="day_name">월</div>
                                                        <div class="date_name">12/28</div>
                                                    </div>
                                                </div>
                                                <div class="day_box">
                                                    <div class="day">
                                                        <div class="day_name">화</div>
                                                        <div class="date_name">12/29</div>
                                                    </div>
                                                </div>
                                                <div class="day_box">
                                                    <div class="day">
                                                        <div class="day_name">수</div>
                                                        <div class="date_name">12/30</div>
                                                    </div>
                                                </div>
                                                <div class="day_box">
                                                    <div class="day">
                                                        <div class="day_name">목</div>
                                                        <div class="date_name">12/31</div>
                                                    </div>
                                                </div>
                                            </div> <!-- fin. day_area -->
                                        </div>	
                                        <div class="heure_area">
                                            <div class="heure">00:00</div>
                                            <div class="heure">02:00</div>
                                            <div class="heure">04:00</div>
                                            <div class="heure">06:00</div>
                                            <div class="heure">08:00</div>
                                            <div class="heure">10:00</div>
                                            <div class="heure">12:00</div>
                                            <div class="heure">14:00</div>
                                            <div class="heure">16:00</div>
                                            <div class="heure">18:00</div>
                                            <div class="heure">20:00</div>
                                            <div class="heure">22:00</div>
                                            <div class="heure">00:00</div>
                                        </div> <!-- fin. herue_area -->		
                                        <div class="date_area">
                                            <div class="date"></div>
                                            <div class="date"></div>
                                            <div class="date"></div>
                                            <div class="date"></div>
                                            <div class="date"></div>
                                            <div class="date"></div>
                                            <div class="date"></div>
                                            <div class="date"></div>
                                            <div class="date"></div>
                                            <div class="date"></div>
                                            <div class="date"></div>
                                            <div class="date"></div>
                                            <div class="date"></div>
                                            <div class="time_area">
                                                <div class="time_box">
                                                    <div class="time_01">
                                                        <div>08:00</div>
                                                        <div>22:00</div>
                                                        <br>
                                                        <div></div>
                                                    </div>
                                                    <div class="time_02">
                                                        <div>17:30</div>
                                                        <div>23:00</div>
                                                        <br>
                                                        <div></div>
                                                    </div>
                                                    <div class="time_03">
                                                        <div>17:30</div>
                                                        <div>23:00</div>
                                                        <br>
                                                        <div></div>
                                                    </div>
                                                    <div class="time_04">
                                                        <div>09:30</div>
                                                        <div>23:00</div>
                                                        <br>
                                                        <div></div>
                                                    </div>
                                                    <div class="time_05">
                                                        <div>09:30</div>
                                                        <div>23:00</div>
                                                        <br>
                                                        <div></div>
                                                    </div>
                                                    <div class="time_06">
                                                        <div>07:00</div>
                                                        <div>22:00</div>
                                                        <br>
                                                        <div></div>
                                                    </div>
                                                    <div class="time_07">
                                                        <div>07:00</div>
                                                        <div>22:00</div>
                                                        <br>
                                                        <div></div>
                                                    </div>
                                                    <div class="time_08">
                                                        <div>09:30</div>
                                                        <div>23:00</div>
                                                        <br>
                                                        <div></div>
                                                    </div>
                                                    <div class="time_09">
                                                        <div>09:30</div>
                                                        <div>23:00</div>
                                                        <br>
                                                        <div></div>
                                                    </div>
                                                    <div class="time_10">
                                                        <div>09:30</div>
                                                        <div>23:00</div>
                                                        <br>
                                                        <div></div>
                                                    </div>
                                                    <div class="time_11">
                                                        <div>09:30</div>
                                                        <div>23:00</div>
                                                        <br>
                                                        <div></div>
                                                    </div>
                                                    <div class="time_12">
                                                        <div>09:30</div>
                                                        <div>23:00</div>
                                                        <br>
                                                        <div></div>
                                                    </div>
                                                    <div class="time_13">
                                                        <div>09:30</div>
                                                        <div>23:00</div>
                                                        <br>
                                                        <div></div>
                                                    </div>
                                                    <div class="time_14">
                                                        <div>09:30</div>
                                                        <div>23:00</div>
                                                        <br>
                                                        <div></div>
                                                    </div>
                                                    <div class="time_15">
                                                        <div>09:30</div>
                                                        <div>23:00</div>
                                                        <br>
                                                        <div></div>
                                                    </div>
                                                    <div class="time_16">
                                                        <div>09:30</div>
                                                        <div>23:00</div>
                                                        <br>
                                                        <div></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>						
                                    </div> <!-- fin. active_main_box -->
                                </div> <!-- fin. active_main -->
                            </div> <!-- fin. active -->
                        </div>
                    </div> <!-- fin. active_area -->
                </div> <!-- fin. active_box -->
                <div class="possible_age_box">
                    <div class="box_name">돌봄 가능 연령</div>
                    <a href="${pageContext.request.contextPath}/mypage/mypage_sitter/update_profile_detail/update_care_age.do" class="box_name_edit_age">
                        <i class="fas fa-pen-square"></i>
                    </a>
                    <div class="possible_age_area">
                        <div>
                            <div class="age_line">
                                <div class="ages col-xs-3">
                                    <div style="margin-bottom: -10px">
                                    <i class="fas fa-baby fa-3x"></i>
                                    </div>
                                    <br>
                                    <span>신생아</span>
                                </div>
                                <div class="ages col-xs-3">
                                    <div style="margin-bottom: -10px">
                                    <i class="fas fa-baby-carriage fa-3x"></i>
                                    </div>
                                    <br>
                                    <span>영아</span>
                                </div>
                                <div class="ages col-xs-3">
                                    <div style="margin-bottom: -10px">
                                    <i class="fas fa-child fa-3x"></i>
                                    </div>
                                    <br>
                                    <span>유아</span>
                                </div>
                                <div class="ages col-xs-3">
                                    <div style="margin-bottom: -10px">
                                    <i class="fas fa-school fa-3x"></i>
                                    </div>
                                    <br>
                                    <span>초등학생</span>
                                </div>
                            </div> <!-- fin. age_line -->
                        </div>
                    </div> <!-- fin. possible_age_area -->
                </div> <!-- fin. possible_age_box -->
                <div class="possible_age_box">
                    <div class="box_name">가능한 활동</div>
                    <a href="${pageContext.request.contextPath}/mypage/mypage_sitter/update_profile_detail/update_activity.do" class="box_name_edit_age">
                        <i class="fas fa-pen-square"></i>
                    </a>
                    <div class="possible_age_area">
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
                                        <div class="active_no_box">
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
                    </div> <!-- fin. possible_active_area -->
                </div> <!-- fin. possible_active_box -->
                <div class="iwant_box">
                    <div class="box_name">희망시급</div>
                    <a href="${pageContext.request.contextPath}/mypage/mypage_sitter/update_profile_detail/update_wage.do" class="box_name_edit_iwant">
                        <i class="fas fa-pen-square"></i>
                    </a>
                    <div class="iwant_area">
                        <div class="iwant_text_box">
                            <div class="edit_wage" style="display: flex; justify-content: center;">
                                <div class="sign_edit_wage" style="margin-top: 6px; margin-right: 5px; font-weight: bold;">
                                    ￦
                                </div>
                                <div style="color: #000; font-size: 1.9em; font-weight: bold;">9,000</div>
                            </div>
                            <div class="edit_wage_text" style="color: #ff7000;">
                                원하는 시급을 자유롭게 입력해주세요^^
                            </div>
                        </div>
                    </div>
                </div>
                <div class="iwant_box">
                    <div class="box_name">관련 경험</div>
                    <a href="${pageContext.request.contextPath}/mypage/mypage_sitter/update_profile_detail/update_experience.do" class="box_name_edit_iwant">
                        <i class="fas fa-pen-square"></i>
                    </a>
                    <div class="iwant_area">
                        <div class="iwant_text_box">
                            <div class="edit_experience">
                                <span>작성 시 부모로부터</span> <br/>
                                <span style="color: #ff7000;">3배 더 많은 선택을 받게 됩니다!</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="iwant_box">
                    <div class="box_name">간단 자기소개</div>
                    <a href="${pageContext.request.contextPath}/mypage/mypage_sitter/update_profile_detail/update_introduce.do" class="box_name_edit_iwant">
                        <i class="fas fa-pen-square"></i>
                    </a>
                    <div class="iwant_area">
                        <div class="iwant_text_box">
                            <div class="edit_experience">
                                <span>작성 시 부모로부터</span> <br/>
                                <span style="color: #ff7000;">4배 더 많은 선택을 받게 됩니다!</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="possible_zone_box">
                    <div class="box_name">활동 가능 지역</div>
                    <a href="${pageContext.request.contextPath}/mypage/mypage_sitter/update_profile_detail/update_location.do" class="box_name_edit_zone">
                        <i class="fas fa-pen-square"></i>
                    </a>
                    <div class="possible_zone_area">
                        <div>
                            <div class="zone_line">
                                <div class="zone_link">
                                    <div><i class="fas fa-star"></i> 1 순위</div>
                                </div>
                                <div>인천광역시 남동구</div>
                            </div>
                            <hr>
                        </div>
                        <div>
                            <div class="zone_line">
                                <div class="zone_link_2n3">
                                    <div><i class="fas fa-map-marker-alt"></i>  2 순위</div>
                                </div>
                                <div>인천광역시 연수구</div>
                            </div>
                            <hr>
                        </div>
                        <div>
                            <div class="zone_line">
                                <div class="zone_link_2n3">
                                    <div><i class="fas fa-map-marker-alt"></i>  3 순위</div>
                                </div>
                                <div>인천광역시 남구</div>
                            </div>
                        </div> <!-- fin. possible_active_main-->
                    </div> <!-- fin. possible_zone_area -->
                </div> <!-- fin. possible_zone_box -->
                <div class="info_box">
                    <div class="box_name">CCTV 동의여부</div>
                    <div class="info_area">
                        <div class="info_text_box">
                            <div class="agree_cctv_text">
                                <p>
                                    동의 여부는 선택할 수 있으나, <br/>
                                    동의한 경우 부모에게 더 많은 선택을 받게 됩니다.
                                </p>
                            </div>
                            <div class="agree_cctv_tab">
                                <div class="agree_cctv_choice selected">
                                    <p>CCTV 촬영을 <br/> 원하지 않습니다.</p>
                                    <div class="agree_cctv_check">
                                        <i class="fas fa-check-circle"></i>
                                    </div>
                                </div>
                                <div class="agree_cctv_choice">
                                    <p>CCTV가 있어도 <br/> 당당히 일할 수 있습니다.</p>
                                    <div class="agree_cctv_check hide">
                                        <i class="fas fa-check-circle"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="precaution_cctv">
                                <p>단, 녹화된 영상을 유출 배포하지 않는 전제</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
				
		<!-- Javascript -->
		<script src="<%=request.getContextPath()%>/assets/js/jquery.min.js"></script>
		 <!-- jquery 파일명 수정 -->
        <script src="<%=request.getContextPath()%>/assets/js/bootstrap.min.js"></script> 
        
        <script type="text/javascript">
            $(function() {
                /** cctv 동의 여부 탭버튼 처리 */
                $(".agree_cctv_choice").click(function(e) {
                    // background-color toggle
                    $(".agree_cctv_choice").not(this).removeClass("selected");
                    $(".agree_cctv_choice").not(this).find("div").addClass("hide");
                    // icon toggle
                    $(this).addClass("selected");
                    $(this).find("div").removeClass("hide");
                });
            });
        </script>
	</body>
</html>