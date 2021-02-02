package study.team.abuhae.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class Mom_ticketController {
	
	// 맘 이용권 페이지 
	@RequestMapping(value = "/buy/mom_ticket.do", method = RequestMethod.GET)
	public String mom_ticket(Model model) {

		return "/buy/mom_ticket";
	}
}
