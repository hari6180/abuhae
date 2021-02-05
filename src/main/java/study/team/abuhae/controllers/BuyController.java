package study.team.abuhae.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BuyController {
	
	// 이용권 페이지
	@RequestMapping(value = "/buy/buy.do", method = RequestMethod.GET)
	public String buy(Model model) {

		return "/buy/buy";
	}
	
	// 맘 이용권 페이지 
		@RequestMapping(value = "/buy/mom_ticket.do", method = RequestMethod.GET)
		public String mom_ticket(Model model) {

			return "/buy/mom_ticket";
	}
		
	// 시터 이용권 페이지
	@RequestMapping(value = "/buy/sitter_ticket.do", method = RequestMethod.GET)
	public String sitter_ticket(Model model) {

		return "/buy/sitter_ticket";
	}
	
	// 이용권 구매 페이지
		@RequestMapping(value = "/buy/receipt.do", method = RequestMethod.GET)
		public String receipt(Model model) {

			return "/buy/receipt";
	}
	
}
