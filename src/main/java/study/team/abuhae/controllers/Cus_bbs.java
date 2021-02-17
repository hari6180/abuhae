package study.team.abuhae.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class Cus_bbs {
	@RequestMapping(value = "/customer/guide_danger.do", method = RequestMethod.GET)
	public String guide_danger(Model model) {

		return "customer/guide_danger";
    }
	@RequestMapping(value = "/customer/guide_mom_ch2.do", method = RequestMethod.GET)
	public String guide_mom_ch2(Model model) {

		return "customer/guide_mom_ch2";
    }
	@RequestMapping(value = "/customer/guide_mom.do", method = RequestMethod.GET)
	public String guide_mom(Model model) {

		return "customer/guide_mom";
	}
	@RequestMapping(value = "/customer/guide_sitter.do", method = RequestMethod.GET)
	public String guide_sitter(Model model) {

		return "customer/guide_sitter";
	}
	@RequestMapping(value = "/customer/guide_solution.do", method = RequestMethod.GET)
	public String guide_solution(Model model) {

		return "customer/guide_solution";
	}
	@RequestMapping(value = "/customer/mom_activity_ch2.do", method = RequestMethod.GET)
	public String mom_activity_ch2(Model model) {

		return "customer/mom_activity_ch2";
	}
	@RequestMapping(value = "/customer/mom_activity.do", method = RequestMethod.GET)
	public String mom_activity(Model model) {

		return "customer/mom_activity";
	}
	@RequestMapping(value = "/customer/mom_contract_ch2.do", method = RequestMethod.GET)
	public String mom_contract_ch2(Model model) {

		return "customer/mom_contract_ch2";
	}
	@RequestMapping(value = "/customer/mom_contract.do", method = RequestMethod.GET)
	public String mom_contract(Model model) {

		return "customer/mom_contract";
	}
	@RequestMapping(value = "/customer/mom_epilogue_ch2.do", method = RequestMethod.GET)
	public String mom_epilogue_ch2(Model model) {

		return "customer/mom_epilogue_ch2";
	}
	@RequestMapping(value = "/customer/mom_epilogue.do", method = RequestMethod.GET)
	public String mom_epilogue(Model model) {

		return "customer/mom_epilogue";
	}
	@RequestMapping(value = "/customer/mom_information_ch2.do", method = RequestMethod.GET)
	public String mom_information_ch2(Model model) {

		return "customer/mom_information_ch2";
	}
	@RequestMapping(value = "/customer/mom_product_ch2.do", method = RequestMethod.GET)
	public String mom_product_ch2(Model model) {

		return "customer/mom_product_ch2";
	}
	@RequestMapping(value = "/customer/notice_site_ch2.do", method = RequestMethod.GET)
	public String notice_site_ch2(Model model) {

		return "customer/notice_site_ch2";
	}
	@RequestMapping(value = "/customer/question_sitter_ch3.do", method = RequestMethod.GET)
	public String question_sitter_ch3(Model model) {

		return "customer/question_sitter_ch3";
	}
	@RequestMapping(value = "/customer/seach_main.do", method = RequestMethod.GET)
	public String seach_main(Model model) {

		return "customer/seach_main";
	}
	@RequestMapping(value = "/customer/sitter_activity_ch2.do", method = RequestMethod.GET)
	public String sitter_activity_ch2(Model model) {

		return "customer/sitter_activity_ch2";
	}
	@RequestMapping(value = "/customer/sitter_contract_ch2.do", method = RequestMethod.GET)
	public String sitter_contract_ch2(Model model) {

		return "customer/sitter_contract_ch2";
	}
	
	@RequestMapping(value = "/customer/question_sitter_ch1.do", method = RequestMethod.GET)
	public String question_sitter_ch1(Model model) {

		return "customer/question_sitter_ch1";
	}
	@RequestMapping(value = "/customer/question_sitter_ch2.do", method = RequestMethod.GET)
	public String question_sitter_ch2(Model model) {

		return "customer/question_sitter_ch2";
	}
}