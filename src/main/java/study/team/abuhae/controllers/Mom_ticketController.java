package study.team.abuhae.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class Mom_ticketController {
	@RequestMapping(value = "/buy/mom_ticket.do", method = RequestMethod.GET)
	public String IntroWebsite(Model model) {

		return "/buy/mom_ticket";
	}
}
