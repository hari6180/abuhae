package study.team.abuhae.controllers;

import java.util.List;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import study.team.abuhae.model.Coupon;
import study.team.abuhae.model.Member;
import study.team.abuhae.model.Mom_info;
import study.team.abuhae.service.BuyService;

@Controller
public class BuyController {

	@Autowired
	BuyService buyService;

	// 이용권 페이지
	@RequestMapping(value = "/buy/buy.do", method = RequestMethod.GET)
	public String buy(Model model) {

		return "/buy/buy";
	}

	// 맘 이용권 페이지
	@RequestMapping(value = "/buy/mom_ticket.do", method = RequestMethod.GET)
	public String mom_ticket(Model model) {

		return "/buy/mom_ticket";
	}

	// 시터 이용권 페이지
	@RequestMapping(value = "/buy/sitter_ticket.do", method = RequestMethod.GET)
	public String sitter_ticket(Model model) {

		return "/buy/sitter_ticket";
	}

	// 이용권 구매 페이지
	@RequestMapping(value = "/buy/receipt.do", method = RequestMethod.GET)
	public String receipt(Model model, HttpServletResponse response,
			@RequestParam(value = "tktype", required = false, defaultValue = "3") char tktype,
			@RequestParam(value = "memberno", required = false, defaultValue = "0") int memberno) {

		// 로그인 세션 객체를 받아와서 Mom_info의 memberno 조회..

		// 조회할 값을 Beans에 담는다.
		Mom_info input = new Mom_info();
		input.setMemberno(memberno);

		/** 쿠폰 목록 조회하기 */
		// 조회 결과를 저장할 객체 선언
		List<Coupon> cpout = null;
		// 조회할 값을 Beans에 담는다.
		Coupon cp = new Coupon();
		cp.setMemberno(input.getMemberno());

		try {
			// 데이터 조회 --> 해당 멤버에게 부여된 쿠폰 리스트 조회
			cpout = buyService.findCoupon(cp);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		// View에 추가
		model.addAttribute("cpout", cpout);

		// 저장할 값들을 Beans에 담는다.
		Mom_info output = new Mom_info();
		output.setTicket_type(tktype);
		output.setTicket_price("30000");
		output.setMemberno(memberno);
		
		try {
			buyService.newBuy(output);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "/buy/receipt";
	}

}
