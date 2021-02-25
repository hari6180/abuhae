package study.team.abuhae.controllers;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import study.team.abuhae.helper.AgeHelper;
import study.team.abuhae.helper.RegexHelper;
import study.team.abuhae.helper.WebHelper;
import study.team.abuhae.model.Connect;
import study.team.abuhae.model.Heart;
import study.team.abuhae.model.Mom_info;
import study.team.abuhae.model.ProfileFile;
import study.team.abuhae.model.Report;
import study.team.abuhae.model.Sitter_info;
import study.team.abuhae.service.DetailService;
import study.team.abuhae.service.MemberService;
import study.team.abuhae.service.UploadService;

@Controller
public class Page_detail_momController {
	
	@Autowired
	DetailService detailService;
	@Autowired
	MemberService memberService;
	@Autowired
	UploadService uploadService;
	
	@Autowired
	WebHelper webHelper;
	@Autowired
	RegexHelper regexHelper;
	@Value("#{servletContext.contextPath}")
    String contextPath;
	
	// 맘 상세페이지
	@RequestMapping(value = "/page_detail/mom_detail.do", method = RequestMethod.GET)
	public ModelAndView mom_detail(Model model,
			@RequestParam(value = "momno", defaultValue = "0") int momno) {
		
			// 데이터 조회에 필요한 조건값을 Beans에 저장하기 
			Mom_info input = new Mom_info();
			ProfileFile input2 = new ProfileFile();
			input.setMomno(momno);
			input2.setMomno(momno);
			
			// 조회결과를 저장할 객체 선언 
			Mom_info output = null;
			ProfileFile output2 = null;
			
			try {
				// 데이터 조회 
				output = detailService.getMomItem(input);
				output2 = uploadService.getProfileItem(input2);
			
			} catch (Exception e) {
				e.printStackTrace();
			}
			model.addAttribute("output", output);
			model.addAttribute("profile", output2);
			return new ModelAndView("/page_detail/mom_page_detail/mom_detail");
			//return "/page_detail/mom_page_detail/mom_detail";
	}
	
		// 맘 상세페이지 > 인터뷰 페이지
		@RequestMapping(value = "/page_detail/mom_interview.do", method = RequestMethod.GET)
		public ModelAndView mom_interview(Model model,
				@RequestParam(value = "momno", defaultValue = "0") int momno,
				@RequestParam(value = "sitterno", defaultValue = "0") int sitterno) {
			
			// 데이터 조회에 필요한 조건값을 Beans에 저장하기 
			Mom_info input = new Mom_info();
			input.setMomno(momno);
			
			// 조회결과를 저장할 객체 선언 
			Mom_info output = null;
			
			Sitter_info siput = new Sitter_info();
			input.setMomno(sitterno);
			
			// 조회결과를 저장할 객체 선언 
			Sitter_info sioutput = null;
			
			try {
				// 데이터 조회 
				output = detailService.getMomItem(input);
				sioutput = detailService.getSitterItem(siput);
			
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			model.addAttribute("output", output);
			model.addAttribute("sioutput", sioutput);
			return new ModelAndView("/page_detail/mom_page_detail/mom_interview");
			//return "/page_detail/mom_page_detail/mom_interview";
	}
		
		// 맘 상세페이지 > 인터뷰하기 
		@RequestMapping(value = "/page_detail/mom_page_detail/mom_interview_ok.do", method = RequestMethod.POST)
		public ModelAndView interview_mom_ok(Model model,
				HttpServletResponse response,
				@RequestParam(value = "who", required = false) String who,
				@RequestParam(value = "momno", required = false) int momno,
				@RequestParam(value = "sitterno", required = false) int sitterno) {
			
			Connect input = new Connect();
			Sitter_info sitterput = new Sitter_info();
			input.setWho(who);
			input.setMomno(momno);
			input.setSitterno(sitterno);
			sitterput.setSitterno(sitterno);
			
			Sitter_info sitterinfo = null;
			
			try {
				sitterinfo = (Sitter_info) memberService.getSitterMember(sitterput);
						
			if (sitterinfo.getSubscribe() == 'N') {
				String redirectUrl = contextPath + "/page_detail/mom_detail.do?momno=" + input.getMomno();
				return webHelper.redirect(redirectUrl, "맘회원에게 지원하기 위해 이용권을 구매해주세요.");
			}
			detailService.addConnect(input);
			String redirectUrl = contextPath + "/page_detail/mom_detail.do?momno=" + input.getMomno();
			return webHelper.redirect(redirectUrl, "인터뷰 지원이 완료되었습니다.");
	
			} catch (Exception e) {
				return webHelper.redirect(null, e.getLocalizedMessage());
			}
			
			
			}
		}
		
		
		
		


