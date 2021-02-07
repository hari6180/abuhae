package study.team.abuhae.service.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;
import study.team.abuhae.model.Sitter_info;
import study.team.abuhae.service.DetailService;

@Slf4j
@Service
public class DetailServiceImpl implements DetailService {
	
	@Autowired
	SqlSession sqlSession;

	@Override
	public Sitter_info getSitterItem(Sitter_info input) throws Exception {
		Sitter_info result = null;
		
		try {
			result = sqlSession.selectOne("DetailMapper.selectItem", input);
			
			if (result==null) {
				throw new NullPointerException("result=null");
			}
			
		} catch (NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("조회된 데이터가 없습니다.");
		} catch (Exception e) {
			log.debug(e.getLocalizedMessage());
			throw new Exception("데이터 조회에 실패했습니다.");
		}
		
		
		return result;
	}

}
