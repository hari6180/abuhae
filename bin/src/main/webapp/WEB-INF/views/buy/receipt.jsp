<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%
	
%>
<!DOCTYPE html>
<html lang="ko">

<head>
	<meta charset="utf-8" />
	<meta name="viewport"
		content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<title>아이를 부탁해</title>

	<!-- 모바일 웹 페이지 설정 -->
	<link rel="shortcut icon" href="<%=request.getContextPath()%>/assets/ico/favicon.ico" />
	<link rel="apple-touch-icon-precomposed" href="<%=request.getContextPath()%>/assets/ico/favicon.ico" />
	<!-- bootstrap -->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/css/bootstrap.min.css" />
	<!-- noto Sans 웹 폰트 적용 -->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/css/notosans.css" />
	<!--slick slider-->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/plugin/slick/slick.css" />
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/plugin/slick/slick-theme.css" />
	<!-- fontawesome(글리피콘) 적용 -->
	<script src="https://kit.fontawesome.com/f27ac0bcc1.js" crossorigin="anonymous"></script>
	
	<!-- sweetalert 사용 -->
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<!-- css 적용 -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/receipt.css">
</head>

<body>
	<div id="app">
		<div class="container">
			<div class="receipt_area col-xs-12">
				<div class="receipt_title">
					<div style="margin-top: 8px; margin-right: 8px; margin-left: -16px;">
						<button type="button" class="back_btn" onclick = "history.back() ">
							<i class="fas fa-times"></i>
						</button>
					</div>
					<div class="receipt_title_text col-xs-10">결제내용 확인</div>
				</div> <!-- fin. receipt_title -->
				<div class="receipt_box">
					<div class="receipt_name_area">
						<div class="second_name">맘회원 전용</div>
						<div class="name">프리미엄 이용권</div>
					</div>
					<div style="font-weight: bold; font-size: 0.8em; color: #ff9000; text-align: center;"><span style="color: #ff7000;"><i class="fas fa-exclamation"></i></span> 쿠폰과 적립금은 중복할인이 불가능합니다</div>
					<hr style="margin-bottom: 15px;">
					<div class="coupon_area">
					  <div class="coupon_line">
						<label>쿠폰</label>
						<select name="coupon" class="pull-right" id="mySelect">
							<option value="">선택</option>
							<option value="30dc" id="30dc">30%할인</option>
							<option value="50dc">50%할인</option>
						</select>
					  </div>
					  <hr style="margin-bottom: 15px;">
					  <div class="coupon_line">
					  	<label>사용 가능한 적립금</label>
						<select name="coupon" class="pull-right" id="mySelect02">
							<option>선택</option>
							<option>2000원</option>
							<option>1000원</option>
						</select>
					  </div>
					  <hr style="margin-bottom: 15px;">
					  <div style="margin-bottom: 20px;">
					  	<span class="style_price_title">내역</span>
					  	<span id="price_dc" class="pull-right">49,900 원</span>
					  </div>
					  <div class="buy_price">
					  	<span class="style_price_title">총 결제 금액</span>
					  	<span id="total_price" class="pull-right">49,900 원</span>
					  </div>
					  <label id="agree_ckeck">
					  	<input type="checkbox" value="agree" name="agree_chck">
					  	필수 유의사항 및 환불 규정을 확인하였습니다
					  </label>
					  <button type="button" class="buy_btn col-xs-12" id="pay">결제하기</button>
					</div>
				</div> <!-- fin. receipt_box -->
				<div id="myModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
					<!-- .modal-dialog -->
					<div class="modal-dialog">
						<!-- .modal-content -->
						<div class="modal-content">
							<div class="modal-body">
								<p style="text-align: center; padding-top: 10px; font-weight: bold;">
									정말 결제하시겠습니까?
								</p>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default col-xs-6" data-dismiss="modal" id="btn_no">
									취소
								</button>
								<button type="button" class="btn btn-default col-xs-6" data-dismiss="modal" id="btn_ok">
									확인
								</button>
							</div>
						</div>
						<!-- /.modal-content -->
					</div>
					<!-- /.modal-dialog -->
				</div>
				<div id="myModal_interview" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
					<!-- .modal-dialog -->
					<div class="modal-dialog">
						<!-- .modal-content -->
						<div class="modal-content">
							<div class="modal-body">
								<p style="text-align: center; padding-top: 10px; font-weight: bold;">
									결제되셨습니다.
								</p>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default col-xs-6" data-dismiss="modal" id="btn_interview" onclick="location.href='/ezen-android2020-2/search/sitter_search.jsp'">
									인터뷰 지원하러 가기 <span style="color: #ff7000"><i class="fas fa-angle-double-right"></i></span>
								</button>
							</div>
						</div>
						<!-- /.modal-content -->
					</div>
					<!-- /.modal-dialog -->
				</div>
				<div id="myModal_agree" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
					<!-- .modal-dialog -->
					<div class="modal-dialog">
						<!-- .modal-content -->
						<div class="modal-content">
							<div class="modal-body">
								<p style="text-align: center; padding-top: 10px; font-weight: bold;">
									환불규정에 대해 동의하여 주세요
								</p>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default col-xs-6" data-dismiss="modal" id="btn_agree">
									확인
								</button>
							</div>
						</div>
						<!-- /.modal-content -->
					</div>
					<!-- /.modal-dialog -->
				</div>
			</div> 
		</div>
	</div>
	<!-- Javascript -->
	<script src="<%=request.getContextPath()%>/assets/js/jquery.min.js"></script>
	<script type="text/javascript">
	
	$(document).ready(function(){
		
	    $("#pay").click(function(){
	    	if ($("input:checkbox[name='agree_chck']").is(":checked")==false) {
	    		$("#myModal_agree").modal();
	    		return;
	    	}else {
	    		$("#myModal").modal();
	    	}
	    }); // fin. 구매관련 동의 체크 여부
	    
		$("#btn_ok").click(function(){
			$("#myModal_interview").modal();
	    }); // fin. 구매확인 후 인터뷰하러가기 >> 모달창 띄우기 
		
		$('#mySelect').change(function(){ 
			var index = $("#mySelect option").index($("#mySelect option:selected"));
			if (index == 1) {
				$("#price_dc").html("-14,970원");
			    $("#total_price").html("34,930원");
			    $("#price_dc").css(
					"color", "#ff7000"
				) 
			} else if (index == 2) {
				$("#price_dc").html("-24,950원");
			    $("#total_price").html("24,950원");
			    $("#price_dc").css(
					"color", "#ff7000"
				)
			} else {
				$("#price_dc").html("49,900원");
			    $("#total_price").html("49,900원");
			    $("#price_dc").css(
					"color", "#222222"		
				)
			}
		}); // fin. index안에 option 위치 값 index로 받아서 if문 따라서 할인금액, 총 금액 변경
		
		$('#mySelect02').change(function(){ 
			var index = $("#mySelect02 option").index($("#mySelect02 option:selected"));
			if (index == 1) {
				$("#price_dc").html("-2000원");
			    $("#total_price").html("47,900원");
			    $("#price_dc").css(
					"color", "#ff7000"
				)
			} else if (index == 0) {
				$("#price_dc").html("49,900원");
			    $("#total_price").html("49,900원");
			    $("#price_dc").css(
					"color", "#222222"
				)
			}
			else {
				$("#price_dc").html("-1000원");
			    $("#total_price").html("48,900원");
			    $("#price_dc").css(
					"color", "#ff7000"		
				)
			}
		}); // fin. index안에 option 위치 값 index로 받아서 if문 따라서 할인금액, 총 금액 변경
	});
	</script>
	<script src="<%=request.getContextPath()%>/assets/js/bootstrap.min.js"></script>
	<!--slick slider-->
	<script type="text/javascript" src="<%=request.getContextPath()%>/assets/plugin/slick/slick.min.js"></script>
</body>
</html>