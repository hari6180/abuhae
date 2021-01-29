<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>

    <!-- header css -->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/css/index_header_login_mom.css" />
  </head>
  <body>
    <div id="header">
      <!-- header : 하리-->
      <header>
        <div class="header_wrap col-xs-12">
          <div class="header">
            <div class="flex_row main_menu">
              <!-- 메뉴 모달 열기-->
              <a data-toggle="modal" href="#menu_modal">
                <p><i class="fas fa-bars"> </i></p>
              </a>

              <a href="http://localhost:8080<%=request.getContextPath()%>/Index.jsp">
                <img src="<%=request.getContextPath()%>/assets/img/logo(1).png" class="logo" />
              </a>
            </div>
            <div class="flex_row">
              <a href="http://localhost:8080<%=request.getContextPath()%>/join/join.jsp"><button id="header_join" class="join">가입하기</button></a>
              <i id="header_search" class="fas fa-search header_search_btn"></i>
            </div>
          </div>
        </div>
        <div class="searchbar_wrap" style="display: none">
          <div class="search_block search_sitter"><img src="<%=request.getContextPath()%>/assets/img/header_sittersearch.png" />맘시터 찾기</div>
          <div class="search_block search_job"><img src="<%=request.getContextPath()%>/assets/img/header_jobsearch.png" />일자리 찾기</div>
        </div>
      </header>
      <!-- header end-->

      <!-- modal -->

      <div id="menu_modal" class="modal col-xs-12 fade" data-toggle="tab" tabindex="-1" role="dialog" aria-labelledby="menu_modal_label" aria-hidden="true">
        <!-- modal content-->
        <div class="modal_content col-xs-9">
          <!-- modal header -->
          <div class="modal_group">
            <div class="modal_header">
              <div class="user_name_group">
                <p class="welcome">안녕하세요</p>
                <p class="cus_name">전하리 부모님</p>
              </div>
              <a href="#" id="logout_btn"
                ><button type="button" class="modal_btn">
                  <p class="logout_btn">로그아웃</p>
                </button></a
              >
            </div>
            <!-- modal header end-->

            <!-- modal body-->
            <div class="modal_body">
              <div class="sitter_search">
                <button type="button" id="stsc_btn">
                  <p class="stsc_txt">맘시터 찾기</p>
                </button>
              </div>
              <div class="icon_link_group">
                <div class="user_menu" id="menu_mypage">
                  
                  <div class="img_bg">
                    <img src="<%=request.getContextPath()%>/assets/img/noun_Human.png" />
                  </div>
                  <span class="um_txt">마이페이지</span>
                </div>
                <div class="user_menu" id="menu_application">
                  
                  <div class="img_bg">
                    <img src="<%=request.getContextPath()%>/assets/img/noun_Pen.png" />
                  </div>
                  <span class="um_txt">신청서 수정</span>
                </div>
                <div class="user_menu" id="menu_buy">
                  
                  <div class="img_bg">
                    <img src="<%=request.getContextPath()%>/assets/img/noun_ticket.png" />
                  </div>

                  <span class="um_txt">이용권 구매</span>
                </div>
              </div>
            </div>
          </div>
          <!-- modal body end-->
          <div class="divider"></div>
          <!-- modal footer -->
          <div class="modal_footer modal_group">
            <a href="#" id="desc_service">
              <p>서비스 소개</p>
            </a>
            <a href="#" id="other_parent">
              <p>다른 부모 신청서 보기</p>
            </a>
            <a href="#" id="notice_btn">
              <p>공지사항</p>
            </a>
            <a href="#" id="cus_btn">
              <p>고객센터</p>
            </a>
          </div>

          <!-- modal footer end -->
        </div>
        <!-- modal content end-->
      </div>
      <!-- modal end -->
    </div>
    <!--삭제 예정-->
    <!-- Javascript -->
    <script src="<%=request.getContextPath()%>/assets/js/jquery.min.js"></script>
    <!-- jquery 파일명 수정 -->
    <script src="<%=request.getContextPath()%>/assets/js/bootstrap.min.js"></script>
    <!--삭제 예정-->
    <script>
      $(function () {
        $("#logout_btn").click(function (e) {
          location.replace("http://localhost:8080<%=request.getContextPath()%>/index.jsp");
        });
        $("#stsc_btn").click(function (e) {
          location.replace("http://localhost:8080<%=request.getContextPath()%>/search/sitter_search.jsp");
        });
        $("#menu_mypage").click(function (e) {
          location.replace("http://localhost:8080<%=request.getContextPath()%>/mypage/mypage_mom/mom_mypage.jsp");
        });
        $("#menu_application").click(function (e) {
          location.replace("http://localhost:8080<%=request.getContextPath()%>/mypage/mypage_mom/update_appl.jsp");
        });
        $("#menu_buy").click(function (e) {
          location.replace("http://localhost:8080<%=request.getContextPath()%>/buy/mom_ticket.jsp");
        });

        $("#intro_btn").click(function (e) {
          location.replace("http://localhost:8080<%=request.getContextPath()%>/abu-service/introduce.jsp");
        });
        $("#other_parent").click(function (e) {
          location.replace("http://localhost:8080<%=request.getContextPath()%>/search/job_search.jsp");
        });
        $("#notice_btn").click(function (e) {
          location.replace("http://localhost:8080<%=request.getContextPath()%>/customer/notice_site.jsp");
        });
        $("#cus_btn").click(function (e) {
          location.replace("http://localhost:8080<%=request.getContextPath()%>/customer/customer_center.jsp");
        });
      });
    </script>
  </body>
</html>
