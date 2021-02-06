package study.team.abuhae.controllers;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {
	@RequestMapping(value = "/login/login.do", method = RequestMethod.GET)
	public String login(Model model, HttpServletResponse response) {

		
		return "/login/login";
	}
	
	@RequestMapping(value = "/login/find.do", method = RequestMethod.GET)
	public String find(Model model, HttpServletResponse response) {

		
		return "/login/find";
	}
}
