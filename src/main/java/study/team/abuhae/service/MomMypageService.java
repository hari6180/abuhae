package study.team.abuhae.service;

import java.util.List;

import study.team.abuhae.model.Coupon;
import study.team.abuhae.model.Mom_info;
import study.team.abuhae.model.Report;
import study.team.abuhae.model.Review;
import study.team.abuhae.model.Sitter_info;

public interface MomMypageService {
/** 마이페이지 회원 데이터 상세 조회 */
	public Mom_info getMemberItem(Mom_info input) throws Exception;

/** 리뷰 수정 기능(사용자 페이지에서는 리뷰 입력 기능으로 보임) */
	public int editReview(Review input) throws Exception;
	
/** 리뷰 작성할 수 있는 회원 목록 조회 */
	public List<Review> getReviewMemberList(Review input) throws Exception;
	
/** 작성한 리뷰 조회 */
	public List<Review> getReviewList(Review input) throws Exception;
	
/** 신고 회원 목록 조회 */
	public List<Report> getReportList(Report input) throws Exception;
	
/** 쿠폰 목록 조회 */
	public List<Coupon> getCouponList(Coupon input) throws Exception;
	
/** 비밀번호 수정 */
	public int updateMomPassword(Mom_info input) throws Exception;
	
/** 결제 내역 목록 조히 */
	public List<Mom_info> getBuyList(Mom_info input) throws Exception;
	
}

