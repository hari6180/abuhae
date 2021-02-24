package study.team.abuhae.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import study.team.abuhae.model.Mom_info;
import study.team.abuhae.model.Sitter_info;
import study.team.abuhae.service.MemberInsertService;

@Controller
public class MemberInsertController {
	/** Service 패턴 구현체 주입 */
	@Autowired
	MemberInsertService memberInsertService;
	
	public int random(int n1, int n2) {
		int a = (int)((Math.random() * (n2 - n1 + 1)) + n1);
		return a; 
      }

	/** 멤버를 DB에 추가하는 컨트롤러 2021-02-04 하리
	 *  void라 view가 없습니다. 
	 *  프로젝트 실행하고 value 안 url 주소창에 입력하여 추가하세요. **/
	@RequestMapping(value = "/member_insert.do", method = RequestMethod.GET)
	public void member_insert(Model model) {
		
		// 저장할 값들을 Beans에 담는다.
		Mom_info input = new Mom_info();
		for (int i = 1; i <= 100; i++) {
			input.setType('M');
			input.setId("mom" + i);
			input.setPassword("mom123");
			input.setName("전하리" + i);
			input.setEmail("aaa@aaa.aa");
			input.setPhone("01088888888");
			input.setBirthdate("1997-06-18");
			input.setGender('F');
			input.setJob_opening('Y');
			
			// 영어로 불러옴
			input.setWant_act1("innerplay");
			input.setWant_act2("guide");
			input.setWant_act3("outside");
			
			input.setWant_age("20대");
			input.setKids_num(1);
			input.setKids_age("201501");
			
			// 시급 랜덤입력
			int payment = random(9000,20000);
			input.setPayment(payment);
			
			input.setPayment_ok('Y');
			input.setSi("서울시");
			input.setGu("강동구");
			input.setDong("성내2동");
			input.setSchedule("{\"day\": [\"tue\", \"fri\", \"sun\"], \"workterm\": \"regular\", \"startdate\": \"2021/02/16\"}");
			input.setSchedule_ok('Y');
			input.setSitter_gender('F');
			input.setInterview_type("call");
			input.setCare_type("주1회");
			
			// 프로필 업데이트 날짜 랜덤입력
			int temp1 = random(3,12);
			int temp2 = random(1,28);
			String date = String.format("%02d-%02d", temp1, temp2);
			String openingdate = "2020-" + date;
			input.setOpeningdate(openingdate);
			input.setSignup_date(openingdate);
			input.setSubscribe('N');
			
			/*
			 * Schedule sd = new Schedule(); Day day = new Day(); Time time = new Time();
			 * String[] darr = {"tue", "fri", "sun"}; String[] tarr = {"11:00", "21:00"};
			 * 
			 * day.setDay(darr); time.setTime(tarr);
			 * 
			 * sd.setStartdate("2021-02-10"); sd.setFrequency("regular"); sd.setDay();
			 * 
			 * input.setSchedule(sd);
			 */
			
			int memberno = input.getMemberno();
			input.setMemberno(memberno);

			try {
				// 데이터 저장 --> 데이터 저장에 성공하면 파라미터로 전달하는 input 객체에 PK값이 저장된다.
				memberInsertService.addMom(input);
			} catch (Exception e) {
				e.printStackTrace();
			}

		}
		// 저장할 값들을 Beans에 담는다.
		Sitter_info input2 = new Sitter_info();
		for (int i = 1; i <= 100; i++) {
			input2.setType('S');
			input2.setId("sitter" + i);
			input2.setPassword("sitter123");
			input2.setName("김선아" + i);
			input2.setEmail("bbb@aaa.aa");
			input2.setPhone("01088888888");
			input2.setBirthdate("1993-11-24");
			input2.setGender('F');
			input2.setJob_opening('Y');
			input2.setSitter_type("student");
			
			// 영어로 불러옴
			input2.setWant_act1("innerplay");
			input2.setWant_act2("guide");
			input2.setWant_act3("outside");
			
			input2.setWant_age("baby");
			
			// 시급 랜덤입력
			int payment = random(9000,20000);
			
			input2.setPayment(payment);
			input2.setSi("서울시");
			input2.setGu("강동구");
			input2.setDong("성내2동");
			input2.setSchedule("{\"day\": [\"tue\", \"fri\", \"sun\"], \"frequency\": \"regular\", \"startdate\": \"2021/02/16\"}");
			input2.setIntroduce("안녕하세요 짱짱 시터입니다.");
			input2.setCctv('Y');
			
			// 프로필 업데이트 날짜 랜덤입력
			int temp1 = random(3,12);
			int temp2 = random(1,28);
			String date = String.format("%02d-%02d", temp1, temp2);
			String openingdate = "2020-" + date;
			input2.setOpeningdate(openingdate);
			
			int memberno2 = input2.getMemberno();
			input2.setMemberno(memberno2);
			input2.setSignup_date(openingdate);
			input2.setSubscribe('N');

			try {
				// 데이터 저장 --> 데이터 저장에 성공하면 파라미터로 전달하는 input 객체에 PK값이 저장된다.
				memberInsertService.addSitter(input2);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
}
