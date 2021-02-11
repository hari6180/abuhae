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
public class Page_detail_sitterController {
	
	@Autowired
	DetailService detailService;
	
	// 시터 상세페이지
	@RequestMapping(value = "/page_detail/sitter_page_detail/sitter_page_detail_for_mom_interview.do", method = RequestMethod.GET)
	public String sitter_detail(Model model, HttpServletResponse response,
			@RequestParam(value = "sitterno", defaultValue = "0") int sitterno) {
		
		// 데이터 조회에 필요한 조건값을 Beans에 저장하기 
		Sitter_info input = new Sitter_info();
		input.setSitterno(sitterno);
		
		// 조회결과를 저장할 객체 선언 
		Sitter_info output = null;
		Sitter_info test = null;
		
		try {
			// 데이터 조회 
			output = detailService.getSitterItem(input);
		
		} catch (Exception e) {
			e.printStackTrace();
		}
			
		model.addAttribute("output", output);
		return "/page_detail/sitter_page_detail/sitter_page_detail_for_mom_interview";
	}
	
	
	// 시터 상세페이지 > 인터뷰 페이지
	@RequestMapping(value = "/page_detail/sitter_page_detail/sitter_interview.do", method = RequestMethod.GET)
	public String sitter_interview(Model model) {

		return "/page_detail/sitter_page_detail/sitter_interview";
	}
}
