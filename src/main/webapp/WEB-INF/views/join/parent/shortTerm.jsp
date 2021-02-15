<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ page trimDirectiveWhitespaces="true" %>

<div id="short" class="container">
    <!-- xs-12로 모바일 맞춤 -->
    <h3 class="what_want">- 특정 날에만 -</h3>
    <!--특정 날 선택 daypicker-->
    <div class="calrendar_block">

    </div>
    <hr>
    <div>
        <!--시간 선택-->
        <div class="time_select_box">
            <div>
                <!--시작 시간-->
                <div class="regu_title">시작시간</div>
                <!--시간-->
                <div class="select_time" id="starttime">
                    <select>
                        <option value="10:00">오전 10:00</option>
                        <option value="10:30">오전 10:30</option>
                        <option value="11:00" selected>오전 11:00</option>
                        <option value="11:30">오전 11:30</option>
                        <option value="12:00">오전 12:00</option>
                        <option value="12:30">오전 12:30</option>
                    </select>
                </div>
            </div>
            <!--end select-->

            <!--중간 바-->
            <div class="middle_bar"></div>
            <!--종료시간-->
            <div>
                <div>
                    <div class="regu_title">종료시간</div>
                </div>
                <div class="select_time" id="endtime">
                    <select>
                        <option value="20:00">오후 20:00</option>
                        <option value="20:30">오후 20:30</option>
                        <option value="21:00" selected>오후 21:00</option>
                        <option value="21:30">오후 21:30</option>
                        <option value="22:00">오후 22:00</option>
                        <option value="22:30">오후 22:30</option>
                    </select>
                </div>
            </div>
            <!--end select-->
        </div>
        <!--end select box-->
    </div>
    <!--일정은 시터에게 맞출 수 잇어요-->
    <div class="jojung_box">
        <span class="jojung_check"></span>
        <span class="jojung_text">본 일정은 맘시터에 맞춰서 얼마든지 조정할 수 있어요.</span>
    </div>
    <button type="submit" class="next_btn">다음</button>
</div>

    <!-- Javascript -->
    <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script> <!-- jquery 파일명 수정 -->
    <script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
    <!--flatpickr-->
    <script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
    <script type="text/javascript">
        $(function () {

            $(".calrendar_block").flatpickr({
                inline: true,
                dateFormat: "Y-m-d",
                minDate: "today",
                maxDate: new Date().fp_incr(30), //지금으로부터 30일 이내
                mode: "multiple", //여러개 선택 가능
                defaultDate: new Date().fp_incr(6) //지금으로부터 6일이 기본
            });

            
            $(".next_btn").click(function (e) {
                //e.preventDefault();
				//스케쥴 json 조립
				//시작 날짜
				var selectdate = $(".calrendar_block").val();

				//빈도
				var frequency = "shortTerm";
				//시간
				var time = [];
				var starttime = $("#starttime option:selected").val();
                var endtime = $("#endtime option:selected").val();
				time.push(starttime);
				time.push(endtime);


				if($(".jojung_box").hasClass("box_check")==true) {
					//일정조정 가능 
					$("#schedule_ok").val("Y");
				} else {
					$("#schedule_ok").val("N");
				}

				var schedule = { 
					selectdate : selectdate, 
					frequency : frequency, 
					 // 배열은 아래와 같이 구조화 할 수 있습니다.
					time : time
				};
				
				var scheduleStr = JSON.stringify(schedule);
				//console.log(scheduleStr);
				var schedulerep = scheduleStr.replace(/\"/gi, '\'' );
				//console.log(schedulerep);
				$("#schedules").val(schedulerep);
               });
        });
    </script>
