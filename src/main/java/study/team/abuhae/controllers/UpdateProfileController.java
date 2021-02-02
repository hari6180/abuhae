package study.team.abuhae.controllers;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/** 시터회원 프로필 수정 컨트롤러 */
@Controller
public class UpdateProfileController {
	/** 내 신청서 정보 페이지 */
	@RequestMapping(value = "/mypage/mypage_sitter/update_profile_detail/update_profile_img.do", method = RequestMethod.GET)
	public String update_profile_img(Locale locale, Model model) {

		return "mypage/mypage_sitter/update_profile_detail/update_profile_img";
	}
	
	/** 선호하는 돌봄 유형 */
	@RequestMapping(value = "/mypage/mypage_sitter/update_profile_detail/choice_care.do", method = RequestMethod.GET)
	public String choice_care(Locale locale, Model model) {

		return "mypage/mypage_sitter/update_profile_detail/choice_care";
	}
	
	/** 활동 가능 시간 페이지 */
	@RequestMapping(value = "/mypage/mypage_sitter/update_profile_detail/update_regular.do", method = RequestMethod.GET)
	public String update_regular(Locale locale, Model model) {

		return "mypage/mypage_sitter/update_profile_detail/update_regular";
	}
	
	/** 돌봄 가능 연령 페이지 */
	@RequestMapping(value = "/mypage/mypage_sitter/update_profile_detail/update_care_age.do", method = RequestMethod.GET)
	public String update_care_age(Locale locale, Model model) {

		return "mypage/mypage_sitter/update_profile_detail/update_care_age";
	}
	
	/** 가능한 활동 페이지 */
	@RequestMapping(value = "/mypage/mypage_sitter/update_profile_detail/update_activity.do", method = RequestMethod.GET)
	public String update_activity_sitter(Locale locale, Model model) {

		return "mypage/mypage_sitter/update_profile_detail/update_activity";
	}
	
	/** 희망 시급 페이지 */
	@RequestMapping(value = "/mypage/mypage_sitter/update_profile_detail/update_wage.do", method = RequestMethod.GET)
	public String update_wage(Locale locale, Model model) {

		return "mypage/mypage_sitter/update_profile_detail/update_wage";
	}
	
	/** 관련 경험 페이지 */
	@RequestMapping(value = "/mypage/mypage_sitter/update_profile_detail/update_experience.do", method = RequestMethod.GET)
	public String update_experience(Locale locale, Model model) {

		return "mypage/mypage_sitter/update_profile_detail/update_experience";
	}
	
	/** 자기소개 페이지 */
	@RequestMapping(value = "/mypage/mypage_sitter/update_profile_detail/update_introduce.do", method = RequestMethod.GET)
	public String update_introduce(Locale locale, Model model) {

		return "mypage/mypage_sitter/update_profile_detail/update_introduce";
	}
	
	/** 활동 지역 페이지 */
	@RequestMapping(value = "/mypage/mypage_sitter/update_profile_detail/update_location.do", method = RequestMethod.GET)
	public String update_location_sitter(Locale locale, Model model) {

		return "mypage/mypage_sitter/update_profile_detail/update_location";
	}
}
