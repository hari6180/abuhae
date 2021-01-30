<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html lang="ko">

<head>
	<meta charset="utf-8" />
	<meta name="viewport"
		content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
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
	<!--join sitter 참조-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/join_sitter.css" />

	<style type="text/css">

	</style>
</head>

<body>
	<div class="container">
		<div class="col-xs-12">
			<!-- xs-12로 모바일 맞춤 -->
			<div id="payment">
				<div class="page_dots">
					<span class="dot now_dots"></span>
					<span class="dot now_dots"></span>
					<span class="dot now_dots"></span>
					<span class="dot now_dots"></span>
					<span class="dot now_dots"></span>
					<span class="dot"></span>
					<span class="dot"></span>
				</div>
				<h3 class="what_want">희망시급을 입력해 주세요</h3>
				<img class="pay_img" src="${pageContext.request.contextPath}/assets/img/payment.png" alt="희망시급입력">
				<div class="pay_input_box">
					<input id="payment_input" type="text" value="8,600"><span>원/1시간</span>
				</div>
				<div class="avg_check_box">
					<input type="checkbox" value="avg_pay" id="avg_pay" checked> <label for="avg_pay">평균시급 적용</label>
				</div>
				<p class="pay_desc">
					아이를 1명 돌보는 경우 - 최저시급 8,590원 이상 필수<br>
					아이를 2명 돌보는 경우 - 희망 시급의 1.5배 수준으로 협의
				</p>
			</div>
			<!--end payment-->
			<hr>
			<!--cctv-->
			<div id="cctv">
				<h3 class="what_want">CCTV 촬영 동의 여부</h3>
				<p class="pay_desc">동의할 경우 부모에게 더 많은 선택을 받게 됩니다.</p>
				<div>
					<div class="radio_box">
						<input type="radio" name="cctv_agre" id="agree" value="agree" checked>
						<label for="agree" class="radio_text">
							<div>
								<h3>CCTV가 있어도 당당히 일할 수 있습니다.</h3>
								<p>(단, 녹화된 영상을 유출 배포하지 않는다는 전제)</p>
							</div>
						</label>
					</div>
					<div class="radio_box">
						<input type="radio" name="cctv_agre" id="noagree" value="noagree">
						<label for="noagree" class="radio_text">
							<div>
								<h3>CCTV 촬영을 원하지 않습니다.</h3>
							</div>
						</label>
					</div>
				</div>
			</div>
			<!--end cctv-->
			<a href="profile_img.jsp"><button class="next_btn">다음</button></a>

		</div> <!-- fin. col-xs-12 -->
	</div>

	<!-- Javascript -->
	<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script> <!-- jquery 파일명 수정 -->
	<script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
	<script type="text/javascript">
		function addCommas(x) {
            return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
		}
		//금액 입력 검사 - 선아
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

			//평균시급 적용 체크박스 체크 해제시 최저임금으로 설정
			$("#avg_pay").change(function(){
				var chk = $(this).is(":checked"); //.attr('checked'); 
				if(chk == true) {
					$("#payment_input").val("8,600");
				} else {
					$("#payment_input").val("8,590");
				}
                
            });
		});
	
	</script>
</body>

</html>