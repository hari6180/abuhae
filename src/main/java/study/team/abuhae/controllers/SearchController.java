package study.team.abuhae.controllers;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class SearchController {
	@RequestMapping(value = "/abuhae/search.do", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {

		return "search/siiter_search";
	}
}
