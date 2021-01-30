package study.team.abuhae.service;

import study.team.abuhae.model.Member;

public interface MemberService {
	//회원 조회
	public Member getMemberItem(Member input) throws Exception;
}
