package org.happy.poor;

import java.util.Locale;

import javax.servlet.http.HttpServletResponse;

import org.happy.poor.config.AppEnvConfig;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

/**
 * Handles requests for the application home page.
 */
@Controller
@SessionAttributes("memberInfo")
public class AuthorityController {
	private static final Logger logger = LoggerFactory.getLogger(AuthorityController.class);

	

	@Autowired
	private MessageSource messageSource;
	@Autowired
	private AppEnvConfig appEnvConfig;

	@RequestMapping(value = "/login")
	public String login(@RequestParam(value="fail", required=false)String fail,HttpServletResponse response,  Locale locale, Model model) {

		System.out.println("param.fail : " + fail);

		/*Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		System.out.println("auth.getPrincipal : " + auth.getPrincipal());

		if (auth.getPrincipal() != null && auth.getPrincipal() instanceof MemberInfoVo) {
			IMemberInfo user = (MemberInfoVo) auth.getPrincipal();

			System.out.println(user.getAuthority());
			//추가 by leem
			model.addAttribute("memberInfo", user);
		}
		
		*/

		return "login";
	}

	//, method = RequestMethod.GET
	@RequestMapping(value = "/logout")
	public ModelAndView logout(ModelAndView mav, Locale locale, Model model) {
		mav.setViewName("mybatis");

		//String appTitle = messageSource.getMessage("navbar.app-title", null, "", Locale.US);
		//logger.info(String.format("Logout from %s systems.", appTitle));

		return mav;
	}


}
