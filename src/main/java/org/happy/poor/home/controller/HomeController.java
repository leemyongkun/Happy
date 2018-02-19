package org.happy.poor.home.controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 * 
	 * @param req
	 * @param locale
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home(HttpServletRequest req, Locale locale, Model model) {
		return "common/test";
	}

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView index(Locale locale, Model model) {
		ModelAndView mav = new ModelAndView("common/body");
		mav.addObject("pageStatus", "home");
		return mav;
	}


	@RequestMapping(value = "/testSubmit", method = RequestMethod.POST)
	public String testsubmit(@RequestParam String desc, Locale locale, Model model) {
		System.out.println("## "+desc);

		return "test/test";
	}
	
	
	@RequestMapping(value = "/summer")
	public String summer(@RequestParam String desc, Locale locale, Model model) {
		
		return "test/summer";
	}
}
