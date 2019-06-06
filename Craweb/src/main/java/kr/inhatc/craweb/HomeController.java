package kr.inhatc.craweb;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		Youtube_famous youtubef = new Youtube_famous();
		Naver_famous naverf = new Naver_famous();

		model.addAttribute("youtubefTitle", youtubef.youtubefTitle);
		model.addAttribute("youtubefUrl", youtubef.youtubefUrl);
		model.addAttribute("youtubefImg", youtubef.youtubefImg);
		model.addAttribute("naverfTitle", naverf.naverfTitle);
		model.addAttribute("naverfUrl", naverf.naverfUrl);
		model.addAttribute("naverfImg", naverf.naverfImg);

		return "index";
	}

}
