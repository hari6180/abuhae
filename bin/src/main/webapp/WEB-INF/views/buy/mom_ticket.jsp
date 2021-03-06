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

	<!-- animaition 적용-->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css" />
	<!--section-->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/section.css">
	<!-- css 적용 -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/mom_ticket.css">
	
</head>

<body>
	<div id="app">
		<div class="container">
		
			<div class="mom_buy_area col-xs-12">
				<div class="mom_buy_area">
					<div class="mom_buy_title">
						<div class="mom_title">
							<strong>무제한 이용권</strong>
						</div>
						<div class="mom_buy_title_text">
						<div>
							수많은 시터회원들에게 인터뷰를
							<strong>무제한 신청하고</strong>
						</div>
						<div>
							지원한 시터회원들의
							<strong>연락처를 무제한 받아</strong> 보세요!
						</div>
						</div>
					</div> <!-- fin. mom_buy_title -->
					<div class="mom_buy_box">
						<div class="mom_buy_box_left col-xs-4" id="button1">
							<div class="mom_buy_main">
								<div style="padding-top: 25px;">
									<p class="mom_buy_month">6개월</p>
								</div>
								<div style="padding-top: 10px;">
									<p class="mom_buy_before_price">179,400원</p>
								</div>
								<div>
									<p class="mom_buy_price">월 13,316원</p>
								</div>
								<div class="save_box">
									<p class="mom_buy_save">55% 절약!</p>
								</div>
							</div> <!-- fin. mom_buy_main -->	
							<div class="mom_buy_select_btn"></div>	
						</div>
						<div class="mom_buy_box_center col-xs-4" id="button2">
							<div class="mom_buy_main">
								<div style="padding-bottom: 10px;">
									<p class="mom_buy_month" style="color: #058ee2;">Best</p>
									<p class="mom_buy_month">3개월</p>
								</div>
								<div>
									<p class="mom_buy_before_price">89,700원</p>
								</div>
								<div>
									<p class="mom_buy_price">월 16,633원</p>
								</div>
								<div class="save_box">
									<p class="mom_buy_save">44% 절약!</p>
								</div>
							</div> <!-- fin. mom_buy_main -->	
							<div class="mom_buy_select_btn"></div>
						</div>
						<div class="mom_buy_box_right col-xs-4" id="button3">
							<div class="mom_buy_main">
								<div style="padding-top: 25px;">
									<p class="mom_buy_month">1개월</p>
								</div>
								<div style="padding-top: 27px;">
									<p class="mom_buy_price">월 29,900원</p>
								</div>
								<div class="save_box_bad">
									<p class="mom_buy_save">0% 절약!</p>
								</div>
							</div> <!-- fin. mom_buy_main -->	
							<div class="mom_buy_select_btn"></div>
						</div>
					</div> <!-- fin. mom_buy_box -->
					<button type="button" class="buy_btn" onclick = "location.href = 'receipt.jsp'">
					 <p class="buy_btn_style">  
					   결제하기
					 </p>
					</button>
					<div class="mom_buy_desc_area">
						<div class="mom_desc_title">1개월 무제한 이용권이란?</div>
						<div class="desc_style">
							<div class="desc_title">
								<div>
									1. 마음에 드는 시터회원에게
									<br/>
									<strong>무제한으로 인터뷰를 신청하고</strong>
								</div>
							</div> <!-- fin. desc_title -->
							<div class="desc_text">
								<div>
									내 인터뷰 신청에 시터회원이 수락하면,
									<br/>
									<strong>나에게 시터회원의 연락처가 전송</strong>
									됩니다.
								</div>
							</div> <!-- fin. desc_text -->
						</div>
						
						<div class="desc_style">
							<div class="desc_title">
								<div>
									2. 지원자의
									<br/>
									<strong>연락처도 무제한 </strong>
									받아서,
								</div>
							</div> <!-- fin. desc_title -->
							<div class="desc_text">
								<div>
									내 인터뷰 신청에 시터회원이 수락하면,
									<br/>
									<strong>나에게 시터회원의 연락처가 전송</strong>
									됩니다.
								</div>
							</div> <!-- fin. desc_text -->
						</div>
						
						<div class="desc_style">
							<div class="desc_title">
								<div>
									3. 나와 꼭 맞는
									<br/>
									<strong>맘시터를 찾을 수 있어요!</strong>
								</div>
							</div> <!-- fin. desc_title -->
							<div class="desc_text">
								<div>
									<strong>업계 가장 많은 아이돌보미가 활동</strong>하여
									<br/>
									내 조건에 맞는 사람을 찾을 확률이 가장 높습니다.
								</div>
							</div> <!-- fin. desc_text -->
						</div>
						
						<div class="desc_style" style="padding-bottom: 40px;">
							<div class="desc_title">
								<div>
									4. <strong>수수료가 없어서</strong> 합리적이에요~!
								</div>
							</div> <!-- fin. desc_title -->
							<div class="desc_text">
								<div>
									시터회원 채용 후 지급해야 하는 <strong>수수료가 없어</strong>
									<br/>
									현명한 부모님들이 선택하는 가장 합리적인 이용권입니다.
								</div>
							</div> <!-- fin. desc_text -->
						</div>
					</div> <!-- fin. mom_buy_desc_area -->
				</div> <!-- fin. mom_buy_area -->
				<hr class="line"></hr>
				<div class="refund_box">
					<div class="refund_title">
						<span class="refund_style">
						<strong>100% 환불가능!</strong>
						</span>
					</div>
					<div class="desc_text">
						<div>
							이용권을 구매했는데 <strong>맘시터 연락처를</strong> 한 번도 받지
							<br/>
							못하면 100% 연장/환불 가능합니다.
							<div class="refund_text">
							자세한 환불 규정은 아래 유의사항을 꼭 확인해주세요!
							</div>
						</div>
					</div>
					<div style="width: 100%; height: 40px;"></div>
				</div>
			</div> 
			
		</div>
	</div>
	<!-- Javascript -->
	<script src="<%=request.getContextPath()%>/assets/js/jquery.min.js"></script>
	<script type="text/javascript">
		$(function() {
			
			$( "#button1" ).click( function() {
				$('#button1').css({
					"border": "2px solid #79ccff",
					"background-color": "#fff",
					"border-radius": "8px"
				});
				$('#button2').css({
					"border": "none",
					"background-color": "#fff"		
				});
				$('#button3').css({
					"border": "none",
					"background-color": "#fff"		
				});
			});
			
			$( "#button2" ).click( function() {
				$('#button2').css({
					"border": "2px solid #79ccff",
					"background-color": "#fff",
					"border-radius": "8px"
				});
				$('#button1').css({
					"border": "none",
					"background-color": "#fff"		
				});
				$('#button3').css({
					"border": "none",
					"background-color": "#fff"		
				});
			});
			
			$( "#button3" ).click( function() {
				$('#button3').css({
					"border": "2px solid #79ccff",
					"background-color": "#fff",
					"border-radius": "8px"
				});
				$('#button1').css({
					"border": "none",
					"background-color": "#fff"		
				});
				$('#button2').css({
					"border": "none",
					"background-color": "#fff"		
				});
			});
			
		})
	</script>
	<script src="<%=request.getContextPath()%>/assets/js/bootstrap.min.js"></script>
	<!--slick slider-->
	<script type="text/javascript" src="<%=request.getContextPath()%>/assets/plugin/slick/slick.min.js"></script>
</body>
</html>