package org.happy.poor;

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
public class NoteController {

	private static final Logger logger = LoggerFactory.getLogger(NoteController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 * 
	 * @param req
	 * @param locale
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/note", method = RequestMethod.GET)
	public String home(HttpServletRequest req, Locale locale, Model model) {
		System.out.println("note");
		return "note/webnote";
	}

}
