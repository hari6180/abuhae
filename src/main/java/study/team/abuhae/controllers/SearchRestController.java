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

import lombok.extern.slf4j.Slf4j;
import study.team.abuhae.helper.AgeHelper;
import study.team.abuhae.helper.PageData;
import study.team.abuhae.helper.RegexHelper;
import study.team.abuhae.helper.WebHelper;
import study.team.abuhae.model.Heart;
import study.team.abuhae.model.Mom_info;
import study.team.abuhae.model.Sitter_info;
import study.team.abuhae.service.SearchService;

@Slf4j
@RestController
public class SearchRestController {
	/** WebHelper 주입 */
	// --> import org.springframework.beans.factory.annotation.Autowired;
	// --> import study.spring.springhelper.helper.WebHelper;
	@Autowired
	WebHelper webHelper;

	/** Service 패턴 구현체 주입 */
	@Autowired
	SearchService searchService;

	/** "/프로젝트이름"에 해당하는 ContextPath 변수 주입 */
	@Value("#{servletContext.contextPath}")
	String contextPath;

	/** 맘시터 찾기 페이지 */
	// 카드 출력 - 비로그인
	@RequestMapping(value = "/search/sitter_search", method = RequestMethod.GET)
	public Map<String, Object> get_st_list(
			// 페이지 구현에서 사용할 현재 페이지 번호
			@RequestParam(value = "page", defaultValue = "1") int nowPage,
			// 정렬 조건
			@RequestParam(value = "order", defaultValue = "null") String order,
			/** (1) 원하는 활동 선택 **/
			@RequestParam(value = "act[]", required = false) String[] actList, /** (2) 상세 검색 **/
			@RequestParam(value = "kidsage[]", required = false) String[] kidsAge,
			@RequestParam(value = "caredays[]", required = false) String[] caredays,
			@RequestParam(value = "time_range[]", required = false) String[] timeRange,
			@RequestParam(value = "sitter_type[]", required = false) String[] sitterType,
			@RequestParam(value = "sitter_age[]", required = false) String[] sitterAge) {

		/** 1) 페이지 구현에 필요한 변수값 생성 */
		int totalCount = 0; // 전체 게시글 수
		int listCount = 10; // 한 페이지당 표시할 목록 수
		int pageCount = 5; // 한 그룹당 표시할 페이지 번호 수

		/** 2) 데이터 조회하기 */
		// 조회에 필요한 조건값(검색어)를 Beans에 담는다.
		Sitter_info input = new Sitter_info();

		List<Sitter_info> output = null; // 조회결과가 저장될 객체
		PageData pageData = null; // 페이지 번호를 계산한 결과가 저장될 객체

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

			// 검색조건의 값을 Beans에 저장
			if (actList != null) {
				for (int i = 0; i < actList.length; i++) {
					String temp1 = actList[i];
					String temp2 = temp1.replace("'", "");
					actList[i] = temp2;
					log.info("temp2" + temp2);
					Sitter_info.setActList(actList);
				}
			}

			if (kidsAge != null) {
				for (int i = 0; i < kidsAge.length; i++) {
					String temp1 = kidsAge[i];
					String temp2 = temp1.replace("'", "");
					kidsAge[i] = temp2;
					log.info("temp2" + temp2);
					Sitter_info.setKidsAge(kidsAge);
				}
			}

			if (caredays != null) {
				Sitter_info.setCaredays(caredays);
			}

			if (timeRange != null) {
				Sitter_info.setTimeRange(timeRange);
			}

			if (sitterType != null) {
				Sitter_info.setSitterType(sitterType);
			}

			if (sitterAge != null) {
				Sitter_info.setSitterAge(sitterAge);
			}

			// 데이터 조회하기
			output = searchService.searchSitter(input);
		} catch (Exception e) {
			return webHelper.getJsonError(e.getLocalizedMessage());
		}

		/** 3) JSON 출력하기 */
		Map<String, Object> data = new HashMap<String, Object>();
		data.put("item", output);
		data.put("meta", pageData);

