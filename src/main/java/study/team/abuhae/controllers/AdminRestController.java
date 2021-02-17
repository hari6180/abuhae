package study.team.abuhae.controllers;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;


import study.team.abuhae.helper.WebHelper;
import study.team.abuhae.model.Leave_member;
import study.team.abuhae.model.Mom_info;
import study.team.abuhae.service.AdminService;

@RestController
public class AdminRestController {
	@Autowired
	WebHelper webHelper;
	@Autowired
	AdminService adminService;
	
	@RequestMapping(value = "admin/jobopening_update", method = RequestMethod.POST)
	public Map<String, Object> admin_jobopening_put(Model model,
			@RequestParam(value = "memberno") int memberno) {

		Mom_info input = new Mom_info();
		input.setMemberno(memberno);
		
		try {
			//jobopeing 수정
			adminService.updateReportMember(input);
		} catch (Exception e) {
			return webHelper.getJsonError(e.getLocalizedMessage());
		}
		
		return webHelper.getJsonData();
	}
	
	@RequestMapping(value = "admin/deletemember", method = RequestMethod.POST)
	public Map<String, Object> admin_leavemember_delete(Model model,
			@RequestParam(value = "id") String id) {

		Leave_member input = new Leave_member();
		input.setId(id);
		
		try {
			//jobopeing 수정
			adminService.deleteLeaveMember(input);
		} catch (Exception e) {
			return webHelper.getJsonError(e.getLocalizedMessage());
		}
		
		return webHelper.getJsonData();
	}
}

