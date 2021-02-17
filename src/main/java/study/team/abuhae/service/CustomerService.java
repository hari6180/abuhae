package study.team.abuhae.service;

import java.util.List;

import study.team.abuhae.controllers.Cus_bbs;
import study.team.abuhae.model.Cus_category;
import study.team.abuhae.model.Cus_sub_category;

public interface CustomerService {
	/** 서브카테고리 이름 조회 */
	public List<Cus_category> getCusSubCateList(Cus_category input) throws Exception; 
	
	/** 게시글 목록 조회 */
	public List<Cus_sub_category> getCusBbslist(Cus_sub_category input) throws Exception;
}