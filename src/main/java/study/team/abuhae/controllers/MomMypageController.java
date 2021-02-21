package study.team.abuhae.controllers;

import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import study.team.abuhae.helper.RegexHelper;
import study.team.abuhae.helper.WebHelper;
import study.team.abuhae.model.Connect;
import study.team.abuhae.model.Coupon;
import study.team.abuhae.model.Heart;
import study.team.abuhae.model.Mom_info;
import study.team.abuhae.model.Report;
import study.team.abuhae.model.Review;
import study.team.abuhae.model.Sitter_info;
import study.team.abuhae.service.MomMypageService;

@Controller
public class MomMypageController {
	@Autowired
	MomMypageService momMypageService;
	@Autowired WebHelper webHelper;
	@Autowired RegexHelper regexHelper;
	@Value("#{servletContext.contextPath}")
	String contextPath;
	
	/** mypage controller */
	@RequestMapping(value = "/mypage/mypage_mom/mom_mypage.do", method = RequestMethod.GET)
	public String mom_mypage(Model model,HttpServletResponse response, HttpServletRequest request,
			@RequestParam(value = "momno") int momno) {
		// 데이터 조회에 필요한 조건값 Beans에 저장
		Mom_info input = new Mom_info();
		input.setMomno(momno);
		
		// 조회 결과를 저장할 객체 선언
		Mom_info output = null;
		
		try {
			output = momMypageService.getMemberItem(input);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		// View 처리 
		model.addAttribute("output" ,output);
		
		return "mypage/mypage_mom/mom_mypage";
	}
	
	/** 비밀번호 변경 페이지 */
	@RequestMapping(value = "/mypage/mypage_mom/update_password.do", method = RequestMethod.GET)
	public ModelAndView update_password_mom(Model model, HttpSession session,
			@RequestParam(value = "memberno", defaultValue = "0") int memberno) {

		/** 1) 파라미터 유효성 검사 */
		if (memberno == 0) {
			return webHelper.redirect(null, "회원번호가 없습니다.");
		}
		
		/** 2) 데이터 조회하기 */
		Mom_info input = new Mom_info();
		input.setMemberno(memberno);
		
		// 조회 결과 저장
		Mom_info output = null;
		
		try {
			output = momMypageService.getMemberItem(input);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		/** 3) View 처리 */
		
		return new ModelAndView("mypage/mypage_mom/update_password");
	}
	
	@RequestMapping(value = "/mypage/mypage_mom/update_password_ok.do", method = RequestMethod.POST)
	public ModelAndView update_password_mom_ok(Model model, HttpSession session
		) {
		//String redirectUrl = contextPath + "/mypage/mypage_mom/mom_mypage.do?memberno=" + input.getMemberno();
		//return webHelper.redirect(redirectUrl, "비밀번호가 수정되었습니다.");
	return new ModelAndView("mypage/mypage_mom/update_password_ok");
	}
	
	/** 내 구인 현황 페이지 */
	@RequestMapping(value = "/mypage/mypage_mom/get_sitter_mpm.do", method = RequestMethod.GET)
	public ModelAndView get_sitter(Model model) {

		
		return new ModelAndView("mypage/mypage_mom/get_sitter_mpm");
	}
	
	/** 찜한 맘시터 페이지 */
	@RequestMapping(value = "/mypage/mypage_mom/like_sitter_mpm.do", method = RequestMethod.GET)
	public ModelAndView like_sitter(Model model,  HttpSession session,
			@RequestParam(value = "momno", defaultValue = "0") int momno) {
		// 데이터 조회에 필요한 조건값 Beans에 저장
		Mom_info in = new Mom_info();
		in.setMomno(momno);
		
		// 조회 결과를 저장할 객체 선언
		Mom_info out = null;
		
		try {
			out = momMypageService.getMemberItem(in);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		// View 처리 
		model.addAttribute("out" ,out);
		
		/** 데이터 조회 */
		Heart input = new Heart();
		input.setMomno(momno);
		
		/** 후기 작성할 수 있는 회원 목록*/
		List<Heart> output = null;
		
		try {
			output = momMypageService.getHeartList(input);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		model.addAttribute("output", output);

		return new ModelAndView("mypage/mypage_mom/like_sitter_mpm");
	}
	
	/** 내 신청서 수정 페이지 */
	@RequestMapping(value = "/mypage/mypage_mom/update_appl.do", method = RequestMethod.GET)
	public String update_appl(Model model, HttpServletResponse response,
			@RequestParam(value = "momno") int momno) {

		// 데이터 조회에 필요한 조건값 Beans에 저장
		Mom_info input = new Mom_info();
		input.setMomno(momno);
		
		// 조회 결과를 저장할 객체 선언
		Mom_info output = null;
		
		try {
			output = momMypageService.getMemberItem(input);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		// View 처리 
		model.addAttribute("output" ,output);

		return "mypage/mypage_mom/update_appl";
	}
	
	/** 내 쿠폰함 페이지 */
	@RequestMapping(value = "/mypage/mypage_mom/coupon.do", method = RequestMethod.GET)
	public ModelAndView coupon_mom(Model model, HttpServletResponse response,
			@RequestParam(value = "momno") int momno) {
		Mom_info in = new Mom_info();
		in.setMomno(momno);
		
		// 조회 결과를 저장할 객체 선언
		Mom_info out = null;
		
		try {
			out = momMypageService.getMemberItem(in);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		// View 처리 
		model.addAttribute("out" ,out);
		
		/** 데이터 조회 */
		Coupon input = new Coupon();
		input.setMomno(momno);
		
		/** 후기 작성할 수 있는 회원 목록*/
		List<Coupon> output = null;
		
		try {
			output = momMypageService.getCouponList(input);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		model.addAttribute("output", output);

		return new ModelAndView("mypage/mypage_mom/coupon");
	}
	
	/** 후기 관리 페이지 */
	@RequestMapping(value = "/mypage/mypage_mom/review.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView review_mom(Model model,
			@RequestParam(value = "momno", defaultValue = "0") int momno,
			@RequestParam(value = "sitterno", defaultValue = "0") int sitterno) {
		// 데이터 조회에 필요한 조건값 Beans에 저장
		Mom_info in = new Mom_info();
		in.setMomno(momno);
		
		// 조회 결과를 저장할 객체 선언
		Mom_info output = null;
		
		try {
			output = momMypageService.getMemberItem(in);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		// View 처리 
		model.addAttribute("output" ,output);

		/** 데이터 조회 */
		Review input = new Review();
		input.setMomno(momno);
		
		/** 후기 작성할 수 있는 회원 목록*/
		List<Review> output1 = null;
		
		try {
			output1 = momMypageService.getReviewMemberList(input);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		/** 작성한 후기 목록 */
		List<Review> output2 = null;
		
		try {
			output2 = momMypageService.getReviewList(input);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		/** View 출력 */
		model.addAttribute("output1", output1);
		model.addAttribute("output2", output2);
		
		return new ModelAndView("mypage/mypage_mom/review");
	}
	
	/** 내 채용내역 페이지 */
	@RequestMapping(value = "/mypage/mypage_mom/count_mom_mps.do", method = RequestMethod.GET)
	public ModelAndView count_mom(Model model, HttpServletResponse response,
			@RequestParam(value = "momno") int momno) {

		// 데이터 조회에 필요한 조건값 Beans에 저장
		Mom_info in = new Mom_info();
		in.setMomno(momno);
		
		// 조회 결과를 저장할 객체 선언
		Mom_info out = null;
		
		try {
			out = momMypageService.getMemberItem(in);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		// View 처리 
		model.addAttribute("out" ,out);
		
		/** 데이터 조회 */
		Connect input = new Connect();
		input.setMomno(momno);
		
		/** 후기 작성할 수 있는 회원 목록*/
		List<Connect> output = null;
		
		try {
			output = momMypageService.getWorkList(input);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		model.addAttribute("output", output);

		return new ModelAndView("mypage/mypage_mom/count_mom_mps");
	}
	
	/** 신고 내역 페이지 */
	@RequestMapping(value = "/mypage/mypage_mom/sue.do", method = RequestMethod.GET)
	public ModelAndView sue_mom(Model model, HttpServletResponse response,
			@RequestParam(value = "momno") int momno) {
		// 데이터 조회에 필요한 조건값 Beans에 저장
		Mom_info in = new Mom_info();
		in.setMomno(momno);
		
		// 조회 결과를 저장할 객체 선언
		Mom_info out = null;
		
		try {
			out = momMypageService.getMemberItem(in);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		// View 처리 
		model.addAttribute("out" ,out);
		
		/** 데이터 조회 */
		Report input = new Report();
		input.setMomno(momno);
		
		/** 후기 작성할 수 있는 회원 목록*/
		List<Report> output = null;
		
		try {
			output = momMypageService.getReprotList(input);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		model.addAttribute("output", output);

		
		return new ModelAndView("mypage/mypage_mom/sue");
	}
	
	/** 결제 내역 페이지 */
	@RequestMapping(value = "/mypage/mypage_mom/payment_list.do", method = RequestMethod.GET)
	public ModelAndView payment_list_mom(Model model, HttpServletResponse response,
			@RequestParam(value = "momno") int momno) {
		/** 데이터 조회 */
		Mom_info input = new Mom_info();
		input.setMomno(momno);
		
		/** 후기 작성할 수 있는 회원 목록*/
		Mom_info output = null;
		
		try {
			output = momMypageService.getBuyList(input);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		model.addAttribute("output", output);
		
		return new ModelAndView("mypage/mypage_mom/payment_list");
	}
	
	/** 계정관리 페이지 */
	@RequestMapping(value = "/mypage/mypage_mom/manage_account.do", method = RequestMethod.GET)
	public String manage_account_mom(Locale locale, Model model) {

		return "mypage/mypage_mom/manage_account";
	}
	
	/** 회원탈퇴 신청 페이지 */
	@RequestMapping(value = "/mypage/mypage_mom/leave_abu.do", method = RequestMethod.GET)
	public String leave_mom(Locale locale, Model model) {

		return "mypage/mypage_mom/leave_abu";
	}
	
	/** 아부해 서비스 이용 동의 페이지 */
	@RequestMapping(value = "/mypage/mypage_mom/agree_service.do", method = RequestMethod.GET)
	public String agree_mom(Locale locale, Model model) {

		return "mypage/mypage_mom/agree_service";
	}
}
