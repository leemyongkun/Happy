package org.happy.poor.story.controller;

import java.util.HashMap;
import java.util.Locale;

import org.happy.poor.story.service.IStoryService;
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
public class StroyController {

	private static final Logger logger = LoggerFactory.getLogger(StroyController.class);

	@Autowired
	IStoryService storyServiceImpl;


	@RequestMapping(value = "/story", method = RequestMethod.GET)
	public ModelAndView index(Locale locale, Model model) {
		ModelAndView mav = new ModelAndView("story/story");
		return mav;
	}
	
	
	@RequestMapping(value = "/story/list", method = RequestMethod.GET)
	public @ResponseBody HashMap<String,Object> storyList(
															@RequestParam(value = "limit", defaultValue = "10") int limit,
															@RequestParam(value = "offset", defaultValue = "0") int offset) 
	{
		
		return storyServiceImpl.list(offset,limit);
	}
	
	
	
	
	/*
	@RequestMapping(value = "/storySubmit", method = RequestMethod.POST)
	public ModelAndView index(@RequestParam String title, 
								@RequestParam String contents,
								Locale locale, Model model) {
		ModelAndView mav = new ModelAndView("story/story");
		System.out.println("title : "+title);
		System.out.println("contents : "+contents);
		
		return mav;
	}
	
	*/
	

}
