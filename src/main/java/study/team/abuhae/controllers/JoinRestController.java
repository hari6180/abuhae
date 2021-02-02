package study.team.abuhae.controllers;

import java.util.HashMap;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

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
	
	
	
	@ResponseBody
	@RequestMapping(value = "/join/parent/activity_age_ok.do", method = RequestMethod.POST)
	public Map<String, Object> m_join_acage_ok(
			@RequestParam(value = "want_act", required = false) String want_act,
			@RequestParam(value = "want_age", required = false) String want_age) {
		
		//저장할 값 beans에 담기
		Mom_info momInfo = new Mom_info();
		momInfo.setWant_act(want_act);
		momInfo.setWant_age(want_age);
		
		//저장된 결과 조회하기 위한 객체
		//Mom_info output = null;
		
		log.debug(momInfo.toString());
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("item", momInfo);

		
		return webHelper.getJsonData(map);
		//return map;
		//return "/join/parent/children";
	}
}
