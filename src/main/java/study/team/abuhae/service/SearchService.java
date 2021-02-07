package study.team.abuhae.service;

import java.util.List;

import study.team.abuhae.model.Mom_info;
import study.team.abuhae.model.Sitter_info;

public interface SearchService {
	// 맘시터 카드 출력
	public List<Sitter_info> searchSitter(Sitter_info input) throws Exception;
	
	// 일자리 카드 출력
	public List<Mom_info> searchMom(Mom_info input) throws Exception;
	
	// 정렬
	
	
	
	
}
