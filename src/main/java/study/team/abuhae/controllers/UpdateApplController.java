package study.team.abuhae.controllers;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/** 맘회원 신청서 수정 컨트롤러 */
@Controller
public class UpdateApplController {
	/** 내 신청서 정보 페이지 */
	@RequestMapping(value = "/mypage/mypage_mom/update_mom/update_profile_cont.do", method = RequestMethod.GET)
	public String update_profile_cont(Locale locale, Model model) {

		return "mypage/mypage_mom/update_mom/update_profile_cont";
	}
	
	/** 춴하는 시터 나이대 페이지 */
	@RequestMapping(value = "/mypage/mypage_mom/update_mom/update_sitter_age.do", method = RequestMethod.GET)
	public String update_sitter_age(Locale locale, Model model) {

		return "mypage/mypage_mom/update_mom/update_sitter_age";
	}
	
	/** 돌봄 지역 페이지 */
	@RequestMapping(value = "/mypage/mypage_mom/update_mom/update_location.do", method = RequestMethod.GET)
	public String update_location(Locale locale, Model model) {

		return "mypage/mypage_mom/update_mom/update_location";
	}
	
	/** 활동 가능 시간 페이지 */
	@RequestMapping(value = "/mypage/mypage_mom/update_mom/update_care_time.do", method = RequestMethod.GET)
	public String update_care_time(Locale locale, Model model) {

		return "mypage/mypage_mom/update_mom/update_care_time";
	}
	
	/** 아이 정보 페이지 */
	@RequestMapping(value = "/mypage/mypage_mom/update_mom/update_child_info.do", method = RequestMethod.GET)
	public String update_child_info(Locale locale, Model model) {

		return "mypage/mypage_mom/update_mom/update_child_info";
	}
	
	/** 원하는 활동 페이지 */
	@RequestMapping(value = "/mypage/mypage_mom/update_mom/update_activity.do", method = RequestMethod.GET)
	public String update_activity(Locale locale, Model model) {

		return "mypage/mypage_mom/update_mom/update_activity";
	}
	
	/** 그 외 요청사항 페이지 */
	@RequestMapping(value = "/mypage/mypage_mom/update_mom/update_request.do", method = RequestMethod.GET)
	public String update_request(Locale locale, Model model) {

		return "mypage/mypage_mom/update_mom/update_request";
	}
}
