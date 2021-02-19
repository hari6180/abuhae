package study.team.abuhae.controllers;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import study.team.abuhae.helper.AgeHelper;
import study.team.abuhae.model.Sitter_info;
import study.team.abuhae.service.DetailService;

@Controller
public class Page_detail_sitterController {
	
	@Autowired
	DetailService detailService;
	
	// 시터 상세페이지
	@RequestMapping(value = "/page_detail/sitter_detail.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView sitter_detail(Model model, HttpServletResponse response,
		@RequestParam(value = "sitterno", defaultValue = "0") int sitterno) {
		
		// 데이터 조회에 필요한 조건값을 Beans에 저장하기 
		Sitter_info input = new Sitter_info();
		input.setSitterno(sitterno);
		Sitter_info count = new Sitter_info();
		count.setSitterno(sitterno);
		Sitter_info insert = new Sitter_info();
		insert.setSitterno(sitterno);
		Sitter_info wantAge = new Sitter_info();
		wantAge.setSitterno(sitterno);

		// 조회결과를 저장할 객체 선언 
		Sitter_info output = null;
		int countput = 0;
		int insertput = 0;
		Sitter_info ageput = null;
		
		/** String src = input.getWant_age();
		String[] data = src.split(",");
		
		for (int i = 0; i < data.length; i++) {
			System.out.println(data[i]);
		} */
		
		try {
			// 데이터 조회 
			output = detailService.getSitterItem(input);
			countput = detailService.editSitter(input);
			insertput = detailService.addSitter(input);
			ageput = detailService.getWantAge(input);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("output", output);
		model.addAttribute("insertput", insertput);
		return new ModelAndView("/page_detail/sitter_page_detail/sitter_detail");
		//return "/page_detail/sitter_page_detail/sitter_detail";
	}
	
	
	// 시터 상세페이지 > 인터뷰 페이지
	@RequestMapping(value = "/page_detail/sitter_interview.do", method = RequestMethod.GET)
	public ModelAndView sitter_interview(Model model, HttpServletResponse response,	
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
		return new ModelAndView("/page_detail/sitter_page_detail/sitter_interview");
		//return "/page_detail/sitter_page_detail/sitter_interview";
	}
}
