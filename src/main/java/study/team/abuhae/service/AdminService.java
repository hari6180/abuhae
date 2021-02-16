package study.team.abuhae.service;

import study.team.abuhae.model.Admin_info;

public interface AdminService {
	//관리자 로그인 
	public Admin_info getAdminLogin(Admin_info input) throws Exception;
}
