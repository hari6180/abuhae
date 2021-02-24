package study.team.abuhae.controllers;

import java.util.List;
import java.util.Locale;

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
import study.team.abuhae.model.ProfileFile;
import study.team.abuhae.model.Report;
import study.team.abuhae.model.Review;
import study.team.abuhae.model.Sitter_info;
import study.team.abuhae.service.UploadService;
import study.team.abuhae.service.impl.SitterMypageServiceImpl;

@Controller
public class SitterMypageController {
	@Autowired
	WebHelper webHelper;
	
	@Autowired
	RegexHelper regexHelper;
	
	@Autowired
	SitterMypageServiceImpl sitterMypageService;
	/** "/프로젝트이름"에 해당하는 ContextPath 변수 주입 */
	
	@Autowired
	UploadService uploadService;
	
	@Value("#{servletContext.contextPath}")
	String contextPath;
	
	/** mypage controller */
	@RequestMapping(value = "/mypage/mypage_sitter/sitter_mypage.do", method = RequestMethod.GET)
	public ModelAndView sitter_mypage(Model model,
			@RequestParam(value = "sitterno", defaultValue = "0") int sitterno) {
		/** 데이터 조회 */
		Sitter_info input = new Sitter_info();
		input.setSitterno(sitterno);
		
		Sitter_info output = null;
		
		try {
			output = sitterMypageService.getSitterItem(input);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		model.addAttribute("output", output);
		
		return new ModelAndView("mypage/mypage_sitter/sitter_mypage");
	}
	
	
	
	/** 비밀번호 변경 페이지 */
	@RequestMapping(value = "/mypage/mypage_sitter/update_password.do", method = RequestMethod.GET)
	public ModelAndView update_password_sitter(Model model, HttpSession session,
			@RequestParam(value = "memberno", defaultValue = "0") int memberno) {

		   /** 1) 파라미터 유효성 검사 */
	      if (memberno == 0) {
	         return webHelper.redirect(null, "회원번호가 없습니다.");
	      }
	      
	      /** 2) 데이터 조회하기 */
	      Sitter_info input = new Sitter_info();
	      input.setMemberno(memberno);
	      
	      // 조회 결과 저장
	      Sitter_info output = null;
	      
	      try {
	         output = sitterMypageService.getSitterMember(input);
	      } catch (Exception e) {
	         return webHelper.redirect(null, e.getLocalizedMessage());
	      }
		
		return new ModelAndView("mypage/mypage_sitter/update_password");
	}
	
	/** 비밀번호 변경 페이지 */
	   @RequestMapping(value = "/mypage/mypage_sitter/update_passwordOk.do", method = RequestMethod.POST)
	   public ModelAndView update_passwordOK(Model model, HttpSession session,
	         @RequestParam(value = "memberno", defaultValue = "0") int memberno,
	         @RequestParam(value = "now_pw", defaultValue = "") String oldpassword,
	         @RequestParam(value = "new_pw", defaultValue = "") String newpassword) {

	      /** 1) 파라미터 유효성 검사 */
	      if (memberno == 0) {
	         return webHelper.redirect(null, "no exist membernumber.");
	      }
	      if(oldpassword=="" || oldpassword==null) {
	         return webHelper.redirect(null, "input your now password.");
	      }
	      if(newpassword=="" || newpassword==null) {
	         return webHelper.redirect(null, "input your new password.");
	      }
	      
	      /** 2) 데이터 조회하기 */
	      Sitter_info input = new Sitter_info();
	      input.setMemberno(memberno);
	      input.setPassword(oldpassword);
	      
	      // 조회 결과 저장
	      int bigyo =0;
	      //새로운 비밀번호 저장할 객체 
	      Sitter_info newpw = new Sitter_info();
	      newpw.setPassword(newpassword);
	      newpw.setMemberno(memberno);
	      
	      try {
	         //현재 비밀번호 조회
	         bigyo = sitterMypageService.bigyoSitterPassword(input);
	         
	         if(bigyo==0) {
	            return webHelper.redirect(null, "checking your current password!");
	         }
	         //현재 비밀번호와 일치하면 새로운 비밀번호로 업데이트
	         sitterMypageService.updatSitterePassword(newpw);
	         
	         
	         
	      } catch (Exception e) {
	         return webHelper.redirect(null, e.getLocalizedMessage());
	      }
	      
	      /** 3) View 처리 */
	      String url = contextPath+"/mypage/mypage_sitter/manage_account.do?&memberno="+memberno;
	      return webHelper.redirect(url, "Success change Password");
	   }
	
	/** 내 구직 현황 페이지 */
	@RequestMapping(value = "/mypage/mypage_sitter/get_mom_mps.do", method = RequestMethod.GET)
	public ModelAndView get_mom(Model model,
			@RequestParam(value = "sitterno", defaultValue = "0") int sitterno) {
		/** 데이터 조회 */
		Sitter_info in = new Sitter_info();
		in.setSitterno(sitterno);
		
		Sitter_info out = null;
		
		try {
			out = sitterMypageService.getSitterItem(in);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		model.addAttribute("out", out);
		

		
		/** 데이터 조회 */
		Connect input = new Connect();
		input.setSitterno(sitterno);
		
		List<Connect> output = null;
		
		try {
			output = sitterMypageService.getConnectList(input);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		model.addAttribute("output", output);
		
		List<Connect> output2 = null;
		
		try {
			output2 = sitterMypageService.getSitterApplyList(input);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		model.addAttribute("output2", output2);
		
		return new ModelAndView("mypage/mypage_sitter/get_mom_mps");
	}
	
	/** 내 구직현황 - 거절 페이지 */
	@RequestMapping(value = "/mypage/mypage_sitter/reason_deny.do", method = RequestMethod.GET)
	public String reason_deny(Locale locale, Model model) {

		return "mypage/mypage_sitter/reason_deny";
	}
	
	/** 찜한 일자리 페이지 */
	@RequestMapping(value = "/mypage/mypage_sitter/like_mom_mps.do", method = RequestMethod.GET)
	public ModelAndView like_mom(Model model,
			@RequestParam(value = "sitterno", defaultValue = "0") int sitterno) {
		/** 데이터 조회 */
		Sitter_info in = new Sitter_info();
		in.setSitterno(sitterno);
		
		Sitter_info out = null;
		
		try {
			out = sitterMypageService.getSitterItem(in);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		/** 데이터 조회 */
		Heart input = new Heart();
		input.setSitterno(sitterno);
		
		List<Heart> output = null;
		
		try {
			output = sitterMypageService.getSitterHeartList(input);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		model.addAttribute("out", out);
		model.addAttribute("output", output);

		return new ModelAndView("mypage/mypage_sitter/like_mom_mps");
	}
	
	/** 내 프로필 수정 페이지 */
	/**@RequestMapping(value = "/mypage/mypage_sitter/update_sitter_profile.do", method = RequestMethod.GET)
	public ModelAndView update_profile(Model model,
			@RequestParam(value = "sitterno", defaultValue = "0") int sitterno) {

		return new ModelAndView("mypage/mypage_sitter/update_sitter_profile");
	} */
	
	/** 내 적립금 페이지 */
	@RequestMapping(value = "/mypage/mypage_sitter/fund.do", method = RequestMethod.GET)
	public String fund_sitter(Locale locale, Model model) {

		return "mypage/mypage_sitter/fund";
	}
	
	/** 내 쿠폰함 페이지 */
	@RequestMapping(value = "/mypage/mypage_sitter/coupon.do", method = RequestMethod.GET)
	public ModelAndView coupon_sitter(Model model,
			@RequestParam(value = "sitterno", defaultValue = "1") int sitterno) {

		/** 데이터 조회 */
		Sitter_info in = new Sitter_info();
		in.setSitterno(sitterno);
		
		Sitter_info out = null;
		
		try {
			out = sitterMypageService.getSitterItem(in);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		/** 데이터 조회 */
		Coupon input = new Coupon();
		input.setSitterno(sitterno);
		
		List<Coupon> output = null;
		
		try {
			output = sitterMypageService.getSitterCouponList(input);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		model.addAttribute("out", out);
		model.addAttribute("output", output);
		
		return new ModelAndView("mypage/mypage_sitter/coupon");
	}
	
	/** 리뷰관리 페이지 */
	@RequestMapping(value = "/mypage/mypage_sitter/review.do", method = RequestMethod.GET)
	public ModelAndView review_sitter(Model model,
			@RequestParam(value = "sitterno", defaultValue = "0") int sitterno) {
		/** 데이터 조회 */
		Sitter_info in = new Sitter_info();
		in.setSitterno(sitterno);
		
		Sitter_info out = null;
		
		try {
			out = sitterMypageService.getSitterItem(in);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		/** 데이터 조회 */
		Review input = new Review();
		input.setSitterno(sitterno);
		
		List<Review> output = null;
		
		try {
			output = sitterMypageService.getSitterReviewList(input);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		model.addAttribute("out", out);
		model.addAttribute("output", output);

		return new ModelAndView("mypage/mypage_sitter/review");
	}
	
	/** 내 인증 페이지 */
	@RequestMapping(value = "/mypage/mypage_sitter/certify.do", method = RequestMethod.GET)
	public String certify(Locale locale, Model model) {

		return "mypage/mypage_sitter/certify";
	}
	
	/** 내 인증 - 등초본 페이지 */
	@RequestMapping(value = "/mypage/mypage_sitter/certify_resident.do", method = RequestMethod.GET)
	public String certify_resident(Locale locale, Model model) {

		return "mypage/mypage_sitter/certify_resident";
	}
	
	/** 내 맘시터 채용 내역 페이지 */
	@RequestMapping(value = "/mypage/mypage_sitter/count_mom_mps.do", method = RequestMethod.GET)
	public ModelAndView count_sitter(Model model,
			@RequestParam(value = "sitterno", defaultValue = "0") int sitterno) {
		/** 데이터 조회 */
		Sitter_info in = new Sitter_info();
		in.setSitterno(sitterno);
		
		Sitter_info out = null;
		
		try {
			out = sitterMypageService.getSitterItem(in);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		/** 데이터 조회 */
		Connect input = new Connect();
		input.setSitterno(sitterno);
		
		List<Connect> output = null;
		
		try {
			output = sitterMypageService.getSitterWorkList(input);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		model.addAttribute("out", out);
		model.addAttribute("output", output);
		
		return new ModelAndView("mypage/mypage_sitter/count_mom_mps");
	}
	
	/** 신고내역 페이지 */
	@RequestMapping(value = "/mypage/mypage_sitter/sue.do", method = RequestMethod.GET)
	public ModelAndView sue_sitter(Model model,
			@RequestParam(value = "sitterno", defaultValue = "0") int sitterno) {

		/** 데이터 조회 */
		Sitter_info in = new Sitter_info();
		in.setSitterno(sitterno);
		
		Sitter_info out = null;
		
		try {
			out = sitterMypageService.getSitterItem(in);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		/** 데이터 조회 */
		Report input = new Report();
		input.setSitterno(sitterno);
		
		List<Report> output = null;
		
		try {
			output = sitterMypageService.getSitterReprotList(input);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		model.addAttribute("out", out);
		model.addAttribute("output", output);
		
		return new ModelAndView("mypage/mypage_sitter/sue");
	}
	
	/** 결제내역 페이지 */
	@RequestMapping(value = "/mypage/mypage_sitter/payment_list.do", method = RequestMethod.GET)
	public String payment_list_sitter(Locale locale, Model model) {

		return "mypage/mypage_sitter/payment_list";
	}
	
	/** 계정관리 페이지 */
	@RequestMapping(value = "/mypage/mypage_sitter/manage_account.do", method = RequestMethod.GET)
	public ModelAndView manage_account_sitter(Model model,
			@RequestParam(value = "memberno", defaultValue = "0") int memberno) {

		if(memberno ==0 ) {
	         webHelper.getJsonWarning("You cannot check your phone number without member number");
	      }
	      
	      //데이터 조회
	      Sitter_info input = new Sitter_info();
	      input.setMemberno(memberno);
	      
	      //데이터 저장 
	      Sitter_info output = null;
	      
	      try {
	         output = sitterMypageService.getSitterMember(input);
	      } catch (Exception e) {
	         return webHelper.redirect(null, e.getLocalizedMessage());
	      }
	      
	      //데이터 출력
	      model.addAttribute("output", output);
	      
		return new ModelAndView("mypage/mypage_sitter/manage_account");
	}
	
	   
   @RequestMapping(value = "/mypage/updateSitterPhone.do", method = RequestMethod.POST)
   public ModelAndView updatePhone(Model model,
         @RequestParam(value = "memberno", defaultValue = "0") int memberno,
         @RequestParam(value = "phone", defaultValue = "") String phone) {
      if(memberno ==0 ) {
         webHelper.redirect(null, "You cannot access without your member number");
      }
      if(phone =="" || phone==null ) {
         webHelper.redirect(null, "Please write your new phone number");
      }
      
      //데이터 조회
      Sitter_info input = new Sitter_info();
      input.setMemberno(memberno);
      input.setPhone(phone);
      
      Sitter_info output = null;
      
      try {
         sitterMypageService.editSitterPhone(input);
         output = sitterMypageService.getSitterMember(input);
         
      } catch (Exception e) {
         return webHelper.redirect(null, e.getLocalizedMessage());
      }
      
      String url = contextPath+"/mypage/mypage_sitter/manage_account.do?&memberno="+output.getMemberno();
      
      return webHelper.redirect(url, null);
   }
   
   
   @RequestMapping(value = "/mypage/updateSitterEmail.do", method = RequestMethod.POST)
   public ModelAndView updateMemberPhone(Model model,
         @RequestParam(value = "memberno", defaultValue = "0") int memberno,
         @RequestParam(value = "email", defaultValue = "") String email) {
      if(memberno ==0 ) {
         webHelper.redirect(null, "You cannot access without your member number");
      }
      if(email =="" || email==null ) {
         webHelper.redirect(null, "Please write your new email");
      }
      
      //데이터 조회
      Sitter_info input = new Sitter_info();
      input.setMemberno(memberno);
      input.setEmail(email);
      
      Sitter_info output = null;
      
      try {
         sitterMypageService.editSitterEmail(input);
         output = sitterMypageService.getSitterMember(input);
         
      } catch (Exception e) {
         return webHelper.redirect(null, e.getLocalizedMessage());
      }
      
      String url = contextPath+"/mypage/sitter_mom/manage_account.do?&memberno="+output.getMemberno();
      
      return webHelper.redirect(url, null);
   }
	
	/** 회원탈퇴 페이지 */
	@RequestMapping(value = "/mypage/mypage_sitter/leave_abu.do", method = RequestMethod.GET)
	public String leave_abu_sitter(Locale locale, Model model) {

		return "mypage/mypage_sitter/leave_abu";
	}
	
	/** 이용동의 페이지 */
	@RequestMapping(value = "/mypage/mypage_sitter/agree_service.do", method = RequestMethod.GET)
	public String agree_sitter(Locale locale, Model model) {

		return "mypage/mypage_sitter/agree_service";
	}
}
