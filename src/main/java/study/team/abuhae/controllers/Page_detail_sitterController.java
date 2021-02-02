package study.team.abuhae.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class Page_detail_sitterController {
	
	// 시터 상세페이지
	@RequestMapping(value = "/page_detail/sitter_page_detail/sitter_page_detail_for_mom_interview.do", method = RequestMethod.GET)
	public String sitter_detail(Model model) {

		return "/page_detail/sitter_page_detail/sitter_page_detail_for_mom_interview";
	}

}
