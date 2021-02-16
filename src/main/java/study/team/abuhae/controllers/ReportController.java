package study.team.abuhae.controllers;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import study.team.abuhae.model.Sitter_info;
import study.team.abuhae.service.DetailService;

@Controller
public class ReportController {
	
		@Autowired
		DetailService detailService;
	
		// 맘 신고 페이지
		@RequestMapping(value = "/page_detail/mom_page_detail/mom_report.do", method = RequestMethod.GET)
		public String report_mom(Model model) {

			return "/page_detail/mom_page_detail/mom_report";
		}
		
		// 시터 신고 페이지
		@RequestMapping(value = "/page_detail/sitter_page_detail/sitter_report.do", method = RequestMethod.GET)
		public String report_sitter(Model model, HttpServletResponse response,
				@RequestParam(value = "sitterno", defaultValue = "0") int sitterno) {
			
			// 데이터 조회에 필요한 조건값을 Beans에 저장하기 
			Sitter_info input = new Sitter_info();
			input.setSitterno(sitterno);
			
			// 조회결과를 저장할 객체 선언 
			Sitter_info output = null;
			
			try {
				// 데이터 조회 
				output = detailService.getSitterItem(input);
			
			} catch (Exception e) {
				e.printStackTrace();
			}
			model.addAttribute("output", output);
			return "/page_detail/sitter_page_detail/sitter_report";
		}
}
