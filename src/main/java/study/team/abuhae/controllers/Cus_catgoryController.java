package study.team.abuhae.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class Cus_catgoryController {
	@RequestMapping(value = "/customer/customer_center.do", method = RequestMethod.GET)
	public String customer_center(Model model) {

		return "customer/customer_center";
	}
}
