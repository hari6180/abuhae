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
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" />

    <!-- noto Sans 웹 폰트 적용 -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/notosans.css" />
    <!-- join css -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/join_parent.css" />
    <style type="text/css">
        .modal {
            top:30%;
        }
    </style>
</head>

<body>
    <!--modal-->
    <div id="help_modal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="help_modal_Label"
        aria-hidden="true">
        <!--modal dialog-->
        <div class="modal-dialog">
            <!--modal content-->
            <div class="modal-content">
                <!--제목-->
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel">희망 시급이란?</h4>
                </div>
                <!--내용-->
                <div class="modal-body">
                    <p class="min_payment_box">
                        <strong>돌봄 아이 1명일 경우</strong>
                        <br>
                        최저시급 8,590원 이상 필수
                        <br>
                        <br>
                        <strong>돌봄 아이 2명일 경우</strong>
                        <br>
                        최저시급 8,590원 x 1.5배인 12,855원 이상 필수
                    </p>
                </div>
            </div>
        </div>
        <!--end modal content -->
    </div>
    <!--end modal dialog-->
    </div>
    <!--end modal-->
    <!--화면 영역-->
    <div id="children" class="container">
        <div class="col-xs-12">
            <!-- xs-12로 모바일 맞춤 -->
            <div>
                <div class="page_dots">
                    <span class="dot now_dots"></span>
                    <span class="dot now_dots"></span>
                    <span class="dot"></span>
                    <span class="dot"></span>
                    <span class="dot"></span>
                </div>
                <h3 class="what_want">몇 명의 아이를 돌봐드릴까요?</h3>
                <div class="number_children_wrap">
                    <button class="childeren_num1 btn_children_off" data-tab="select_one">1명</button>
                    <button class="childeren_num2 btn_children_off" data-tab="select_two">2명</button>
                </div>
                <!--동적 요소 위치-->
                <div class="title">
                    <!--아이 명수 선택 안 할시 띄우기-->
                    <!--아이 명수 셀렉하면 동적 요소로 타이틀 변경-->
                    <div class="noselect_title">
                        안전한 아이 돌봄 서비스를 위해
                        <br>
                        시터 1명이 최대 2명까지 돌볼 수 있습니다.
                    </div>
                    <div class="select_title">
                    </div>
                </div>
                <!--버튼 select시 공지내용 변경 - ajax-->
                
                <!--end 동적 요소 위치-->


                <div class="payment_wrap">
                    <div class="payment_box hide_content">
                        <h4>맘시터에게 지급할 희망 시급을 적어 주세요.
                            <div class="help_box">
                                <a data-toggle="modal" href="#help_modal"><button class="help_btn">
                                        <span class="sr-only">도움말</span>
                                        <img src="${pageContext.request.contextPath}/assets/img/help.png" alt="도움말">
                                    </button></a>
                            </div>
                        </h4>
                        <div class="payment_input_wrap">
                            <input type="text" class="payment_input" value="10,000" id="payment_input">
                            <span class="payment_fix">원</span>
                        </div>
                        <div class="disc_box">
                            <input type="checkbox" value="discussion" id="discussion"><label for="discussion">시급 협의
                                가능</label>
                        </div>
                    </div>
                </div>

                <a href="location.jsp"><button class="next_btn">다음</button></a>
            </div>

        </div> <!-- fin. col-xs-12 -->
    </div>

    <!-- Javascript -->
    <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script> <!-- jquery 파일명 수정 -->
    <script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        function addCommas(x) {
            return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
        }
        $(function () {
            //시급 입력시 콤마 자동으로 찍히기 - 선아
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


            //아이명수 클릭시 버튼 색상 적용 및 ajax 페이지 변환 - 선아
            $(".childeren_num1, .childeren_num2").on("click", function () {
                var select = $(this).hasClass("childeren_num1");

                //num1 클릭했을 때
                if (select) {
                    //버튼 색상 적용
                    $(this).removeClass("btn_children_off");
                    $(this).addClass("btn_children_on");
                    $(this).next().removeClass("btn_children_on");
                    $(this).next().addClass("btn_children_off");
                    ;

                } else {
                    //num2 클릭했을 때
                    $(this).removeClass("btn_children_off");
                    $(this).addClass("btn_children_on");
                    $(this).prev().removeClass("btn_children_on");
                    $(this).prev().addClass("btn_children_off");
                }

                $(".noselect_title").empty();
                //버튼 클릭시에 내용 변경
                var test = $(this).attr('data-tab');
                $.ajax({
                    type: 'GET',                 //get방식으로 통신
                    url: test + ".html",    //탭의 data-tab속성의 값으로 된 html파일로 통신
                    dataType: "html",            //html형식으로 값 읽기
                    error: function () {          //통신 실패시 ㅠㅠ
                        alert('통신실패!');
                    },
                    success: function (data) {    //통신 성공시 탭 내용을 담는 div를 읽어들인 값으로 채우기
                        $('.select_title').html(data);
                    }
                });

            });

            //select box 출생년도, 출생월 선택이 되면 show_content - 선아
            $(document).on('change','#year, #month', function(){
                //드롭다운의 선택값
                var yaer = $("#year").val();
                console.log(year);
                var month = $("#month").val();
                //가져온 값이 존재한다면?
                if (yaer != "" && month != "") {
                    $(this).parents().find(".payment_box").removeClass("hide_content");
                    $(this).parents().find(".payment_box").addClass("show_content");
                };
            });

        });

    </script>
</body>

</html>