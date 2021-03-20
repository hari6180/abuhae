$(document).ready(function () {
  // 무한 스크롤 1218 하리
  $(document).scroll(function () {
    var maxHeight = $(document).height();
    var currentScroll = $(window).scrollTop() + $(window).height();

    if (maxHeight <= currentScroll + 100) {
      $.ajax({
        // 결과를 읽어올 URL
        url: "item_group.html",
        // 웹 프로그램에게 데이터를 전송하는 방식.
        // 생략할 경우 get으로 자동 지정됨
        method: "get",
        // 전달할 조건값은 JSON 형식으로 구성
        // 사용하지 않을 경우 명시 자체를 생략할 수 있다.
        data: {},
        // 읽어올 내용의 형식(생략할 경우 json)
        dataType: "html",
        // 읽어온 내용을 처리하기 위한 함수
        success: function (req) {
          // 준비된 요소에게 읽어온 내용을 출력한다.
          $("#result").append(req);
        },
      }); // end $.ajax
    }
  });
});

$(function () {
  // 헤더 메뉴 load처리 1224 하리
  $("#menu").load("/ezen-android2020-2/index_header.html");
  // 상세 페이지 연동 1220 하리
  $(".sitter_item_group").on("click", function () {
    location.href = "http://localhost:8080/ezen-android2020-2/page_detail/sitter_page_detail/sitter_page_detail_for_mom.html";
  });

  /** 원하는 활동 선택 ------------------------------------------------------------------- */
  //활동 버튼 클릭
  $(".act_btn").click(function (e) {
    //버튼 클릭시 text 색 변경
    $(this).next().find(".want_text").toggleClass("select_text");
    //버튼 클릭시 이미지 URL 변경
    //url 가져오기
    var img_url = $(this).next().find(".want_img").attr("src");
    var indeximg = img_url.indexOf("_n"); //잘라서 _n이 있는지 확인
    if (indeximg > -1) {
      var img_src = img_url.replace(/_n/, "_s");
      $(this).next().find(".want_img").attr("src", img_src);
    } else {
      var img_src = img_url.replace(/_s/, "_n");
      $(this).next().find(".want_img").attr("src", img_src);
    }
  });

  //활동 버튼 반영 1221 하리
  $("#act_apply").click(function (e) {
    e.preventDefault();
    $("#activity_type_modal").modal("hide");
    const act_btn = $(".activity_type_btn");
    const result2 = [];

    for (var i = 0; i < act_btn.length; i++) {
      result2.push($(act_btn[i]).val());
    }

    for (var i = 0; i < result2.length; i++) {
      if (!$(".act_label").eq(i).hasClass("select_act_type")) {
        $(".act_label").eq(i).addClass("unselect_act_type");
      }
    }
  });

  $(".act_btn").change(function change_btn(e) {
    e.preventDefault();
    const checked = $(".act_btn:checked");
    const act_btn = $(".activity_type_btn");
    const result1 = [];
    const result2 = [];

    for (var i = 0; i < checked.length; i++) {
      result1.push($(checked[i]).val());
    }

    console.log(result1);

    for (var i = 0; i < act_btn.length; i++) {
      result2.push($(act_btn[i]).val());
    }

    console.log(result2);

    for (var i = 0; i < result1.length; i++) {
      for (var j = 0; j < result2.length; j++) {
        if (result1[i] == result2[j]) {
          $(".act_label").eq(j).addClass("select_act_type");
        }
      }
    }
    console.log($(".act_label").eq(j).hasClass("select_act_type"));
  });

  $(".activity_type_wrap").click(function (e) {
    $(".act_label").removeClass("select_act_type");
    $(".act_label").removeClass("unselect_act_type");
  });

  $(".reset").click(function () {
    $('#form1 input[type="checkbox"]').prop("checked", false);
  });

  /** 상세 검색 ------------------------------------------------------------------- */

  // 아이나이 버튼 클릭
  $(".ages").click(function (e) {
    //버튼 클릭시 클래스 변경
    $(this).toggleClass("select_btn_detail");
    //버튼 클릭시 text 색 변경
    $(this).find("i").toggleClass("select_text_detail");
    $(this).find("span").toggleClass("select_text_detail");
  });

  // 돌봄요일 버튼 클릭
  $(".care_day").click(function (e) {
    //버튼 클릭시 클래스 변경
    $(this).toggleClass("select_btn_detail");
    //버튼 클릭시 text 색 변경
    $(this).find("div").toggleClass("select_text_detail");
  });

  // 돌봄 시간대 버튼 클릭
  $(".time_range").click(function (e) {
    //버튼 클릭시 클래스 변경
    $(this).toggleClass("select_btn_detail");
    //버튼 클릭시 text 색 변경
    $(this).find("span").toggleClass("select_text_detail");
  });

  // 맘시터 유형 버튼 클릭
  $(".sitter_type").click(function (e) {
    //버튼 클릭시 클래스 변경
    $(this).toggleClass("select_btn_detail");
    //버튼 클릭시 text 색 변경
    $(this).find("span").toggleClass("select_text_detail");
  });

  /** 상세 검색 end ------------------------------------------------------------------- */
  // 리셋
  $("#reset_loc").on("click", function (e) {
    $(this).parents("#location_box").find(".loc_btn").removeClass("select_location");
  });

  //시 클릭했을 때
  $(".loc_btn").on("click", function () {
    var select = $(this).hasClass("select_location");
    //선택이 안되어있을때
    if (select == false) {
      //선택이 되어있는 요소 탐색
      var loc = $("#si").find("button").removeClass("select_loaction");
      //console.log(loc);
      $(this).addClass("select_loaction");
      //시 선택하면 gu 보이게
      $("#gu>div").removeClass("hide_content");
      $("#gu>div").addClass("show_content");
    }
  });
  //구 클릭했을 때
  $("#gu button").on("click", function () {
    var select = $(this).hasClass("select_location");
    //선택이 안되어있을때
    if (select == false) {
      //선택이 되어있는 요소 탐색
      var loc = $("#gu").find("button").removeClass("select_loaction");
      //console.log(loc);
      $(this).addClass("select_loaction");
      //구 선택하면 동 보이게
      $("#dong>div").removeClass("hide_content");
      $("#dong>div").addClass("show_content");
    }
  });

  //동 클릭했을때
  $("#dong button").on("click", function () {
    var select = $(this).hasClass("select_location");
    //선택이 안되어있을때
    if (select == false) {
      //선택이 되어있는 요소 탐색
      var loc = $("#dong").find("button").removeClass("select_loaction");
      //console.log(loc);
      $(this).addClass("select_loaction");

      $.ajax({
        type: "GET", //get방식으로 통신
        url: "../join/sitter/location_result.html", //탭의 data-tab속성의 값으로 된 html파일로 통신
        dataType: "html", //html형식으로 값 읽기
        error: function () {
          //통신 실패시 ㅠㅠ
          alert("통신실패!");
        },
        success: function (data) {
          //통신 성공시 탭 내용을 담는 div를 읽어들인 값으로 채우기
          $(".select_box").html(data);
          var now = $(".next_btn").prop("disabled");
          //가져온 값 역으로 변경하여 다시 적용
          $(".next_btn").prop("disabled", !now);
        },
      });
    }
  });

  $(".swapHeart").on("click", function (e) {
    event.stopPropagation(); // 버블링 방지 1220 하리
    var $jim = $(this);

    // 찜할 때 alert창과 glyphicon변형
    if ($(this).find("span").hasClass("glyphicon-heart-empty")) {
      $(this).find("span").removeClass("glyphicon-heart-empty");
      $(this).find("span").addClass("glyphicon-heart");
      swal("찜 하기 완료!", "마이페이지 > 찜한 맘시터에서 확인할 수 있습니다.");
    }
    // 찜 취소할 때 alert창과 glyphicon변형
    else {
      swal("찜 하기 취소");
      $(this).find("span").addClass("glyphicon-heart-empty");
    }
  }); // fin. 찜버튼 기능

  // 드롭다운 선택 - 0109 하리
  $(".dr_option").click(function () {
    $(this).addClass("active");
    $(".dr_option").not(this).removeClass("active");
    $("#orderby").html($(this).find("a").html());
  });
});
