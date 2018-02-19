package org.happy.poor.gallery.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.happy.poor.files.service.IFilesService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

public class GalleryController_Copy {

	private static final Logger logger = LoggerFactory.getLogger(GalleryController_Copy.class);
	
	@Autowired
	IFilesService fileServiceImpl;
	
	@RequestMapping(value = "/gallery", method = RequestMethod.GET)
	public ModelAndView gallery(HttpServletRequest req, Locale locale, Model model) {
		ModelAndView mav = new ModelAndView("gallery/gallery");
		
		List<HashMap<String, Object>> map =null;
		map = fileServiceImpl.selectAll();
		mav.addObject("galleryList", map);
		return mav;
	}
	
	/*@RequestMapping(value = "/galleryList", method = RequestMethod.GET)
	public ModelAndView galleryList(HttpServletRequest req, Locale locale, Model model) {
		
		ModelAndView mav = new ModelAndView("gallery/gallery");
		
		List<HashMap<String, Object>> map =null;
		map = fileServiceImpl.selectAll();
		
		return mav;
	}*/

	@RequestMapping(value = "/galleryListJSON", method = RequestMethod.GET)
	public @ResponseBody List<HashMap<String, Object>> galleryListJSON(HttpServletRequest req, Locale locale, Model model) {
		System.out.println("@@");
		List<HashMap<String, Object>> map =null;
		map = fileServiceImpl.selectAll();
		
		return map;
	}
	
}
