package study.team.abuhae.controllers;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import study.team.abuhae.helper.PageData;
import study.team.abuhae.helper.RegexHelper;
import study.team.abuhae.helper.WebHelper;
import study.team.abuhae.model.Mom_info;
import study.team.abuhae.model.Sitter_info;
import study.team.abuhae.service.SearchService;

@RestController
public class SearchRestController {
    /** WebHelper 주입 */
    // --> import org.springframework.beans.factory.annotation.Autowired;
    // --> import study.spring.springhelper.helper.WebHelper;
    @Autowired  WebHelper webHelper;

	/** Service 패턴 구현체 주입 */
	@Autowired
	SearchService searchService;
	
	/** "/프로젝트이름"에 해당하는 ContextPath 변수 주입 */
	@Value("#{servletContext.contextPath}")
	String contextPath;
    
    /** 맘시터 찾기 페이지 */
    @RequestMapping(value = "/search/sitter_search", method = RequestMethod.GET)
    public Map<String, Object> get_st_list(
            // 검색어
            @RequestParam(value="keyword", required=false) String keyword,
            // 페이지 구현에서 사용할 현재 페이지 번호
            @RequestParam(value="page", defaultValue="1") int nowPage,
            // 정렬 조건
            @RequestParam(value = "order", defaultValue="null") String order) {
        
        
        /** 1) 페이지 구현에 필요한 변수값 생성 */
        int totalCount = 0;              // 전체 게시글 수
        int listCount  = 10;             // 한 페이지당 표시할 목록 수
        int pageCount  = 5;              // 한 그룹당 표시할 페이지 번호 수

        /** 2) 데이터 조회하기 */
        // 조회에 필요한 조건값(검색어)를 Beans에 담는다.
        Sitter_info input = new Sitter_info();

        List<Sitter_info> output = null;   // 조회결과가 저장될 객체
        PageData pageData = null;        // 페이지 번호를 계산한 결과가 저장될 객체

        try {
            // 전체 게시글 수 조회
            totalCount = searchService.getSitterCount(input);
            // 페이지 번호 계산 --> 계산결과를 로그로 출력될 것이다.
            pageData = new PageData(nowPage, totalCount, listCount, pageCount);

            // SQL의 LIMIT절에서 사용될 값을 Beans의 static 변수에 저장
            Sitter_info.setOffset(pageData.getOffset());
            Sitter_info.setListCount(pageData.getListCount());
            
			// 정렬조건의 값을 Beans에 저장
			Sitter_info.setOrder(order);
            
            // 데이터 조회하기
            output = searchService.searchSitter(input);
        } catch (Exception e) {
            return webHelper.getJsonError(e.getLocalizedMessage());
        }

        /** 3) JSON 출력하기 */
        Map<String, Object> data = new HashMap<String, Object>();
        data.put("keyword", keyword);
        data.put("item", output);
        data.put("meta", pageData);

        return webHelper.getJsonData(data);
    }
    
    /** 일자리 찾기 페이지 */
    @RequestMapping(value = "/search/job_search", method = RequestMethod.GET)
    public Map<String, Object> get_mom_list(
            // 검색어
            @RequestParam(value="keyword", required=false) String keyword,
            // 페이지 구현에서 사용할 현재 페이지 번호
            @RequestParam(value="page", defaultValue="1") int nowPage,
            // 정렬 조건
            @RequestParam(value = "order", defaultValue = "null") String order){
        
        /** 1) 페이지 구현에 필요한 변수값 생성 */
        int totalCount = 0;              // 전체 게시글 수
        int listCount  = 10;             // 한 페이지당 표시할 목록 수
        int pageCount  = 5;              // 한 그룹당 표시할 페이지 번호 수

        /** 2) 데이터 조회하기 */
        // 조회에 필요한 조건값(검색어)를 Beans에 담는다.
        Mom_info input = new Mom_info();

        List<Mom_info> output = null;   // 조회결과가 저장될 객체
        PageData pageData = null;        // 페이지 번호를 계산한 결과가 저장될 객체

        try {
            // 전체 게시글 수 조회
            totalCount = searchService.getMomCount(input);
            // 페이지 번호 계산 --> 계산결과를 로그로 출력될 것이다.
            pageData = new PageData(nowPage, totalCount, listCount, pageCount);

            // SQL의 LIMIT절에서 사용될 값을 Beans의 static 변수에 저장
            Mom_info.setOffset(pageData.getOffset());
            Mom_info.setListCount(pageData.getListCount());
            
            // 데이터 조회하기
            output = searchService.searchMom(input);
        } catch (Exception e) {
            return webHelper.getJsonError(e.getLocalizedMessage());
        }

        /** 3) JSON 출력하기 */
        Map<String, Object> data = new HashMap<String, Object>();
        data.put("keyword", keyword);
        data.put("item", output);
        data.put("meta", pageData);

        return webHelper.getJsonData(data);
    }
}
