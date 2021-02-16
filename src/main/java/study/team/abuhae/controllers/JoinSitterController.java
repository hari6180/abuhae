package study.team.abuhae.controllers;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import lombok.extern.slf4j.Slf4j;
import study.team.abuhae.helper.WebHelper;
import study.team.abuhae.model.Member;
import study.team.abuhae.model.Sitter_info;
import study.team.abuhae.service.MemberService;

@Slf4j
@Controller
public class JoinSitterController {
	// service 객체 패턴 구현체 주입
	@Autowired
	MemberService memberService;

	// webhelper 주입
	@Autowired
	WebHelper webhelper;

	Sitter_info sitterinfo = new Sitter_info();
	// 프로젝트 이름의 ContextPath 주입
	@Value("#{servletContext.contextPath}")
	String contextPath;

	@RequestMapping(value = "/join/sitter/start.do", method = RequestMethod.GET)
	public String s_join_start(Model model, HttpServletResponse response, @RequestParam(value = "type") char type) {
		// 파라미터 저장
		sitterinfo.setType(type);
		log.debug("선택한 타입 >> " + sitterinfo.getType());

		return "/join/sitter/start";
	}
	
	@RequestMapping(value = "/join/sitter/sitter_type.do", method = RequestMethod.GET)
	public String s_join_type(Model model, HttpServletResponse response) {

		return "/join/sitter/sitter_type";
	}
	
	@RequestMapping(value = "/join/sitter/activity_age.do", method = RequestMethod.POST)
	public ModelAndView s_join_acage(Model model, 
			@RequestParam(value = "type") char type,
			@RequestParam(value = "sitter_type") String sitter_type) {

		// 저장할 값 beans에 담기
		sitterinfo.setType(type);
		sitterinfo.setSitter_type(sitter_type);


		// 저장된 결과 조회하기 위한 객체
		// Mom_info output = null;

		log.debug(sitterinfo.toString());

		model.addAttribute("type", type);
		model.addAttribute("sitter_type", sitter_type);

		return new ModelAndView("/join/sitter/activity_age");
	}
	
	@RequestMapping(value = "/join/sitter/location.do", method = RequestMethod.POST)
	public ModelAndView s_join_loc(Model model, 
			@RequestParam(value = "type") char type,
			@RequestParam(value = "sitter_type") String sitter_type,
			@RequestParam(value = "want_act") String want_act, 
			@RequestParam(value = "want_age") String want_age
			) {

		// 저장할 값 beans에 담기
		sitterinfo.setType(type);
		sitterinfo.setSitter_type(sitter_type);
		sitterinfo.setWant_act(want_act);
		sitterinfo.setWant_age(want_age);


		// 저장된 결과 조회하기 위한 객체
		// Mom_info output = null;

		log.debug(sitterinfo.toString());

		model.addAttribute("type", type);
		model.addAttribute("sitter_type", sitter_type);
		model.addAttribute("want_act", want_act);
		model.addAttribute("want_age", want_age);


		return new ModelAndView("/join/sitter/location");
		// return webHelper.getJsonData(map);
		// return "/join/parent/children";
	}
}
