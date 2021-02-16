package study.team.abuhae.service.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;
import study.team.abuhae.model.Admin_info;
import study.team.abuhae.service.AdminService;

@Slf4j
@Service
public class AdminServiceImpl implements AdminService {
	//mybatis 세션 객체 주입 설정
	@Autowired
	SqlSession sqlsession;
	
	/*
	 * 관리자 로그인 기능
	 */
	@Override
	public Admin_info getAdminLogin(Admin_info input) throws Exception {
		Admin_info result = null;
		
		try {
			result = sqlsession.selectOne("AdminMapper.selectIDItem", input);
			
			//조회결과 없음
			if(result == null) {
				throw new NullPointerException("result=null");
			}
			
			//반환받은 객체가 null이 아니고, 패스워드가 같다면 로그인 성공으로 침
			if(result != null && result.getAdminpw().equals(input.getAdminpw())) {
				return result;
			} else {
				//일치하는 정보가 없다면 null 리턴
				return null;
			}
			
		} catch (NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("조회된 데이터가 없습니다.");
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회에 실패했습니다.");
		}
	}

}
