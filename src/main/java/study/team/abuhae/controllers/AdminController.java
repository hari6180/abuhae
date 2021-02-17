package study.team.abuhae.controllers;

import java.util.List;

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

import study.team.abuhae.helper.PageData;
import study.team.abuhae.helper.WebHelper;
import study.team.abuhae.model.Admin_info;
import study.team.abuhae.model.Leave_member;
import study.team.abuhae.model.Member;
import study.team.abuhae.model.Mom_info;
import study.team.abuhae.model.Report;
import study.team.abuhae.service.AdminService;
import study.team.abuhae.service.MemberService;

@Controller
public class AdminController {
	//서비스주입
	@Autowired
	AdminService adminService;
	@Autowired
	MemberService memberServcie;
	@Autowired
	WebHelper webHelper;
	@Value("#{servletContext.contextPath}")
    String contextPath;
	
	@RequestMapping(value = "/admin/admin_member.do", method = RequestMethod.GET)
	public ModelAndView member(Model model,
			//회원 검색 조건 -> 회원타입
			@RequestParam(value = "type", required = false) String type,
			@RequestParam(value = "page", defaultValue = "1") int nowPage
			) {
		/** 1) 페이지 구현에 필요한 변수값 생성 */
        int totalCount = 0;              // 전체 게시글 수
        int listCount  = 10;             // 한 페이지당 표시할 목록 수
        int pageCount  = 5;              // 한 그룹당 표시할 페이지 번호 수

        /** 2) 데이터 조회하기 */
        // 조회에 필요한 조건값(검색어)를 Beans에 담는다.
        Mom_info input = new Mom_info();
        input.setName(type);

        List<Mom_info> output = null;   // 조회결과가 저장될 객체
        PageData pageData = null;        // 페이지 번호를 계산한 결과가 저장될 객체

        try {
            // 전체 게시글 수 조회
            totalCount = memberServcie.getMomCount(input);
            // 페이지 번호 계산 --> 계산결과를 로그로 출력될 것이다.
            pageData = new PageData(nowPage, totalCount, listCount, pageCount);

            // SQL의 LIMIT절에서 사용될 값을 Beans의 static 변수에 저장
            Member.setOffset(pageData.getOffset());
            Member.setListCount(pageData.getListCount());
            
            // 데이터 조회하기
            output = memberServcie.getMomList(input);
        } catch (Exception e) {
            return webHelper.redirect(null, e.getLocalizedMessage());
        }

        /** 3) View 처리 */
        model.addAttribute("output", output);
        model.addAttribute("pageData", pageData);

        return new ModelAndView("admin/admin_member");
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
	public ModelAndView leave(Model model,
			@RequestParam(value = "page", defaultValue = "1") int nowPage) {
		/** 1) 페이지 구현에 필요한 변수값 생성 */
        int totalCount = 0;              // 전체 게시글 수
        int listCount  = 10;             // 한 페이지당 표시할 목록 수
        int pageCount  = 5;              // 한 그룹당 표시할 페이지 번호 수

        /** 2) 데이터 조회하기 */
        // 조회에 필요한 조건값(검색어)를 Beans에 담는다.
        Leave_member input = new Leave_member();

        List<Leave_member> output = null;   // 조회결과가 저장될 객체
        PageData pageData = null;        // 페이지 번호를 계산한 결과가 저장될 객체

        try {
            // 전체 게시글 수 조회
            totalCount = adminService.getLeaveCount(input);
            // 페이지 번호 계산 --> 계산결과를 로그로 출력될 것이다.
            pageData = new PageData(nowPage, totalCount, listCount, pageCount);

            // SQL의 LIMIT절에서 사용될 값을 Beans의 static 변수에 저장
            Member.setOffset(pageData.getOffset());
            Member.setListCount(pageData.getListCount());
            
            // 데이터 조회하기
            output = adminService.getLeaveList(input);
        } catch (Exception e) {
            return webHelper.redirect(null, e.getLocalizedMessage());
        }

        /** 3) View 처리 */
        model.addAttribute("output", output);
        model.addAttribute("pageData", pageData);

        return new ModelAndView("admin/admin_leave");
		//return "admin/admin_leave";
	}
	@RequestMapping(value = "/admin/admin_singo.do", method = RequestMethod.GET)
	public ModelAndView singo(Model model,
			//회원 검색 조건 -> 회원타입
			@RequestParam(value = "who", defaultValue = "M") String who,
			@RequestParam(value = "page", defaultValue = "1") int nowPage) {
		/** 1) 페이지 구현에 필요한 변수값 생성 */
        int totalCount = 0;              // 전체 게시글 수
        int listCount  = 10;             // 한 페이지당 표시할 목록 수
        int pageCount  = 5;              // 한 그룹당 표시할 페이지 번호 수

        /** 2) 데이터 조회하기 */
        // 조회에 필요한 조건값(검색어)를 Beans에 담는다.
        Report input = new Report();
        input.setWho(who);

        List<Mom_info> output = null;   // 조회결과가 저장될 객체
        PageData pageData = null;        // 페이지 번호를 계산한 결과가 저장될 객체

        try {
            // 전체 게시글 수 조회
            totalCount = adminService.getReportCount(input);
            // 페이지 번호 계산 --> 계산결과를 로그로 출력될 것이다.
            pageData = new PageData(nowPage, totalCount, listCount, pageCount);

            // SQL의 LIMIT절에서 사용될 값을 Beans의 static 변수에 저장
            Member.setOffset(pageData.getOffset());
            Member.setListCount(pageData.getListCount());
            
            // 데이터 조회하기
            output = adminService.getReportList(input);
        } catch (Exception e) {
            return webHelper.redirect(null, e.getLocalizedMessage());
        }

        /** 3) View 처리 */
        model.addAttribute("output", output);
        model.addAttribute("pageData", pageData);

        return new ModelAndView("admin/admin_singo");
		//return "admin/admin_singo";
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
		
		//return new ModelAndView("admin/admin_member");
		return webHelper.redirect("admin_member.do", null);
	}
	
	
	@RequestMapping(value = "/admin/admin_bbs_write.do", method = RequestMethod.GET)
	public String write(Model model) {

		return "admin/admin_bbs_write";
	}
}
