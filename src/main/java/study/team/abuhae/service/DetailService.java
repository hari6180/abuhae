package study.team.abuhae.service;

import study.team.abuhae.model.Sitter_info;

public interface DetailService {
	
	// 시터 상세페이지 
	public Sitter_info getSitterItem(Sitter_info input) throws Exception;

}
