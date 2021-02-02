package study.team.abuhae.controllers;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.extern.slf4j.Slf4j;
import study.team.abuhae.model.Member;
import study.team.abuhae.service.MemberService;

@Slf4j
@Controller
public class JoinController {
	//service 객체 패턴 구현체 주입
	@Autowired
	MemberService memberService;
	
	//프로젝트 이름의 ContextPath 주입
	@Value("#{servletContext.contextPath}")
	String contextPath;
	
	@RequestMapping(value = "/join/join.do", method = RequestMethod.GET)
	public String join_start(Model model, HttpServletResponse response) {
		
		return "/join/join";
	}
	
	@RequestMapping(value = "/join/parent/start.do", method = RequestMethod.GET)
	public String m_join_start(Model model, HttpServletResponse response,
			@RequestParam(value = "type") String type) {
		//파라미터 저장
		Member member = new Member() {
		};
		member.setType(type);
		log.debug("선택한 타입 >> " + member.getType());
		
		return "/join/parent/start";
	}
	
	@RequestMapping(value = "/join/parent/activity_age.do", method = RequestMethod.GET)
	public String m_join_acage(Model model, HttpServletResponse response) {

		
		return "/join/parent/activity_age";
	}
	

	@RequestMapping(value = "/join/parent/children.do", method = RequestMethod.GET)
	public String m_join_children(Model model, HttpServletResponse response) {

		
		return "/join/parent/children";
	}
	
	@RequestMapping(value = "/join/parent/location.do", method = RequestMethod.GET)
	public String m_join_loc(Model model, HttpServletResponse response) {

		
		return "/join/parent/location";
	}
	
	@RequestMapping(value = "/join/parent/schedule.do", method = RequestMethod.GET)
	public String m_join_sche(Model model, HttpServletResponse response) {

		
		return "/join/parent/schedule";
	}
	
	@RequestMapping(value = "/join/parent/regular.do", method = RequestMethod.GET)
	public String m_join_regular(Model model, HttpServletResponse response) {

		
		return "/join/parent/regular";
	}
	
	@RequestMapping(value = "/join/parent/shortTerm.do", method = RequestMethod.GET)
	public String m_join_shortTerm(Model model, HttpServletResponse response) {

		
		return "/join/parent/shortTerm";
	}
	
	@RequestMapping(value = "/join/parent/noplan.do", method = RequestMethod.GET)
	public String m_join_noplan(Model model, HttpServletResponse response) {

		
		return "/join/parent/noplan";
	}
	
	@RequestMapping(value = "/join/parent/description.do", method = RequestMethod.GET)
	public String m_join_desc(Model model, HttpServletResponse response) {

		
		return "/join/parent/description";
	}
	
	@RequestMapping(value = "/join/parent/account.do", method = RequestMethod.GET)
	public String m_join_acco(Model model, HttpServletResponse response) {

		
		return "/join/parent/account";
	}
	
	@RequestMapping(value = "/join/parent/agreement.do", method = RequestMethod.GET)
	public String m_join_agree(Model model, HttpServletResponse response) {

		
		return "/join/parent/agreement";
	}
	
	@RequestMapping(value = "join/parent/success.do", method = RequestMethod.GET)
	public String m_join_success(Model model, HttpServletResponse response) {

		
		return "/join/parent/success";
	}
}
