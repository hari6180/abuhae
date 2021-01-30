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
    <!--절대 경로 수정 1217 선아-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" />

    <!-- noto Sans 웹 폰트 적용 -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/notosans.css" />
    <!--join css-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/join_parent.css">

    <style type="text/css">

    </style>
</head>

<body>
    <div id="schedule" class="container">
        <div class="col-xs-12">
            <!-- xs-12로 모바일 맞춤 -->
            <div class="change_box">
                <div class="page_dots">
                    <span class="dot now_dots"></span>
                    <span class="dot now_dots"></span>
                    <span class="dot now_dots"></span>
                    <span class="dot now_dots"></span>
                    <span class="dot"></span>
                </div>
                <h3 class="what_want">언제 돌봐드릴까요?</h3>
                <div class="when_btn_box">
                    <!--해당 버튼에 value 값을 ajax data에 넣어서 백으로 전달 -->
                    <button class="when_btn" value="regular">정기적으로</button>
                    <button class="when_btn" value="shortTerm">특정 날에만</button>
                    <button class="when_btn" value="noplan">아직 정확한 계획은 없어요.</button>
                </div>
            </div>

        </div> <!-- fin. col-xs-12 -->

    </div>

    <!-- Javascript -->
    <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script> <!-- jquery 파일명 수정 -->
    <script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        $(function(){
            $(".when_btn").on("click", function(e){
                var url = $(this).val();
                $.ajax({
					type: 'GET',                 //get방식으로 통신
                    url: url + ".jsp",         //탭의 data-tab속성의 값으로 된 html파일로 통신  
					dataType: "html",            //html형식으로 값 읽기
					error: function () {          //통신 실패시 ㅠㅠ
						alert('통신실패!');
					},
                    success: function (req) {    //통신 성공시 탭 내용을 담는 div를 읽어들인 값으로 채우기
						location.href=url+".jsp";
					}
				});
            });
        });
    </script>
</body>

</html>