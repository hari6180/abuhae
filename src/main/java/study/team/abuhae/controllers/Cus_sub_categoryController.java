package study.team.abuhae.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.support.ServletContextLiveBeansView;
import org.springframework.web.servlet.ModelAndView;

import study.team.abuhae.helper.RegexHelper;
import study.team.abuhae.helper.WebHelper;
import study.team.abuhae.model.Cus_category;
import study.team.abuhae.model.Cus_sub_category;
import study.team.abuhae.model.Mom_info;
import study.team.abuhae.service.CustomerService;



@Controller
public class Cus_sub_categoryController {
	/** 객체 주입 */
	@Autowired WebHelper webHelper;
	@Autowired RegexHelper regexHelper;
	@Autowired CustomerService customerService;
	@Value("#{servletContext.contextPath}")
	String contextPath;
	
	@RequestMapping(value = "/customer/guide.do", method = RequestMethod.GET)
	public ModelAndView guide(Model model, HttpServletResponse response, HttpServletRequest request) {
		// 조건값 Beans에 저장하기
		List<Cus_category> out = null;
		
		try {
			// 데이터 조회 
			out = customerService.getCusSubCateList(null);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		List<Cus_sub_category> output = null;
		
		try {
			// 데이터 조회 
			output = customerService.getCusBbslist(null);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		/** View 처리 */
		model.addAttribute("out", out);
		model.addAttribute("output", output);
		
		return new ModelAndView("customer/guide");
	}
	
	@RequestMapping(value = "/customer/mom_information.do", method = RequestMethod.GET)
	public String mom_information(Model model) {

		return "customer/mom_information";
	}
	@RequestMapping(value = "/customer/mom_product.do", method = RequestMethod.GET)
	public String mom_product(Model model) {

		return "customer/mom_product";
	}
	@RequestMapping(value = "/customer/notice_site.do", method = RequestMethod.GET)
	public String notice_site(Model model) {

		return "customer/notice_site";
	}
	@RequestMapping(value = "/customer/question_danger_ch1.do", method = RequestMethod.GET)
	public String question_danger_ch1(Model model) {

		return "customer/question_danger_ch1";
	}
	@RequestMapping(value = "/customer/question_mom_ch1.do", method = RequestMethod.GET)
	public String question_mom_ch1(Model model) {

		return "customer/question_mom_ch1";
	}
	@RequestMapping(value = "/customer/question_mom_ch2.do", method = RequestMethod.GET)
	public String question_mom_ch2(Model model) {

		return "customer/question_mom_ch2";
	}
	@RequestMapping(value = "/customer/question_mom.do", method = RequestMethod.GET)
	public String question_mom(Model model) {

		return "customer/question_mom";
	}
	@RequestMapping(value = "/customer/question_sitter_ch1.do", method = RequestMethod.GET)
	public String question_sitter_ch1(Model model) {

		return "customer/question_sitter_ch1";
	}
	@RequestMapping(value = "/customer/question_sitter_ch2.do", method = RequestMethod.GET)
	public String question_sitter_ch2(Model model) {

		return "customer/question_sitter_ch2";
	}
	@RequestMapping(value = "/customer/question_sitter.do", method = RequestMethod.GET)
	public String question_sitter(Model model) {

		return "customer/question_sitter";
	}
	@RequestMapping(value = "/customer/question_solution_ch1.do", method = RequestMethod.GET)
	public String question_solution_ch1(Model model) {

		return "customer/question_solution_ch1";
	}
	@RequestMapping(value = "/customer/sitter_activity.do", method = RequestMethod.GET)
	public String sitter_activity(Model model) {

		return "customer/sitter_activity";
	}
	@RequestMapping(value = "/customer/sitter_contract.do", method = RequestMethod.GET)
	public String sitter_contract(Model model) {

		return "customer/sitter_contract";
	}
	@RequestMapping(value = "/customer/sitter_epilogue.do", method = RequestMethod.GET)
	public String sitter_epilogue(Model model) {

		return "customer/sitter_epilogue";
	}
	@RequestMapping(value = "/customer/sitter_information.do", method = RequestMethod.GET)
	public String sitter_information(Model model) {

		return "customer/sitter_information";
	}
}
