package study.team.abuhae.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import study.team.abuhae.helper.WebHelper;
import study.team.abuhae.model.Admin_info;
import study.team.abuhae.service.AdminService;

@Controller
public class AdminController {
	//서비스주입
	@Autowired
	AdminService adminService;
	@Autowired
	WebHelper webHelper;
	@Value("#{servletContext.contextPath}")
    String contextPath;
	
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
	
	@RequestMapping(value = "/admin/admin_login_ok.do", method = RequestMethod.POST)
	public ModelAndView login_ok(Model model, HttpServletRequest request,
			@RequestParam(value = "adminid") String adminid,
			@RequestParam(value = "adminpw") String adminpw) {
		// session 객체 만들기
		HttpSession session = request.getSession();
		Admin_info admininfo = new Admin_info();
		admininfo.setAdminid(adminid);
		admininfo.setAdminpw(adminpw);
		
		//조회 결과
		Admin_info login = new Admin_info();
		
		try {
			login = adminService.getAdminLogin(admininfo);
			
			if (login != null) {
				// 조회된 데이터가 널이 아니라면 로그인 성공
				//session.setAttribute("islogin", output);
				session.setAttribute("isAdminLogin", true); // 로그인 여부 세션
				session.setAttribute("adminID", login.getAdminid()); // 로그인한 회원 id 세션
				session.setAttribute("Adminlogin", login);
		
			}
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		return new ModelAndView("admin/admin_member");
	}
	
	
	@RequestMapping(value = "/admin/admin_bbs_write.do", method = RequestMethod.GET)
	public String write(Model model) {

		return "admin/admin_bbs_write";
	}
}
