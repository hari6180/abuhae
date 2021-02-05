package study.team.abuhae.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ReportController {
		// 맘 신고 페이지
		@RequestMapping(value = "/page_detail/mom_page_detail/mom_report.do", method = RequestMethod.GET)
		public String report_mom(Model model) {

			return "/page_detail/mom_page_detail/mom_report";
		}
		
		// 시터 신고 페이지
		@RequestMapping(value = "/page_detail/sitter_page_detail/sitter_report.do", method = RequestMethod.GET)
		public String report_sitter(Model model) {

			return "/page_detail/sitter_page_detail/sitter_report";
		}
}
