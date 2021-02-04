package study.team.abuhae.service;

import study.team.abuhae.model.Mom_info;
import study.team.abuhae.model.Sitter_info;

public interface SearchService {
	// 맘시터 카드 출력
	public Sitter_info getSitterItem(Sitter_info input) throws Exception;
	
	// 일자리 카드 출력
	public Mom_info getMomItem(Mom_info input) throws Exception;
	
	// 정렬
	
	
	
	
}
