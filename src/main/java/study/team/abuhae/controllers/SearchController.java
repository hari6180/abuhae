package study.team.abuhae.controllers;

import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import study.team.abuhae.model.Mom_info;
import study.team.abuhae.model.Sitter_info;
import study.team.abuhae.service.SearchService;

/** 검색 컨트롤러 hari */ 
@Controller
public class SearchController {
	
	/** Service 패턴 구현체 주입 */
	@Autowired
	SearchService searchService;
	
	/** "/프로젝트이름"에 해당하는 ContextPath 변수 주입 */
	@Value("#{servletContext.contextPath}")
	String contextPath;
	
	/** 맘시터 찾기 페이지 **/
	@RequestMapping(value = "/search/sitter_search.do", method = RequestMethod.GET)
	public String sitter_search(Model model, HttpServletResponse response) {
		// 조회 결과가 저장될 객체 
		List<Sitter_info> output = null;
		
		try {
			// 데이터 조회하기
			output = searchService.searchSitter(null);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		// View 처리
		model.addAttribute("output", output);
		return "search/sitter_search";
	}
	
	/** 일자리 찾기 페이지 **/
	@RequestMapping(value = "/search/job_search.do", method = RequestMethod.GET)
	public String job_search(Model model, HttpServletResponse response) {
		// 조회 결과가 저장될 객체 
		List<Mom_info> output = null;
		
		try {
			// 데이터 조회하기
			output = searchService.searchMom(null);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		// View 처리
		model.addAttribute("output", output);
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
