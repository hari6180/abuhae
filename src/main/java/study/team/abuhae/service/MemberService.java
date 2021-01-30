package study.team.abuhae.service;

import java.util.List;

import study.team.abuhae.model.Member;

public interface MemberService {
	//회원 단일 조회
	public Member getMemberItem(Member input) throws Exception;
	
	//회원 리스트 조회
	public List<Member> getMemberList(Member input) throws Exception;
	
	//회원 수 조회
	public int getMemberCount(Member input) throws Exception;
	
	//회원 데이터 수정
	public int editMember(Member input) throws Exception;
	
	//회원 탈퇴
	public int leaveMember(Member input) throws Exception;
}
