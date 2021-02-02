package study.team.abuhae.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class Page_detail_tabController {
	
	// 시터 상세페이지 > 실패 후기
	@RequestMapping(value = "/page_detail/sitter_page_detail/tab_faile.do", method = RequestMethod.GET)
	public String Tab_faile(Model model) {

		return "/page_detail/sitter_page_detail/tab_faile";
	}
	
	// 시터 상세페이지 > 매칭 후기
	@RequestMapping(value = "/page_detail/sitter_page_detail/tab_ok.do", method = RequestMethod.GET)
	public String Tab_ok(Model model) {

		return "/page_detail/sitter_page_detail/tab_ok";
	}
	
	// 시터 상세페이지 > 인터뷰 후기
	@RequestMapping(value = "/page_detail/sitter_page_detail/tab_interview.do", method = RequestMethod.GET)
	public String Tab_interview(Model model) {

		return "/page_detail/sitter_page_detail/tab_interview";
	}
	
}
