package org.happy.poor.gallery.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.happy.poor.files.service.IFilesService;
import org.happy.poor.gallery.service.IGalleryService;
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
public class GalleryController {
private static final Logger logger = LoggerFactory.getLogger(GalleryController_Copy.class);
	
	@Autowired
	IGalleryService galleryServiceImpl;
	
	@RequestMapping(value = "/gallery", method = RequestMethod.GET)
	public ModelAndView gallery(HttpServletRequest req, Locale locale, Model model) {
		ModelAndView mav = new ModelAndView("gallery/gallery");
		return mav;
	}
	

	@RequestMapping(value = "/gallery/list", method = RequestMethod.GET)
	public @ResponseBody HashMap<String,Object>  galleryListJSON(
																		@RequestParam(value = "limit", defaultValue = "100") int limit,
																		@RequestParam(value = "offset", defaultValue = "0") int offset) 
			{	
		return galleryServiceImpl.list(limit, offset);
		
	}
}
