package study.team.abuhae.controllers;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class SearchController {
	/** 맘시터 찾기 페이지 **/
	@RequestMapping(value = "/search/sitter_search.do", method = RequestMethod.GET)
	public String sitter_search(Locale locale, Model model) {

		return "search/sitter_search";
	}
	
	/** 일자리 찾기 페이지 **/
	@RequestMapping(value = "/search/job_search.do", method = RequestMethod.GET)
	public String job_search(Locale locale, Model model) {

		return "search/job_search";
	}
	
	/** 돌봄 유형 페이지 **/
	@RequestMapping(value = "/search/caretype_sitter.do", method = RequestMethod.GET)
	public String caretype_sitter(Locale locale, Model model) {

		return "search/caretype_sitter";
	}
	
	/** 돌봄 유형 상세 페이지 **/
	@RequestMapping(value = "/search/caretype_detail.do", method = RequestMethod.GET)
	public String caretype_detail(Locale locale, Model model) {

		return "search/caretype_detail";
	}
}
