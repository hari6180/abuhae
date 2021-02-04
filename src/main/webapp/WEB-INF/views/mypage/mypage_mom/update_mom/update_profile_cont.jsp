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
    
    </head>

    <body>
        <div id="app">
            <div class="container">
                <div class="wrap_upd_profile_cont">
                    <form action="#">
                         <!-- header -->
                        <header class="mp_detail_tl">
                            <div class="row">
                                <div class="col-xs-12 mp_detail_tl_in">
                                    <a href="${pageContext.request.contextPath}/mypage/mypage_mom/update_appl.do">
                                        <i class="fas fa-times"></i>
                                    </a>
                                    <h3 class="center-block">신청서 내용 수정</h3>
                                    <button type="submit">저장</button>
                                </div>
                            </div>
                        </header>

                        <!-- content1 -->
                        <section class="group_upd_img">
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
                    </form>
                    
                </div>
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
        </script>
 
	</body>
</html>