package study.team.abuhae.service;

import java.util.List;

import study.team.abuhae.model.Admin_info;
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
	
	//탈퇴회원 목록
	public List<Leave_member> getLeaveList(Leave_member input) throws Exception;
		
	//탈퇴 회원 수 조회
	public int getLeaveCount(Leave_member input) throws Exception;
	
}

