package study.team.abuhae.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import study.team.abuhae.service.MemberService;

@Controller
public class LoginController {
	//service 객체 패턴 구현체 주입
	@Autowired
	MemberService memberService;
}
