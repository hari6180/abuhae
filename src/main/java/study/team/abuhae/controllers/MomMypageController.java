package study.team.abuhae.controllers;

import java.util.Locale;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import study.team.abuhae.model.Mom_info;
import study.team.abuhae.service.MomMypageService;

@Controller
public class MomMypageController {
	@Autowired
	MomMypageService momMypageService;
	
	/** mypage controller */
	@RequestMapping(value = "/mypage/mypage_mom/mom_mypage.do", method = RequestMethod.GET)
	public String mom_mypage(Model model, HttpServletResponse response,
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
	public String update_password_mom(Locale locale, Model model) {

		return "mypage/mypage_mom/update_password";
	}
	
	
	/** 내 구인 현황 페이지 */
	@RequestMapping(value = "/mypage/mypage_mom/get_sitter_mpm.do", method = RequestMethod.GET)
	public String get_sitter(Locale locale, Model model) {

		return "mypage/mypage_mom/get_sitter_mpm";
	}
	
	/** 찜한 맘시터 페이지 */
	@RequestMapping(value = "/mypage/mypage_mom/like_sitter_mpm.do", method = RequestMethod.GET)
	public String like_sitter(Locale locale, Model model) {

		return "mypage/mypage_mom/like_sitter_mpm";
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
	
	/** 내 적립금 페이지 */
	@RequestMapping(value = "/mypage/mypage_mom/fund.do", method = RequestMethod.GET)
	public String fund_mom(Locale locale, Model model) {

		return "mypage/mypage_mom/fund";
	}
	
	/** 내 쿠폰함 페이지 */
	@RequestMapping(value = "/mypage/mypage_mom/coupon.do", method = RequestMethod.GET)
	public String coupon_mom(Locale locale, Model model) {

		return "mypage/mypage_mom/coupon";
	}
	
	/** 후기 관리 페이지 */
	@RequestMapping(value = "/mypage/mypage_mom/review.do", method = RequestMethod.GET)
	public String review_mom(Locale locale, Model model) {

		return "mypage/mypage_mom/review";
	}
	
	/** 내 채용내역 페이지 */
	@RequestMapping(value = "/mypage/mypage_mom/count_mom_mps.do", method = RequestMethod.GET)
	public String count_mom(Locale locale, Model model) {

		return "mypage/mypage_mom/count_mom_mps";
	}
	
	/** 신고 내역 페이지 */
	@RequestMapping(value = "/mypage/mypage_mom/sue.do", method = RequestMethod.GET)
	public String sue_mom(Locale locale, Model model) {

		return "mypage/mypage_mom/sue";
	}
	
	/** 결제 내역 페이지 */
	@RequestMapping(value = "/mypage/mypage_mom/payment_list.do", method = RequestMethod.GET)
	public String payment_list_mom(Locale locale, Model model) {

		return "mypage/mypage_mom/payment_list";
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
