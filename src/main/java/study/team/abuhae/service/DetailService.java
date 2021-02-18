package study.team.abuhae.service;



import java.util.List;

import study.team.abuhae.model.Mom_info;
import study.team.abuhae.model.Report;
import study.team.abuhae.model.Sitter_info;

public interface DetailService {
	
	// 시터 상세페이지 
	public Sitter_info getSitterItem(Sitter_info input) throws Exception;
		
	public int editSitter(Sitter_info input) throws Exception;
	
	public int addSitter(Sitter_info input) throws Exception;
	
	public Sitter_info getWantAge(Sitter_info input) throws Exception;
	
	// 맘 상세페이지 
	public Mom_info getMomItem(Mom_info input) throws Exception;
	
	// 신고페이지
	public int addReport(Report input) throws Exception;
	
	

}
