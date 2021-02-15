<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<div id="regular" class="container">
	<h3 class="what_want">- 정기적으로 -</h3>

	<div>
		<!--돌봄 시작일-->
		<div class="calc_box">
			<div class="regu_title">돌봄 시작일</div>
			<input id="datepicker" class="date_box">
		</div>
		<hr>
		<div>
			<div class="regu_title">돌봄 요일</div>
			<div class="day_btn_group">
				<button class="day_btn" value="mon" type="button">월</button>
				<button class="day_btn" value="tue" type="button">화</button>
				<button class="day_btn" value="wen" type="button">수</button>
				<button class="day_btn" value="thu" type="button">목</button>
				<button class="day_btn" value="fri" type="button">금</button>
				<button class="day_btn" value="sat" type="button">토</button>
				<button class="day_btn" value="sun" type="button">일</button>
			</div>
		</div>
		<hr>
		<!--요일 선택시 나타내주기-->
		<div id="content" class="hide_content">
			<!--시간 선택-->
			<div class="time_select_box">
				<div>
					<!--시작 시간-->
					<div class="regu_title">시작시간</div>
					<!--시간-->
					<div class="select_time">
						<select id="starttime">
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
					<div class="select_time">
						<select id="endtime">
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

			<!--일정은 시터에게 맞출 수 잇어요-->
			<div class="jojung_box">
				<span class="jojung_check"></span>
				<span class="jojung_text">본 일정은 맘시터에 맞춰서 얼마든지 조정할 수 있어요.</span>
			</div>
			<button type="submit" class="next_btn">다음</button>
			
		</div>
		<!--end hide content-->
	</div>
</div>
<script>
	$(function () {
			$('#datepicker').flatpickr({
				dateFormat: "Y/m/d",
				minDate: "today",
				maxDate: new Date().fp_incr(30), //지금으로부터 30일 이내
				defaultDate: new Date().fp_incr(6) //지금으로부터 6일이 기본
			});

			
		});

</script>