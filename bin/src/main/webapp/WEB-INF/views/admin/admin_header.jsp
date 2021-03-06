<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
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
    <!-- fontawesome(글리피콘) 적용 -->
    <script src="https://kit.fontawesome.com/f27ac0bcc1.js" crossorigin="anonymous"></script>

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/admin_header.css" />
  </head>

  <body>
    <div class="container">
      <div class="col-xs-12">
        <!-- xs-12로 모바일 맞춤 -->
        <header class="admin_hd">
          <div class="logo_wrap">
            <a href="${pageContext.request.contextPath}/Index.jsp">
              <img src="../img/logo (2).png" />
            </a>
          </div>
          <div class="info_wrap">
            <div class="admin_info">관리자님 안녕하세요.</div>
            <div>
              <button type="button" class="logout_btn">로그아웃</button>
            </div>
          </div>
        </header>
        <section class="sidebar">
          <!-- 아코디언 영역 -->
          <div class="panel-group" id="accordion">
            <!-- 회원관리 -->
            <div class="panel panel-default">
              <div class="panel-heading">
                <h4 class="panel-title">
                  <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseOne"> <i class="fas fa-user-friends"></i> 회원관리 </a>
                </h4>
              </div>
              <div id="collapseOne" class="panel-collapse collapse">
                <div class="panel-body">전체회원 관리</div>
                <div class="panel-body">탈퇴회원 관리</div>
              </div>
            </div>
            <!-- 이용권 관리-->
            <div class="panel panel-default">
              <div class="panel-heading">
                <h4 class="panel-title">
                  <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo"> <i class="fas fa-ticket-alt"></i> 이용권 관리 </a>
                </h4>
              </div>
              <div id="collapseTwo" class="panel-collapse collapse">
                <div class="panel-body">이용권 관리 현황/ 쿠폰 발송</div>
              </div>
            </div>
            <!-- 고객센터 -->
            <div class="panel panel-default">
              <div class="panel-heading">
                <h4 class="panel-title">
                  <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseThree"><i class="fas fa-headset"></i> 고객센터 </a>
                </h4>
              </div>
              <div id="collapseThree" class="panel-collapse collapse">
                <div class="panel-body">공지사항</div>
                <div class="panel-body">부모회원 자주묻는질문</div>
                <div class="panel-body">시터회원 자주묻는질문</div>
                <div class="panel-body">이용가이드</div>
              </div>
            </div>
            <!-- 현황 -->
            <div class="panel panel-default">
              <div class="panel-heading">
                <h4 class="panel-title">
                  <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseFour"><i class="fas fa-table"></i> 현황 </a>
                </h4>
              </div>
              <div id="collapseFour" class="panel-collapse collapse">
                <div class="panel-body">현황</div>
              </div>
            </div>
            <!-- 아코디언 영역 end-->
          </div>
        </section>
      </div>
      <!-- fin. col-xs-12 -->
    </div>

    <!-- Javascript -->
    <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
    <!-- jquery 파일명 수정 -->
    <script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
  </body>
</html>
