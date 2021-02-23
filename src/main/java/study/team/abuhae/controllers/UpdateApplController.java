package study.team.abuhae.controllers;

import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import study.team.abuhae.helper.WebHelper;
import study.team.abuhae.model.Mom_info;
import study.team.abuhae.service.MomMypageService;

/** 맘회원 신청서 수정 컨트롤러 */
@Controller
public class UpdateApplController {
	@Autowired
	WebHelper webHelper;
	@Autowired
	MomMypageService momMypageService;
	@Value("#{servletContext.contextPath}")
	String contextPath;

	/** 내 신청서 정보 페이지 */
	@RequestMapping(value = "/mypage/mypage_mom/update_profile.do", method = RequestMethod.GET)
	public ModelAndView update_profile_cont(Locale locale, Model model,
			@RequestParam(value = "momno", defaultValue = "0") int momno) {
		if (momno == 0) {
			return webHelper.redirect(null, "Please Check login");
		}

		return new ModelAndView("mypage/mypage_mom/update_mom/update_profile_cont");
	}

	/* 프로필 제목 수정 컨트롤러 */
	@RequestMapping(value = "/mypage_update/applytitle.do", method = RequestMethod.POST)
	public ModelAndView update_applytitle(Model model, HttpSession session, 
			@RequestParam(value = "momno") int momno,
			@RequestParam(value = "mappl_title", defaultValue = "") String appl_title) {

		/** 1) 파라미터 유효성 검사 */
		if (appl_title == "" || appl_title == null) {
			return webHelper.redirect(null, "input Apply title.");
		}

		/** 2) 데이터 조회하기 */
		Mom_info input = new Mom_info();
		input.setMomno(momno);
		input.setApply_title(appl_title);

		try {

			momMypageService.updateApplytitle(input);

		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}

		/** 3) View 처리 */
		String url = contextPath + "/mypage/mypage_mom/update_profile.do?momno=" + momno;
		return webHelper.redirect(url, "Success change Apply!");
	}
	
	/* 프로필 상세 설명 수정 컨트롤러 */
	@RequestMapping(value = "/mypage_update/desc.do", method = RequestMethod.POST)
	public ModelAndView update_desc(Model model, HttpSession session, 
			@RequestParam(value = "momno") int momno,
			@RequestParam(value = "mappl_cont", defaultValue = "") String description) {

		/** 1) 파라미터 유효성 검사 */
		if (description == "" || description == null) {
			return webHelper.redirect(null, "input Apply description.");
		}

		/** 2) 데이터 조회하기 */
		Mom_info input = new Mom_info();
		input.setMomno(momno);
		input.setDescription(description);

		try {

			momMypageService.updateDesc(input);

		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}

		/** 3) View 처리 */
		String url = contextPath + "/mypage/mypage_mom/update_profile.do?momno=" + momno;
		return webHelper.redirect(url, "Success change Apply!");
	}

	/** 춴하는 시터 나이대 페이지 */
	@RequestMapping(value = "/mypage_update/wantage.do", method = RequestMethod.POST)
	public ModelAndView update_want_age(Locale locale, Model model,
			@RequestParam(value = "momno") int momno,
			@RequestParam(value = "want_age", defaultValue = "") String want_age) {
		/** 1) 파라미터 유효성 검사 */
		if (want_age == "" || want_age == null) {
			return webHelper.redirect(null, "cehcking want age.");
		}

		/** 2) 데이터 조회하기 */
		Mom_info input = new Mom_info();
		input.setMomno(momno);
		input.setWant_age(want_age);

		try {

			momMypageService.updateWantage(input);

		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}

		/** 3) View 처리 */
		String url = contextPath + "/mypage/mypage_mom/update_profile.do?momno=" + momno;
		return webHelper.redirect(url, "Success change Apply!");
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
