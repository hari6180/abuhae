package study.team.abuhae.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class Mom_interviewController {
	
	@RequestMapping(value = "/page_detail/mom_page_detail/mom_interview.do", method = RequestMethod.GET)
	public String IntroWebsite(Model model) {

		return "/page_detail/mom_page_detail/mom_interview";
	}

}
