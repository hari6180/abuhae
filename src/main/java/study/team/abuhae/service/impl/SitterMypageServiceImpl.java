package study.team.abuhae.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;
import study.team.abuhae.helper.MailHelper;
import study.team.abuhae.model.Connect;
import study.team.abuhae.model.Review;
import study.team.abuhae.service.SitterMypageService;

@Slf4j
@Service
public class SitterMypageServiceImpl implements SitterMypageService {
	// mybatis 세션 객체 주입 설정
	@Autowired
	SqlSession sqlSession;
	//mailhelper 주입
	@Autowired
	MailHelper mailhelper;
	// Service 객체 주입
	
	@Override
	public List<Connect> getConnectList(Connect input) throws Exception {
		List<Connect> result = null;
		
		try {
			result = sqlSession.selectList("ConnectMapper.selectSitterInputApplyList", input);
			
			if (result == null) {
				throw new NullPointerException("result = null");
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
	
	/** 인터뷰 요청에 대한 Accept 업데이트 */
	@Override
	public int editAccept(Connect input) throws Exception {
		int result = 0;
		
		try {
			result = sqlSession.update("ConnectMapper.EditAcceptSitter", input);
			
			if (result == 0) {
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
	
	/** accept가 'Y'일 경우 review 입력 */
	@Override
	public int addReview(Review input) throws Exception {
		int result = 0;
		
		try {
			result = sqlSession.insert("ConnectMapper.insertReview", input);
			
			if (result == 0) {
				throw new NullPointerException("result=0");
			}
		} catch (NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("저장된 데이터가 없습니다.");
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 저장에 실패했습니다.");
		}
		
		return result;
	}
	
}
