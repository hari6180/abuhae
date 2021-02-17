package study.team.abuhae.service;



import java.util.List;

import study.team.abuhae.model.Sitter_info;

public interface DetailService {
	
	// 시터 상세페이지 
	public Sitter_info getSitterItem(Sitter_info input) throws Exception;
	
	public List<Sitter_info> getSitterList(Sitter_info input) throws Exception;
		
	public int editSitter(Sitter_info input) throws Exception;
	
	public int addSitter(Sitter_info input) throws Exception;
	

}
