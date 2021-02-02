package study.team.abuhae.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminController {
	
	@RequestMapping(value = "/admin/admin_member.do", method = RequestMethod.GET)
	public String member(Model model) {

		return "admin/admin_member";
	}
	
	@RequestMapping(value = "/admin/admin_coupon.do", method = RequestMethod.GET)
	public String coupon(Model model) {

		return "admin/admin_coupon";
	}
	
	@RequestMapping(value = "/admin/admin_bbs_guide.do", method = RequestMethod.GET)
	public String guide(Model model) {

		return "admin/admin_bbs_guide";
	}
	
	@RequestMapping(value = "/admin/admin_bbs_mom_faq.do", method = RequestMethod.GET)
	public String mom_faq(Model model) {

		return "admin/admin_bbs_mom_faq";
	}
	
	@RequestMapping(value = "/admin/admin_bbs_notice.do", method = RequestMethod.GET)
	public String notice(Model model) {

		return "admin/admin_bbs_notice";
	}
	
	@RequestMapping(value = "/admin/admin_bbs_sitter_faq.do", method = RequestMethod.GET)
	public String sitter_faq(Model model) {

		return "admin/admin_bbs_sitter_faq";
	}
	
	@RequestMapping(value = "/admin/admin_leave.do", method = RequestMethod.GET)
	public String leave(Model model) {

		return "admin/admin_leave";
	}
	
	@RequestMapping(value = "/admin/admin_statistic.do", method = RequestMethod.GET)
	public String statistic(Model model) {

		return "admin/admin_statistic";
	}
	
	@RequestMapping(value = "/admin/admin_login.do", method = RequestMethod.GET)
	public String login(Model model) {

		return "admin/admin_login";
	}
	
	@RequestMapping(value = "/admin/admin_bbs_write.do", method = RequestMethod.GET)
	public String write(Model model) {

		return "admin/admin_bbs_write";
	}
}
