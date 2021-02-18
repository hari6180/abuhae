package study.team.abuhae.controllers;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import study.team.abuhae.helper.WebHelper;
import study.team.abuhae.model.Coupon;
import study.team.abuhae.model.Cus_bbs;
import study.team.abuhae.model.Leave_member;
import study.team.abuhae.model.Mom_info;
import study.team.abuhae.service.AdminService;
import study.team.abuhae.service.CustomerService;

@RestController
public class AdminRestController {
	@Autowired
	WebHelper webHelper;
	@Autowired
	AdminService adminService;
	@Autowired
	CustomerService customerService;
	
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
	
	@RequestMapping(value = "admin/insertcoup", method = RequestMethod.POST)
	public Map<String, Object> admin_addcoupon(Model model,
			@RequestParam(value = "memberno") int memberno) {

		Coupon input = new Coupon();
		input.setMemberno(memberno);
		
		try {
			//쿠폰 발급
			adminService.addCoupon(input);
		} catch (Exception e) {
			return webHelper.getJsonError(e.getLocalizedMessage());
		}
		
		return webHelper.getJsonData();
	}
	
	@RequestMapping(value = "/admin/delete", method = RequestMethod.DELETE)
	public Map<String, Object> delete(Model model,
			@RequestParam(value = "boardnum", defaultValue = "0") int boardno) {
		
		if (boardno == 0)                       
		{ return webHelper.getJsonWarning("삭제할 데이터를 선택하세요."); }

        
        //데이터 저장
        Cus_bbs input = new Cus_bbs();
        input.setBoardnum(boardno);

        
        try {
			adminService.deleteBoard(input);
		} catch (Exception e) {
			return webHelper.getJsonError(e.getLocalizedMessage());
		}
		
        /** 3) 결과를 확인하기 위한 JSON 출력 */
        // 확인할 대상이 삭제된 결과값만 OK로 전달
        return webHelper.getJsonData();
	}
	
	
}

