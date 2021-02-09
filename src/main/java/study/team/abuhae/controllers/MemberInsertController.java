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

	/** 멤버를 DB에 추가하는 컨트롤러 2021-02-04 하리
	 *  void라 view가 없습니다. 
	 *  프로젝트 실행하고 value 안 url 주소창에 입력하여 추가하세요. **/
	@RequestMapping(value = "/member_insert.do", method = RequestMethod.GET)
	public void member_insert(Model model) {

		// 저장할 값들을 Beans에 담는다.
		Mom_info input = new Mom_info();
		for (int i = 1; i <= 100; i++) {
			input.setId("mom" + i);
			input.setType('M');
			input.setPassword("mom123");
			input.setName("전하리" + i);
			input.setEmail("aaa@aaa.aa");
			input.setPhone("010-8888-8888");
			input.setBirthdate("1997-06-18");
			input.setJob_opening('Y');

			input.setWant_act("야외활동");
			input.setWant_age("20대");
			input.setKids_num(1);
			input.setKids_age("201501");
			input.setPayment(10000);
			input.setSi("서울시");
			input.setGu("강동구");
			input.setDong("성내2동");
			input.setSchedule("{ \"startdate\" : \"2021-01-21\",\r\n" + "	\"frequency\" : \"정기적으로\",\r\n"
					+ "	\"day\" : [\"wed\", \"thu\"],\r\n" + "	\"time\" : [\"11:00\", \"21:00\"] \r\n" + "}");
			input.setSchedule_ok('Y');
			input.setSitter_gender('F');
			input.setInterview_type('1');
			input.setCare_type("주1회");
			input.setOpeningdate("2021-02-04");
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
			input2.setId("sitter" + i);
			input2.setType('S');
			input2.setPassword("sitter123");
			input2.setName("김선아" + i);
			input2.setEmail("bbb@aaa.aa");
			input2.setPhone("010-8888-8888");
			input2.setBirthdate("1993-11-24");
			input2.setJob_opening('Y');

			input2.setWant_act("야외활동");
			input2.setWant_age("20대");
			input2.setPayment(10000);
			input2.setSi("서울시");
			input2.setGu("강동구");
			input2.setDong("성내2동");
			input2.setSchedule('5');
			input2.setSchedule_set("{ \"startdate\" : \"2021-01-21\",\r\n" + "	\"frequency\" : \"정기적으로\",\r\n"
					+ "	\"day\" : [\"wed\", \"thu\"],\r\n" + "	\"time\" : [\"11:00\", \"21:00\"] \r\n" + "}");
			input2.setIntroduce("안녕하세요 짱짱 시터입니다.");
			input2.setCctv("Y");
			input2.setOpeningdate("2021-02-04");
			int memberno2 = input2.getMemberno();
			input.setMemberno(memberno2);

			try {
				// 데이터 저장 --> 데이터 저장에 성공하면 파라미터로 전달하는 input 객체에 PK값이 저장된다.
				memberInsertService.addSitter(input2);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
}
