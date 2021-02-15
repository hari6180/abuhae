package study.team.abuhae.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
import study.team.abuhae.service.MemberService;

@Controller
public class LoginController {
	// 서비스 주입
	@Autowired
	MemberService memberService;
	@Autowired
	WebHelper webHelper;
	@Value("#{servletContext.contextPath}")
    String contextPath;

	@RequestMapping(value = "/login/login.do", method = RequestMethod.GET)
	public ModelAndView login(Model model, HttpServletResponse response) {

		return new ModelAndView("/login/login");
	}

	@RequestMapping(value = "/login/login_ok.do", method = RequestMethod.POST)
	private ModelAndView login_ok(Model model, HttpServletResponse response, HttpServletRequest request,
			@RequestParam(value = "user_id") String user_id, 
			@RequestParam(value = "user_pw") String user_pw) {
		// session 객체 만들기
		HttpSession session = request.getSession();
		// 데이터 조회할 객체
		Mom_info input = new Mom_info();
		input.setId(user_id);
		input.setPassword(user_pw);

		// 조회된 데이터 저장 객체
		Mom_info login = null;

		try {
			// 특정 아이디에 대한 결과 조회
			login = (Mom_info) memberService.getMemberLogin(input);
			
			if (login != null) {
				// 조회된 데이터가 널이 아니라면 로그인 성공
				//session.setAttribute("islogin", output);
				session.setAttribute("isLogin", true); // 로그인 여부 세션
				session.setAttribute("loginID", login.getId()); // 로그인한 회원 id 세션
				session.setAttribute("loginType", login.getType()); // 로그인한 회원 type 세션
				session.setAttribute("loginNo", login.getMemberno()); // 로그인한 회원 number 세션
				session.setAttribute("login", login);
		
			}
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}

		String url = contextPath;
		return webHelper.redirect(url, null);
	}
	
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public ModelAndView logout(HttpSession session) {
		session.invalidate();
		
		String url = contextPath;
		return webHelper.redirect(url, null);
	}

	@RequestMapping(value = "/login/find.do", method = RequestMethod.GET)
	public String find(Model model, HttpServletResponse response) {

		return "/login/find";
	}
}
