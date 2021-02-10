package study.team.abuhae.controllers;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import study.team.abuhae.helper.WebHelper;
import study.team.abuhae.model.Mom_info;
import study.team.abuhae.service.MemberService;

@RestController
public class JoinRestController {
	@Autowired
	WebHelper webhelper;
	@Autowired
	MemberService memberService;
	Mom_info mominfo = new Mom_info();
	
	// 회원가입 최종 OK
	@RequestMapping(value = "join/parent/add_ok", method = RequestMethod.POST)
	public Map<String, Object> m_join_success(Model model,
			@RequestParam(value = "type") char type,
			@RequestParam(value = "want_act") String want_act,
			@RequestParam(value = "want_age") String want_age,
			@RequestParam(value = "kids_num") int kids_num, 
			@RequestParam(value = "kids_age") String kids_age,
			@RequestParam(value = "payment") String paymentstr, 
			@RequestParam(value = "payment_ok") char payment_ok,
			@RequestParam(value = "si") String si,
			@RequestParam(value = "gu") String gu, 
			@RequestParam(value = "dong") String dong,
			@RequestParam(value = "schedule") String schedulestr, 
			@RequestParam(value = "schedule_ok") char schedule_ok,
			@RequestParam(value = "description", required = false) String description,
			@RequestParam(value = "user_id") String user_id, 
			@RequestParam(value = "user_pw") String user_pw,
			@RequestParam(value = "name") String name, 
			@RequestParam(value = "email") String email,
			@RequestParam(value = "tel") String tel,
			@RequestParam(value = "birthdate") String birthdate) {

		// 데이터 가공
		paymentstr = paymentstr.replace(",", "");
		int payment = Integer.parseInt(paymentstr);
		String schedule = schedulestr.replace("'", "\"");

		// 유효성 검사에 사용될 객체
		Mom_info check = new Mom_info();
		check.setId(user_id);
		check.setEmail(email);
		check.setPhone(tel);

		// 아이디 검사
		try {

			int result = memberService.idCheck(check);
			if (result == 1) {
				return webhelper.getJsonWarning("아이디중복");
			}
			mominfo.setId(user_id);
		} catch (Exception e) {
			return webhelper.getJsonError(e.getLocalizedMessage());
		}
		// 이메일 검사
		try {
			int result = memberService.emailCheck(check);
			if (result == 1) {
				return webhelper.getJsonWarning("이메일중복");
			}
			mominfo.setEmail(email);
		} catch (Exception e) {
			return webhelper.getJsonError(e.getLocalizedMessage());
		}
		// 핸드폰번호 검사
		try {
			int result = memberService.phoneCheck(check);
			if (result == 1) {
				return webhelper.getJsonWarning("핸드폰중복");
			}
			mominfo.setPhone(tel);
		} catch (Exception e) {
			return webhelper.getJsonError(e.getLocalizedMessage());
		}

		// 저장할 값 beans에 담기
		mominfo.setType(type);
		mominfo.setWant_act(want_act);
		mominfo.setWant_age(want_age);
		mominfo.setKids_num(kids_num);
		mominfo.setKids_age(kids_age);
		mominfo.setPayment(payment);
		mominfo.setPayment_ok(payment_ok);
		mominfo.setSi(si);
		mominfo.setGu(gu);
		mominfo.setDong(dong);
		mominfo.setSchedule(schedule);
		mominfo.setSchedule_ok(schedule_ok);
		mominfo.setDescription(description);

		mominfo.setPassword(user_pw);
		mominfo.setName(name);
		mominfo.setBirthdate(birthdate);
		mominfo.setJob_opening('N');
		// mominfo.setSitter_gender('F');
		// mominfo.setInterview_type('1');
		// mominfo.setCare_type("주1회");
		// mominfo.setOpeningdate("2021-02-04");

		int memberno = mominfo.getMemberno();
		mominfo.setMemberno(memberno);

		// log.debug(mominfo.toString());

		try {
			// 데이터 저장 --> 데이터 저장에 성공하면 파라미터로 전달하는 input 객체에 PK값이 저장된다.
			memberService.addMom(mominfo);

		} catch (Exception e) {
			return webhelper.getJsonError(e.getLocalizedMessage());
		}

		

		return webhelper.getJsonData();
	}
}
