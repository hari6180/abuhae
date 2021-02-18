package study.team.abuhae.service;

import java.util.List;

import study.team.abuhae.model.Admin_info;
import study.team.abuhae.model.Coupon;
import study.team.abuhae.model.Cus_bbs;
import study.team.abuhae.model.Cus_category;
import study.team.abuhae.model.Cus_sub_category;
import study.team.abuhae.model.Leave_member;
import study.team.abuhae.model.Mom_info;
import study.team.abuhae.model.Report;

public interface AdminService {
	//관리자 로그인 
	public Admin_info getAdminLogin(Admin_info input) throws Exception;
	
	//신고회원 목록
	public List<Mom_info> getReportList(Report input) throws Exception;
	
	//신고수 조회
	public int getReportCount(Report input) throws Exception;
	
	//신고당한 회원 프로필 비공개 처리
	public int updateReportMember(Mom_info input) throws Exception;
	
	//탈퇴회원 목록
	public List<Leave_member> getLeaveList(Leave_member input) throws Exception;
		
	//탈퇴 회원 수 조회
	public int getLeaveCount(Leave_member input) throws Exception;
	
	//탈퇴 회원 삭제
	public int deleteLeaveMember(Leave_member input) throws Exception;
	
	//이용권 사용중인 회원 조회
	public List<Mom_info> getSubList(Mom_info input) throws Exception;
	
	//이용권 사용중인 회원 수 조회
	public int getSubCount(Mom_info input) throws Exception;
	
	//쿠폰 발급
	public int addCoupon(Coupon input) throws Exception;
	
	//카테고리 조회
	public List<Cus_category> getCategory() throws Exception;
	
	//서브카데고리 조회
	public List<Cus_sub_category> getSubCategory() throws Exception;
	
	//게시판 글쓰기
	public int addBoard(Cus_bbs input) throws Exception;
}

