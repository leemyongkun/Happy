package org.happy.poor.travel.controller;

import java.util.HashMap;
import java.util.Locale;

import org.happy.poor.travel.service.ITravelService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TravelController {

	private static final Logger logger = LoggerFactory.getLogger(TravelController.class);
	
	@Autowired
	ITravelService travelServiceImpl;


	@RequestMapping(value = "/travel", method = RequestMethod.GET)
	public ModelAndView index(Locale locale, Model model) {
		ModelAndView mav = new ModelAndView("travel/travel");

		return mav;
	}
	

	@RequestMapping(value = "/travel/list", method = RequestMethod.GET)
	public @ResponseBody HashMap<String,Object>  travelList(
			@RequestParam(value = "limit", defaultValue = "10") int limit,
			@RequestParam(value = "offset", defaultValue = "0") int offset) 
	{
		return travelServiceImpl.list(offset,limit);
	}
	
}
