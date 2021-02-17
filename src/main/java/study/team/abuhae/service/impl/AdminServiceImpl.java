package study.team.abuhae.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;
import study.team.abuhae.model.Admin_info;
import study.team.abuhae.model.Coupon;
import study.team.abuhae.model.Leave_member;
import study.team.abuhae.model.Mom_info;
import study.team.abuhae.model.Report;
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
	
	//========== 신고 회원 목록 조회 =================
	@Override
	public List<Mom_info> getReportList(Report input) throws Exception {
		List<Mom_info> result = null;
		
		try {
			result = sqlsession.selectList("AdminMapper.selectSingoList", input);
			
			//조회결과 없음
			if(result == null) {
				throw new NullPointerException("result=null");
			}
			
		} catch (NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("조회된 데이터가 없습니다.");
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회에 실패했습니다.");
		}
		
		return result;
	}

	@Override
	public int getReportCount(Report input) throws Exception {
		int result = 0;
		try {
			result = sqlsession.selectOne("AdminMapper.selectCountReport", input);
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회에 실패했습니다.");
		}
		return result;
	}


	@Override
	public int updateReportMember(Mom_info input) throws Exception {
		int result = 0;
		
		try {
			result = sqlsession.update("AdminMapper.updateSingoMember", input);
			
			if (result==0) {
				throw new NullPointerException("result=0");
			}
		} catch (NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("수정된 데이터가 없습니다.");
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 수정에 실패했습니다.");
		}
		return result;
	}

	
	//=========탈퇴회원 조회==============
	@Override
	public List<Leave_member> getLeaveList(Leave_member input) throws Exception {
		List<Leave_member> result = null;
		try {
			result = sqlsession.selectList("AdminMapper.selectLeaveMember");
			
			//조회결과 없음
			if(result == null) {
				throw new NullPointerException("result=null");
			}
			
		} catch (NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("조회된 데이터가 없습니다.");
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회에 실패했습니다.");
		}
		
		return result;
	}

	@Override
	public int getLeaveCount(Leave_member input) throws Exception {
		int result = 0;
		try {
			result = sqlsession.selectOne("AdminMapper.selectCountLeaveMember", input);
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회에 실패했습니다.");
		}
		return result;
	}
	
	@Override
	public int deleteLeaveMember(Leave_member input) throws Exception {
		int result = 0;
		
		try {
			result = sqlsession.update("AdminMapper.deleteLeaveMember", input);
			
			if (result==0) {
				throw new NullPointerException("result=0");
			}
		} catch (NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("수정된 데이터가 없습니다.");
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 수정에 실패했습니다.");
		}
		return result;
	}
	
	//=======이용권 회원 조회 ============
	@Override
	public List<Mom_info> getSubList(Mom_info input) throws Exception {
		List<Mom_info> result = null;
		try {
			result = sqlsession.selectList("AdminMapper.selectSubMember");
			
			//조회결과 없음
			if(result == null) {
				throw new NullPointerException("result=null");
			}
			
		} catch (NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("조회된 데이터가 없습니다.");
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회에 실패했습니다.");
		}
		
		return result;
	}

	@Override
	public int getSubCount(Mom_info input) throws Exception {
		int result = 0;
		try {
			result = sqlsession.selectOne("AdminMapper.selectCountSubMember", input);
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회에 실패했습니다.");
		}
		return result;
	}

	@Override
	public int addCoupon(Coupon input) throws Exception {
		int result = 0;
		try {
			result = sqlsession.insert("AdminMapper.addCoupon", input);
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 입력에 실패했습니다.");
		}
		return result;
	}

	

}
