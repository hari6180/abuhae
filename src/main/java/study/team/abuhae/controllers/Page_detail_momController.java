package study.team.abuhae.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class Page_detail_momController {
	
	@RequestMapping(value = "/page_detail/mom_page_detail/mom_page_detail_calendar.do", method = RequestMethod.GET)
	public String IntroWebsite(Model model) {

		return "/page_detail/mom_page_detail/mom_page_detail_calendar";
	}

}
