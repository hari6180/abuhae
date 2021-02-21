package study.team.abuhae.service;

import java.util.List;

import study.team.abuhae.model.Connect;
import study.team.abuhae.model.Coupon;
import study.team.abuhae.model.Heart;
import study.team.abuhae.model.Mom_info;
import study.team.abuhae.model.Report;
import study.team.abuhae.model.Review;
import study.team.abuhae.model.Sitter_info;

public interface SitterMypageService {
	/** 마이페이지 회원 데이터 상세 조회 */
	public Sitter_info getSitterItem(Sitter_info input) throws Exception;
	
	/** 결제 내역 조회 */
	public Sitter_info getSitterBuyList(Sitter_info input) throws Exception;
	
	/** 찜한 회원 목록 조히 */
	public List<Heart> getSitterHeartList(Heart input) throws Exception;
	
	/** 채용 내역 조회 */
	public List<Connect> getSitterWorkList(Connect input) throws Exception;
	
	/** 신고 내역 조회 */
	public List<Report> getSitterReprotList(Report input) throws Exception;
	
	/** 쿠폰 내역 조회 */
	public List<Coupon> getSitterCouponList(Coupon input) throws Exception;
	
	
	/** 내게 지원한 부모회원 목록 조회 */
	public List<Connect> getConnectList(Connect input) throws Exception;
	
	/** 인터뷰 요청에 대한 수락 / 거절 여부 업데이트 */
	public int editAccept(Connect input) throws Exception;
	
	/** accept가 'Y'일 경우 review 저장 */
	public int addReview(Review input) throws Exception;

	/** 남겨진 리뷰 조회 */
	public List<Review> getSitterReviewList(Review input) throws Exception;
}
