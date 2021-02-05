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

        <style type="text/css">
        /* 초기 설정 -----------------------------------------------------*/
        .body, html, * {
            margin: 0;
            padding: 0;

            font-size: 1em;
            font-weight: bold;
        }

        h1, h2, h3, h4, h5, h6 {
            padding: 0;
            margin: 0;
        }

        a {
            color: black;
        }

        a:hover {
            text-decoration: none;
            color: black;
        }

        /** header --------------------------------------------------------------------*/

        .certi_resident_tl {
            padding: 20px 20px;
            max-width: 600px;
            background-color: #eee;
        }
        
        .certi_resident_tl .certi_resident_tl_in {
            display: flex;
            justify-content: space-between;
            flex-direction: row;
            align-items: center;
        }

        .certi_resident_tl .certi_resident_tl_in a i {
            text-decoration: none;
            font-size: 1.5em;
            margin-bottom: 35px;
        }

        .certi_resident_tl .certi_resident_tl_in h3 {
            font-weight: bold;
            color: #838383;
            margin-bottom: 10px;
        }

        .certi_resident_tl .certi_resident_tl_in p {
            color: #838383;
        }


        /** for 내 인증관리 페이지 (certify.html) --------------------------------------*/

        /** 공통 for 내 인증관리 */
        .wrap_certi_resident {
            margin: 0 auto;
            max-width: 600px;
            background-color: #eee;
        }

        .certi_resi_one {
            padding: 20px;
        }

        .resi_one_con {
            margin-bottom: 20px;
        }

        .resi_one_con:last-child {
            margin-bottom: 0;
        }

        .certi_resi_one {
            margin: 0 10px 20px 10px;
            background-color: #fff;
        }

        .certi_resi_one ul {
            margin-left: 20px;
        }

        .resi_one_con.order_resi {
            background-color: #6c6c6c;
            border-radius: 15px;
            width: 15%;
            height: 21px;
            color: #fff;
            text-align: center;
        }

        .resi_one_con.add_resi {
            color: rgb(14, 151, 115);
        }

        .resi_button1 input[type="file"] {
            display: none;
        }

        .resi_button1 input[type="file"]+label {
            width: 100%;
            height: 52px;
            padding-top: 12px;
            text-align: center;
            border: 1px solid #bebebe;
            border-radius: 5px;
            background-image: linear-gradient(180deg,#fff 2%,#ededed);
            font-size: 1.2em;
        }

        .resi_button2 {
            width: 100%;
            height: 50px;
            padding: 5px;
            border: 2px solid rgb(190, 190, 190);
        }

        .resi_date_slec {
            display: flex;
            justify-content: center;
        }
        .selc_con {
            width: 27%;
            height: 30px;
            margin-right: 20px;
            border: 0;
            border-bottom: 2px solid rgb(190, 190, 190);
            margin-bottom: 30px;
        }

        .resi_button3 {
            width: 100%;
            height: 80px;
            background-color: rgb(14, 151, 115);
            border: 0;
            font-size: 1.5em;
            color: #fff;
        }

       
		</style>
    </head>

    <body>
        <div id="app">
            <div class="container">
                <div class="wrap_certi_resident">
                    <!-- header -->
                    <header class="certi_resident_tl">
                        <div class="row">
                            <div class="col-xs-12 certi_resident_tl_in">
                                <div>
                                    <h3>등/초본 인증</h3>
                                    <p>"올리신 서류의 세부내용은 노출되지 않으니 안심하세요."</p>
                                </div>
                                <a href="${pageContext.request.contextPath}/mypage/mypage_sitter/certify.do">
                                    <i class="fas fa-times"></i>
                                </a>
                            </div>
                        </div>
                    </header>

                    <!-- 첫번째 항목 -->
                    <section class="group_certi_resi_con">
                        <div class="row">
                            <div class="col-xs-12 certi_resi_con_in">
                                <form action="#" method="GET" enctype="multipart/form-data">
                                    <!-- 첫번째 내용 -->
                                    <div class="certi_resi_one">
                                        <p class="resi_one_con order_resi">1번째</p>
                                        <h4 class="resi_one_con">주민등록 (초)본 사진으로 <br/> 찍어서 올려주세요.</h4>
                                        <ul class="resi_one_con add_resi">
                                            <li>최근 6개월 이내에 발급된 경우만 인정됩니다.</li>
                                            <li>회원님의 개인정보 보호를 위해 주민등록 번호 뒷자리를 꼭 가리고 보내주세요.
                                                (주민등록뒷자리 '미포함' 선택 후 발급, 또는 해당부분 가린 후 촬영)
                                            </li>
                                        </ul>
                                        <p class="resi_one_con" style="color:#aaaaaa;">사진첨부는 최대 5장까지 가능합니다.</p>
                                        <div class="resi_button1">
                                            <input type="file" id="resi_photo" name="resi_photo">
                                            <label for="resi_photo">
                                                <i class="fas fa-file-import"></i> 사진 추가하기
                                            </label>
                                        </div>
                                        <img src="${pageContext.request.contextPath}/assets/img/mypage_img/cert-resident-1.png" alt="주민등록등본 예시" style="width: 100%;">
                                    </div>

                                    <!-- 두번째 내용 -->
                                    <div class="certi_resi_one">
                                        <p class="resi_one_con order_resi">2번째</p>
                                        <h4 class="resi_one_con">등(초)본에 적혀있는 현주소를 <br/>아래 입력칸에 똑같이 적어주세요.</h4>
                                        <input type="text" name="real_resident" class="resi_one_con resi_button2" placeholder="여기에 똑같이 적어주세요.">
                                        <img src="${pageContext.request.contextPath}/assets/img/mypage_img/certi_resident_2.png" alt="주민등록등본 예시" style="width: 100%;">
                                        <p class="resi_one_con add_resi">
                                            올리신 등(초)본 현주소와 적어주신 내용이<br/>
                                            일치되어야 인증처리가 완료됩니다.
                                        </p>
                                    </div>

                                     <!-- 세번째 내용 -->
                                     <div class="certi_resi_one">
                                        <p class="resi_one_con order_resi">3번째</p>
                                        <h4 class="resi_one_con">등(초)본 우측 상단에 적혀있는 발급일자를 <br/>
                                            아래 입력칸에 똑같이 입력해주세요.</h4>
                                        <img class="resi_one_con" src="${pageContext.request.contextPath}/assets/img/mypage_img/certi_resident_3.png" alt="주민등록등본 예시" style="width: 100%;">
                                        <div class="resi_date_slec">
                                            <select name="resi_year" id="resi_year" class="selc_con">
                                                <option>년도</option>
                                                <option value="1960">1960</option>
                                                <option value="1970">1970</option>
                                                <option value="1980">1980</option>
                                                <option value="1990">1990</option>
                                                <option value="2000">2000</option>
                                                <option value="2010">2010</option>
                                                <option value="2020">2020</option>
                                            </select>
                                            <select name="resi_month" id="resi_month" class="selc_con">
                                                <option>월</option>
                                                <option value="1">1</option>
                                                <option value="2">2</option>
                                                <option value="3">3</option>
                                                <option value="4">4</option>
                                                <option value="5">5</option>
                                                <option value="6">6</option>
                                                <option value="7">7</option>
                                            </select>
                                            <select name="resi_day" id="resi_day" class="selc_con">
                                                <option>일</option>
                                                <option value="1">1</option>
                                                <option value="2">2</option>
                                                <option value="3">3</option>
                                                <option value="4">4</option>
                                                <option value="5">5</option>
                                                <option value="6">6</option>
                                                <option value="7">7</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div>
                                        <button type="submit" class="resi_button3">인증을 신청합니다!</button>
                                    </div>
                                </form>
                               
                                <!--<form action="certify.html" method="get" enctype="multipart/form-data">
                                    <div>아이디: <input type="text" name="userid"></div>
                                    <div>비밀번호 : <input type="password" name="pwd"></div>
                                    <div><input type="file" name="photo"></div>
                                    <div><button type="submit">전송</button></div>
                                </form>-->
                            </div>
                        </div>
                    </section>

		<!-- Javascript -->
		<script src="../../assets/js/jquery.min.js"></script>
        <script src="../../assets/js/bootstrap.min.js"></script>
	</body>
</html>