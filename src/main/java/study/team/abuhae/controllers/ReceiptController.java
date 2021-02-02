package study.team.abuhae.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ReceiptController {
	@RequestMapping(value = "/buy/receipt.do", method = RequestMethod.GET)
	public String IntroWebsite(Model model) {

		return "/buy/receipt";
	}
}
