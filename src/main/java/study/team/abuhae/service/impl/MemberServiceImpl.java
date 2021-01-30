package study.team.abuhae.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;
import study.team.abuhae.model.Member;
import study.team.abuhae.service.MemberService;

@Slf4j
@Service
public class MemberServiceImpl implements MemberService {
	
	//mybatis 세션 객체 주입 설정
	@Autowired


	@Override
	public Member getMemberItem(Member input) throws Exception {
		Member result = null;
		
		
		return result;
	}

}
