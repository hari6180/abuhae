package study.team.abuhae.service;

import study.team.abuhae.model.Mom_info;

public interface MomMypageService {
	/** 마이페이지 회원 데이터 상세 조회 */
	public Mom_info getMemberItem(Mom_info input) throws Exception;
}
