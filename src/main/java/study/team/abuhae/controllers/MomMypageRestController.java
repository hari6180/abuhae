package study.team.abuhae.controllers;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import study.team.abuhae.helper.WebHelper;
import study.team.abuhae.model.Review;
import study.team.abuhae.service.AdminService;
import study.team.abuhae.service.MomMypageService;

@RestController
public class MomMypageRestController {
	@Autowired
	WebHelper webHelper;
	@Autowired
	AdminService adminService;
	@Autowired
	MomMypageService momMypageService;
	
	@RequestMapping(value = "/mypage/edit_review_ok", method = RequestMethod.POST)
	public Map<String, Object> edit_ok(
			@RequestParam(value = "revno", defaultValue = "0") int revno,
			@RequestParam(value = "rev_rate", defaultValue = "") char rev_rate,
			@RequestParam(value = "contents", defaultValue = "") String contents) {
		
		/** 사용자가 입력한 파라미터 유효성 검사 */
		/**if (revno == 0) { return webHelper.getJsonWarning("리뷰를 작성할 수 없습니다."); }
		if (rev_rate == "") { return webHelper.getJsonWarning("별점을 체크해주세요."); }
		if (contents == "") { return webHelper.getJsonWarning("내용을 입력해 주세요."); } */
		
		/** accept 수정(connect table) - insert */
		Review input = new Review();
		input.setRevno(revno);
		input.setRev_rate(rev_rate);
		input.setContents(contents);
		
		try {
			// 데이터 수정
			momMypageService.editReview(input);
		} catch (Exception e) {
			return webHelper.getJsonError(e.getLocalizedMessage());
		}
		
		return webHelper.getJsonData();
	}
}
