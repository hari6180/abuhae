package study.team.abuhae.controllers;

import java.util.HashMap;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import lombok.extern.slf4j.Slf4j;
import study.team.abuhae.helper.RegexHelper;
import study.team.abuhae.helper.WebHelper;
import study.team.abuhae.model.Mom_info;

@Slf4j
@RestController
public class JoinRestController {
	//헬퍼주입
	@Autowired WebHelper webHelper;
	@Autowired RegexHelper regexHelper;
	
	Mom_info mominfo = new Mom_info();
	
	@ResponseBody
	@RequestMapping(value = "/join/parent/add1_ok.do", method = RequestMethod.POST)
	public ModelAndView m_join_acage_ok(Model model,
			@RequestParam(value = "type") String type,
			@RequestParam(value = "want_act") String want_act,
			@RequestParam(value = "want_age") String want_age,
			@RequestParam(value = "kids_num") int kids_num,
			@RequestParam(value = "kids_age") String kids_age,
			@RequestParam(value = "payment") String paymentstr
			) {
		
		paymentstr = paymentstr.replace(",", "");
		int payment = Integer.parseInt(paymentstr);
		
		//저장할 값 beans에 담기
		mominfo.setType(type);
		mominfo.setWant_act(want_act);
		mominfo.setWant_age(want_age);
		mominfo.setKids_num(kids_num);
		mominfo.setKids_age(kids_age);
		mominfo.setPayment(payment);
		
		//저장된 결과 조회하기 위한 객체
		//Mom_info output = null;
		
		log.debug(mominfo.toString());
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("item", mominfo);
		
		model.addAttribute("type", type);
		model.addAttribute("want_act", want_act);
		model.addAttribute("want_age", want_age);

		
		return new ModelAndView("/join/parent/children");
		//return webHelper.getJsonData(map);
		//return "/join/parent/children";
	}
	
	@RequestMapping(value = "/join/parent/add2_ok.do", method = RequestMethod.POST)
	public ModelAndView m_join_child_ok(Model model,
			@RequestParam(value = "type") String type,
			@RequestParam(value = "want_act") String want_act,
			@RequestParam(value = "want_age") String want_age,
			@RequestParam(value = "kids_num") int kids_num,
			@RequestParam(value = "kids_age") String kids_age,
			@RequestParam(value = "payment") String paymentstr
			) {
		
		paymentstr = paymentstr.replace(",", "");
		int payment = Integer.parseInt(paymentstr);
		
		//저장할 값 beans에 담기
		mominfo.setType(type);
		mominfo.setWant_act(want_act);
		mominfo.setWant_age(want_age);
		mominfo.setKids_num(kids_num);
		mominfo.setKids_age(kids_age);
		mominfo.setPayment(payment);
		
		//저장된 결과 조회하기 위한 객체
		//Mom_info output = null;
		
		log.debug(mominfo.toString());
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("item", mominfo);
		
		model.addAttribute("type", type);
		model.addAttribute("want_act", want_act);
		model.addAttribute("want_age", want_age);
		model.addAttribute("kids_num", kids_num);
		model.addAttribute("kids_age", kids_age);
		model.addAttribute("payment", payment);

		
		return new ModelAndView("/join/parent/location");
		//return webHelper.getJsonData(map);
		//return "/join/parent/children";
	}
	
	@RequestMapping(value = "/join/parent/add3_ok.do", method = RequestMethod.POST)
	public ModelAndView m_join_loc_ok(Model model,
			@RequestParam(value = "type") String type,
			@RequestParam(value = "want_act") String want_act,
			@RequestParam(value = "want_age") String want_age,
			@RequestParam(value = "kids_num") int kids_num,
			@RequestParam(value = "kids_age") String kids_age,
			@RequestParam(value = "payment") String paymentstr,
			@RequestParam(value = "si") String si,
			@RequestParam(value = "gu") String gu,
			@RequestParam(value = "dong") String dong
			) {
		
		paymentstr = paymentstr.replace(",", "");
		int payment = Integer.parseInt(paymentstr);
		
		//저장할 값 beans에 담기
		mominfo.setType(type);
		mominfo.setWant_act(want_act);
		mominfo.setWant_age(want_age);
		mominfo.setKids_num(kids_num);
		mominfo.setKids_age(kids_age);
		mominfo.setPayment(payment);
		mominfo.setSi(si);
		mominfo.setGu(gu);
		mominfo.setDong(dong);
		
		//저장된 결과 조회하기 위한 객체
		//Mom_info output = null;
		
		log.debug(mominfo.toString());
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("item", mominfo);
		
		model.addAttribute("type", type);
		model.addAttribute("want_act", want_act);
		model.addAttribute("want_age", want_age);
		model.addAttribute("kids_num", kids_num);
		model.addAttribute("kids_age", kids_age);
		model.addAttribute("payment", payment);
		model.addAttribute("si", si);
		model.addAttribute("gu", gu);
		model.addAttribute("dong", dong);

		
		return new ModelAndView("/join/parent/schedule");
		//return webHelper.getJsonData(map);
		//return "/join/parent/children";
	}
}
