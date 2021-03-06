<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%
	
%>
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
			
		<style type="text/css">
			.container {
				margin: 0 auto;
				padding: 0;
			}
			.tab_area {
				display: block;
			}
			.col-xs-4 {
				text-align: center;
			}
			#default {
				background-color: #fff;
				color: #ff7000;
				
			}
			#default, #tab02, #tab03 {
				font-weight: bold;
				border-radius: 8px;
				font-size: 0.9em;
			}
			#tab02, #tab03 {
				color: #ccc;
			}
			h4 {
			 font-weight: bold;
			}
			a {
				left: 0;
				top: 9px;
				position: absolute;
			}
			.fixeBox {
			text-align: center;
			height: 45px;
			background-color: #fff;
			position: fixed;
			z-index: 100;
			} 
			.talk_area {
				padding-top: 50px;
			}
			 p {
			height: 40px;
			margin: 0;
			}
		
		</style>	
		</head>
	
		<body>
			<div class="container">
				<div class="col-xs-12"> <!-- xs-12로 모바일 맞춤 -->				
					<!-- Main start-->
					<div class="main">						
						<div class="talk_box">
							<div class="fixeBox col-xs-12">
							<a href="javascript:history.back();"><img src="<%=request.getContextPath()%>/assets/img/backPage.svg"/></a><div class="box_name"><h4>부모 후기 <span style="color: #ff7000;">999개</span></div></h4>
							</div>
							<div class="talk_area col-xs-12">
								<div class="talk_main">
									<div class="talk_menu col-xs-12">
										<div data-tab="tab_ok_more" class='tabmenu col-xs-4' id="default">
										<p id="tab01_p">채용 후기(99)</p></div>
										
										<div data-tab="tab_interview_more" class='tabmenu col-xs-4' id="tab02">
										<p id="tab02_p">인터뷰 후기(99)</p></div>
										
										<div data-tab="tab_faile_more" class='tabmenu col-xs-4' id="tab03">
										<p id="tab03_p">실패 후기(0)</p></div>									
									</div>
									<div id="tabcontent_more"> <!-- tab 내용부분 -->				
									</div>
								</div>
							</div> <!-- fin. talk_area -->
						</div> <!-- fin. talk_box -->
					</div> <!-- fin. Main -->										
				</div> <!-- fin. col-xs-12 -->
			</div> <!-- container -->
		
			<!-- Javascript -->
			<script src="<%=request.getContextPath()%>/assets/js/jquery.min.js"></script>
			<script type="text/javascript">
			jQuery(function($) {
				  			  
				  $('.tabmenu').click(function() {
						var activeTab = $(this).attr('data-tab');
						$('#default').css('background-color', 'white');
						$('#tab02').css('background-color', 'white');
						$('#tab03').css('background-color', 'white');
						$(this).css('background-color', 'rgb(255,238,224)');
						$.ajax({
							type : 'GET',                 //get방식으로 통신
							url : activeTab + ".jsp",    //탭의 data-tab속성의 값으로 된 jsp파일로 통신
							dataType : "html",            //html형식으로 값 읽기
							error : function() {          //통신 실패시 ㅠㅠ
								alert('통신실패!');
							},
							success : function(data) {    //통신 성공시 탭 내용을 담는 div를 읽어들인 값으로 채우기
								$('#tabcontent_more').html(data);
							}
						});
					});
					$('#default').click(); 
				}); // fin. 탭 기능
			</script>
			 <!-- jquery 파일명 수정 -->
			<script src="<%=request.getContextPath()%>/assets/js/bootstrap.min.js"></script> 
		</body>
	</html>