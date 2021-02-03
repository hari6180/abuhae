package study.team.abuhae.service.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;
import study.team.abuhae.model.Mom_info;
import study.team.abuhae.model.Sitter_info;
import study.team.abuhae.service.MemberInsertService;

/** 대량의 회원 데이터 입력을 제공하기 위한 Service 계층에 대한 구현체 */
@Slf4j
@Service
public class MemberInsertServiceImpl implements MemberInsertService {
	/** MyBatis 세션 객체 주입 설정 */
	@Autowired
	SqlSession sqlSession;
	@Override
	public int addMom(Mom_info input) throws Exception {
		int result1 = 0;
		int result2 = 0;

		try {
			result1 = sqlSession.insert("MemberInsertMapper.insertMember", input);
			result2 = sqlSession.insert("MemberInsertMapper.insertMom", input);
			if (result1 == 0 && result2 == 0) {
				throw new NullPointerException("result=0");
			}
		} catch (NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("저장된 데이터가 없습니다.");
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 저장에 실패했습니다.");
		}

		return result1;
	}

	@Override
	public int addSitter(Sitter_info input) throws Exception {
		int result1 = 0;
		int result2 = 0;

		try {
			result1 = sqlSession.insert("MemberInsertMapper.insertMember", input);
			result2 = sqlSession.insert("MemberInsertMapper.insertSitter", input);
			if (result1 == 0 && result2 == 0) {
				throw new NullPointerException("result=0");
			}
		} catch (NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("저장된 데이터가 없습니다.");
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 저장에 실패했습니다.");
		}

		return result1;
	}

}
