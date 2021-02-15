package study.team.abuhae.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;
import study.team.abuhae.model.Coupon;
import study.team.abuhae.model.Mom_info;
import study.team.abuhae.model.Report;
import study.team.abuhae.model.Sitter_info;
import study.team.abuhae.service.MomMypageService;

@Slf4j
@Service
public class MomMypageServiceImpl implements MomMypageService {
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public Mom_info getMemberItem(Mom_info input) throws Exception {
		Mom_info result = null;
		
		try {
			result = sqlSession.selectOne("MypageMapper.selectItem", input);
			
			if (result==null) {
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

	/** 리뷰 작성할 수 있는 회원 목록 조회 */
	@Override
	public List<Sitter_info> getReviewMemberList(Sitter_info input) throws Exception {
		List<Sitter_info> result = null;
		
		try {
			result = sqlSession.selectList("ReviewMapper.selectReviewMemberList", input);
			
			if (result==null) {
				throw new NullPointerException("result=null");
			}  
		} catch (NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("조회된 회원이 없습니다.");
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회에 실패했습니다.");
		}
		
		return result;
	}

	/** 신고 내역 조회 */
	@Override
	public List<Report> getReportList(Report input) throws Exception {
		List<Report> result = null;
		
		try {
			result = sqlSession.selectList("MypageMapper.selectReportList", input);
			
			if (result==null) {
				throw new NullPointerException("result=null");
			}  
		} catch (NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("조회된 회원이 없습니다.");
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회에 실패했습니다.");
		}
		return result;
	}

	/** 쿠폰 리스트 조회 */
	@Override
	public List<Coupon> getCouponList(Coupon input) throws Exception {
		List<Coupon> result = null;
		
		try {
			result = sqlSession.selectList("MypageMapper.selectCouponList", input);
			
			if (result==null) {
				throw new NullPointerException("result=null");
			}  
		} catch (NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("조회된 회원이 없습니다.");
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회에 실패했습니다.");
		}
		return result;
	}

}