		return webHelper.getJsonData(data);
	}
	
	// 카드 출력 - 로그인
	@RequestMapping(value = "/search/sitter_search/login", method = RequestMethod.GET)
	public Map<String, Object> get_st_list(
			// 페이지 구현에서 사용할 현재 페이지 번호
			@RequestParam(value = "page", defaultValue = "1") int nowPage,
			// 정렬 조건
			@RequestParam(value = "order", defaultValue = "null") String order,
			/** (1) 원하는 활동 선택 **/
			@RequestParam(value = "act[]", required = false) String[] actList, /** (2) 상세 검색 **/
			@RequestParam(value = "kidsage[]", required = false) String[] kidsAge,
			@RequestParam(value = "caredays[]", required = false) String[] caredays,
			@RequestParam(value = "time_range[]", required = false) String[] timeRange,
			@RequestParam(value = "sitter_type[]", required = false) String[] sitterType,
			@RequestParam(value = "sitter_age[]", required = false) String[] sitterAge,
			// 로그인 정보
			@RequestParam(value = "momno", required = false) String momno) {

		/** 1) 페이지 구현에 필요한 변수값 생성 */
		int totalCount = 0; // 전체 게시글 수
		int listCount = 10; // 한 페이지당 표시할 목록 수
		int pageCount = 5; // 한 그룹당 표시할 페이지 번호 수

		/** 2) 데이터 조회하기 */
		// 조회에 필요한 조건값(검색어)를 Beans에 담는다.
		Sitter_info input = new Sitter_info();

		List<Sitter_info> output = null; // 조회결과가 저장될 객체
		PageData pageData = null; // 페이지 번호를 계산한 결과가 저장될 객체

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

			// 검색조건의 값을 Beans에 저장
			if (actList != null) {
				for (int i = 0; i < actList.length; i++) {
					String temp1 = actList[i];
					String temp2 = temp1.replace("'", "");
					actList[i] = temp2;
					log.info("temp2" + temp2);
					Sitter_info.setActList(actList);
				}
			}

			if (kidsAge != null) {
				for (int i = 0; i < kidsAge.length; i++) {
					String temp1 = kidsAge[i];
					String temp2 = temp1.replace("'", "");
					kidsAge[i] = temp2;
					log.info("temp2" + temp2);
					Sitter_info.setKidsAge(kidsAge);
				}
			}

			if (caredays != null) {
				Sitter_info.setCaredays(caredays);
			}

			if (timeRange != null) {
				Sitter_info.setTimeRange(timeRange);
			}

			if (sitterType != null) {
				Sitter_info.setSitterType(sitterType);
			}

			if (sitterAge != null) {
				Sitter_info.setSitterAge(sitterAge);
			}
			
			if (momno != null || momno != "") {
				int mom = Integer.parseInt(momno);
				Sitter_info.setLoginMom(mom);
			}

			// 데이터 조회하기
			output = searchService.searchSitter(input);
		} catch (Exception e) {
			return webHelper.getJsonError(e.getLocalizedMessage());
		}

		/** 3) JSON 출력하기 */
		Map<String, Object> data = new HashMap<String, Object>();
		data.put("item", output);
		data.put("meta", pageData);

		return webHelper.getJsonData(data);
	}

	// 시터 찜하기
	@RequestMapping(value = "/heart/insertSt", method = RequestMethod.GET)
	public Map<String, Object> heartSt(/** (3) 찜하기 */
	@RequestParam(value = "sitterno", required = false) String sitterno,
			@RequestParam(value = "momno", required = false) String momno,
			@RequestParam(value = "jjim", required = false) String jjim) {

		// 찜하기
		// 데이터를 전송할 객체 생성
		Heart heart = new Heart();
		int stno = Integer.parseInt(sitterno);
		int mono = Integer.parseInt(momno);

		heart.setMomno(mono);
		heart.setSitterno(stno);
		heart.setWho('M');
		int findHt = 0;
		try {
			searchService.addHeart(heart);
		} catch (Exception e) {
			return webHelper.getJsonError(e.getLocalizedMessage());
		}

		/** 3) JSON 출력하기 */
		Map<String, Object> data = new HashMap<String, Object>();
		data.put("heart", findHt);

		return webHelper.getJsonData(data);
	}

	// 찜하기 취소
	@RequestMapping(value = "/heart/deleteSt", method = RequestMethod.GET)
	public Map<String, Object> heartNoSt(
			/** (3) 찜하기 */
			@RequestParam(value = "sitterno", required = false) String sitterno,
			@RequestParam(value = "momno", required = false) String momno) {

		// 찜하기 취소
		// 데이터를 전송할 객체 생성
		Heart heart = new Heart();
		int stno = Integer.parseInt(sitterno);
		int mono = Integer.parseInt(momno);

		heart.setMomno(mono);
		heart.setSitterno(stno);
		heart.setWho('M');
		try {
			searchService.deleteHeart(heart);
		} catch (Exception e) {
			return webHelper.getJsonError(e.getLocalizedMessage());
		}

		/** 3) JSON 출력하기 */
		Map<String, Object> data = new HashMap<String, Object>();
		data.put("heart", heart);

		return webHelper.getJsonData(data);
	}

	/** 일자리 찾기 페이지 */
	// 카드 출력 - 비로그인
	@RequestMapping(value = "/search/job_search", method = RequestMethod.GET)
	public Map<String, Object> get_mom_list(
			// 페이지 구현에서 사용할 현재 페이지 번호
			@RequestParam(value = "page", defaultValue = "1") int nowPage,
			// 정렬 조건
			@RequestParam(value = "order", defaultValue = "null") String order, /** 상세 검색 **/
			@RequestParam(value = "act[]", required = false) String[] act,
			@RequestParam(value = "kidsage[]", required = false) String[] kidsAge,
			@RequestParam(value = "caredays[]", required = false) String[] caredays,
			@RequestParam(value = "time_range[]", required = false) String[] timeRange,
			@RequestParam(value = "min_pay", required = false) String min_pay,
			@RequestParam(value = "max_pay", required = false) String max_pay,
			@RequestParam(value = "kids_cnt", required = false) String kids_cnt) {

		/** 1) 페이지 구현에 필요한 변수값 생성 */
		int totalCount = 0; // 전체 게시글 수
		int listCount = 10; // 한 페이지당 표시할 목록 수
		int pageCount = 5; // 한 그룹당 표시할 페이지 번호 수

		/** 2) 데이터 조회하기 */
		// 조회에 필요한 조건값(검색어)를 Beans에 담는다.
		Mom_info input = new Mom_info();

		List<Mom_info> output = null; // 조회결과가 저장될 객체
		PageData pageData = null; // 페이지 번호를 계산한 결과가 저장될 객체

		try {
			// 전체 게시글 수 조회
			totalCount = searchService.getMomCount(input);
			// 페이지 번호 계산 --> 계산결과를 로그로 출력될 것이다.
			pageData = new PageData(nowPage, totalCount, listCount, pageCount);

			// SQL의 LIMIT절에서 사용될 값을 Beans의 static 변수에 저장
			Mom_info.setOffset(pageData.getOffset());
			Mom_info.setListCount(pageData.getListCount());

			// 정렬조건의 값을 Beans에 저장
			Mom_info.setOrder(order);

			// 검색조건의 값을 Beans에 저장
			if (act != null) {
				for (int i = 0; i < act.length; i++) {
					String temp1 = act[i];
					String temp2 = temp1.replace("'", "");
					act[i] = temp2;
					log.info("temp2" + temp2);
					Mom_info.setAct(act);
				}
			}

			if (kidsAge != null) {
				for (int i = 0; i < kidsAge.length; i++) {
					String temp1 = kidsAge[i];
					String temp2 = temp1.replace("'", "");
					kidsAge[i] = temp2;
					log.info("temp2" + temp2);
					Mom_info.setKidsAge(kidsAge);
				}
			}

			if (caredays != null) {
				Mom_info.setCaredays(caredays);
			}

			if (timeRange != null) {
				Mom_info.setTimeRange(timeRange);
			}

			if (min_pay != null) {
				Mom_info.setMin_pay(min_pay);
			}

			if (max_pay != null) {
				Mom_info.setMax_pay(max_pay);
			}

			if (kids_cnt != null) {
				Mom_info.setKids_cnt(kids_cnt);
			}
			

			// 데이터 조회하기
			output = searchService.searchMom(input);

			// 아이 나이 계산 with AgeHelper
			AgeHelper ageHelper = new AgeHelper();

			for (int i = 0; i < output.size(); i++) {
				Mom_info temp = output.get(i);
				String age = ageHelper.kidsStr(temp.getKids_age());
				temp.setKids_age(age);
				output.set(i, temp);
			}

		} catch (Exception e) {
			return webHelper.getJsonError(e.getLocalizedMessage());
		}

		/** 3) JSON 출력하기 */
		Map<String, Object> data = new HashMap<String, Object>();
		data.put("item", output);
		data.put("meta", pageData);

		return webHelper.getJsonData(data);
	}
	
	// 카드 출력 - 로그인
		@RequestMapping(value = "/search/job_search/login", method = RequestMethod.GET)
		public Map<String, Object> get_mom_list(
				// 페이지 구현에서 사용할 현재 페이지 번호
				@RequestParam(value = "page", defaultValue = "1") int nowPage,
				// 정렬 조건
				@RequestParam(value = "order", defaultValue = "null") String order, /** 상세 검색 **/
				@RequestParam(value = "act[]", required = false) String[] act,
				@RequestParam(value = "kidsage[]", required = false) String[] kidsAge,
				@RequestParam(value = "caredays[]", required = false) String[] caredays,
				@RequestParam(value = "time_range[]", required = false) String[] timeRange,
				@RequestParam(value = "min_pay", required = false) String min_pay,
				@RequestParam(value = "max_pay", required = false) String max_pay,
				@RequestParam(value = "kids_cnt", required = false) String kids_cnt,
				// 로그인 정보
				@RequestParam(value = "sitterno", required = false) String sitterno) {

			/** 1) 페이지 구현에 필요한 변수값 생성 */
			int totalCount = 0; // 전체 게시글 수
			int listCount = 10; // 한 페이지당 표시할 목록 수
			int pageCount = 5; // 한 그룹당 표시할 페이지 번호 수

			/** 2) 데이터 조회하기 */
			// 조회에 필요한 조건값(검색어)를 Beans에 담는다.
			Mom_info input = new Mom_info();

			List<Mom_info> output = null; // 조회결과가 저장될 객체
			PageData pageData = null; // 페이지 번호를 계산한 결과가 저장될 객체

			try {
				// 전체 게시글 수 조회
				totalCount = searchService.getMomCount(input);
				// 페이지 번호 계산 --> 계산결과를 로그로 출력될 것이다.
				pageData = new PageData(nowPage, totalCount, listCount, pageCount);

				// SQL의 LIMIT절에서 사용될 값을 Beans의 static 변수에 저장
				Mom_info.setOffset(pageData.getOffset());
				Mom_info.setListCount(pageData.getListCount());

				// 정렬조건의 값을 Beans에 저장
				Mom_info.setOrder(order);

				// 검색조건의 값을 Beans에 저장
				if (act != null) {
					for (int i = 0; i < act.length; i++) {
						String temp1 = act[i];
						String temp2 = temp1.replace("'", "");
						act[i] = temp2;
						log.info("temp2" + temp2);
						Mom_info.setAct(act);
					}
				}

				if (kidsAge != null) {
					for (int i = 0; i < kidsAge.length; i++) {
						String temp1 = kidsAge[i];
						String temp2 = temp1.replace("'", "");
						kidsAge[i] = temp2;
						log.info("temp2" + temp2);
						Mom_info.setKidsAge(kidsAge);
					}
				}

				if (caredays != null) {
					Mom_info.setCaredays(caredays);
				}

				if (timeRange != null) {
					Mom_info.setTimeRange(timeRange);
				}

				if (min_pay != null) {
					Mom_info.setMin_pay(min_pay);
				}

				if (max_pay != null) {
					Mom_info.setMax_pay(max_pay);
				}

				if (kids_cnt != null) {
					Mom_info.setKids_cnt(kids_cnt);
				}
				
				if (sitterno != null) {
					int stno = Integer.parseInt(sitterno);
					Mom_info.setLoginSt(stno);
				}

				// 데이터 조회하기
				output = searchService.searchMom(input);

				// 아이 나이 계산 with AgeHelper
				AgeHelper ageHelper = new AgeHelper();

				for (int i = 0; i < output.size(); i++) {
					Mom_info temp = output.get(i);
					String age = ageHelper.kidsStr(temp.getKids_age());
					temp.setKids_age(age);
					output.set(i, temp);
				}

			} catch (Exception e) {
				return webHelper.getJsonError(e.getLocalizedMessage());
			}

			/** 3) JSON 출력하기 */
			Map<String, Object> data = new HashMap<String, Object>();
			data.put("item", output);
			data.put("meta", pageData);

			return webHelper.getJsonData(data);
		}

	// 일자리 찜하기
	@RequestMapping(value = "/heart/insertMom", method = RequestMethod.GET)
	public Map<String, Object> heartMom(/** (3) 찜하기 */
	@RequestParam(value = "sitterno", required = false) String sitterno,
			@RequestParam(value = "momno", required = false) String momno,
			@RequestParam(value = "jjim", required = false) String jjim) {

		// 찜하기
		// 데이터를 전송할 객체 생성
		Heart heart = new Heart();
		int stno = Integer.parseInt(sitterno);
		int mono = Integer.parseInt(momno);

		heart.setMomno(mono);
		heart.setSitterno(stno);
		heart.setWho('S');
		try {

			searchService.addHeart(heart);

		} catch (Exception e) {
			return webHelper.getJsonError(e.getLocalizedMessage());
		}

		/** 3) JSON 출력하기 */
		Map<String, Object> data = new HashMap<String, Object>();
		data.put("heart", heart);

		return webHelper.getJsonData(data);
	}

	// 찜하기 취소
	@RequestMapping(value = "/heart/deleteMom", method = RequestMethod.GET)
	public Map<String, Object> heartNoMom(
			/** (3) 찜하기 */
			@RequestParam(value = "sitterno", required = false) String sitterno,
			@RequestParam(value = "momno", required = false) String momno) {

		// 찜하기 취소
		// 데이터를 전송할 객체 생성
		Heart heart = new Heart();
		int stno = Integer.parseInt(sitterno);
		int mono = Integer.parseInt(momno);

		heart.setMomno(mono);
		heart.setSitterno(stno);
		heart.setWho('S');
		try {
			searchService.deleteHeart(heart);
		} catch (Exception e) {
			return webHelper.getJsonError(e.getLocalizedMessage());
		}

		/** 3) JSON 출력하기 */
		Map<String, Object> data = new HashMap<String, Object>();
		data.put("heart", heart);

		return webHelper.getJsonData(data);
	}
}
