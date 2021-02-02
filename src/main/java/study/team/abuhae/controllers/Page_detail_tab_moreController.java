package study.team.abuhae.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class Page_detail_tab_moreController {
	
	// 시터 상세페이지 > 후기 더보기
	@RequestMapping(value = "/page_detail/sitter_page_detail/tab_more.do", method = RequestMethod.GET)
	public String tab_more(Model model) {

		return "/page_detail/sitter_page_detail/tab_more";
	}
	
	// 시터 상세페이지 > 후기 더보기 > 실패 후기 (전체)
	@RequestMapping(value = "/page_detail/sitter_page_detail/tab_faile_more.do", method = RequestMethod.GET)
	public String tab_more_faile(Model model) {

		return "/page_detail/sitter_page_detail/tab_faile_more";
	}
	
	// 시터 상세페이지 > 후기 더보기 > 매칭 후기 (전체)
	@RequestMapping(value = "/page_detail/sitter_page_detail/tab_ok_more.do", method = RequestMethod.GET)
	public String tab_more_ok(Model model) {

		return "/page_detail/sitter_page_detail/tab_ok_more";
	}
	
	// 시터 상세페이지 > 후기 더보기 > 인터뷰 후기 (전체)
	@RequestMapping(value = "/page_detail/sitter_page_detail/tab_interview_more.do", method = RequestMethod.GET)
	public String tab_more_interview(Model model) {

		return "/page_detail/sitter_page_detail/tab_interview_more";
	}
}
