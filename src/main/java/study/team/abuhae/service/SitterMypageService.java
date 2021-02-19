package study.team.abuhae.service;

import java.util.List;

import study.team.abuhae.model.Connect;
import study.team.abuhae.model.Review;

public interface SitterMypageService {
	/** 내게 지원한 부모회원 목록 조회 */
	public List<Connect> getConnectList(Connect input) throws Exception;
	
	/** 인터뷰 요청에 대한 수락 / 거절 여부 업데이트 */
	public int editAccept(Connect input) throws Exception;
	
	/** accept가 'Y'일 경우 review 저장 */
	public int addReview(Review input) throws Exception;

}
