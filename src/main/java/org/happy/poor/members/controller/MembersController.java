package org.happy.poor.members.controller;

import java.util.HashMap;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.happy.poor.common.util.PagingUtil;
import org.happy.poor.home.controller.HomeController;
import org.happy.poor.members.model.MemberInfoVo;
import org.happy.poor.members.service.IMemberService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
//@RequestMapping(value = "/members/")
public class MembersController {
	private static final Logger logger = LoggerFactory.getLogger(MembersController.class);

	@Autowired
	IMemberService memberServiceImpl;

	@RequestMapping(value = "listMembers")
	public ModelAndView listMembers(@RequestParam(value = "limit", defaultValue = "0") int limit,
			@RequestParam(value = "offset", defaultValue = "10") int offset, Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		ModelAndView mav = new ModelAndView("admin/members/listMembers");

		int count = memberServiceImpl.getMemberTotalCount();
		System.out.println("count : " + count);
		mav.addObject("members", memberServiceImpl.selectAll(limit, offset));
		mav.addObject("paging", memberServiceImpl.setPageLinks(limit, count, offset, PagingUtil.DEFAULT_BUNDLE_COUNT));

		return mav;
	}

	public ModelAndView deleteMember(@RequestParam String id, Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		ModelAndView mav = new ModelAndView("redirect:listMembers");

		memberServiceImpl.deleteMemberAndAuthority(id);
		return mav;
	}

	@RequestMapping(value = "updateMemberForm")
	public ModelAndView updateMemberForm(@RequestParam String id, Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		ModelAndView mav = new ModelAndView("admin/members/registMemberForm");

		mav.addObject("member", memberServiceImpl.selectMember(id));
		mav.addObject("imagePath", "/images/memberImages");

		return mav;
	}


	@RequestMapping(value = "registMember")
	public @ResponseBody String registMember(@ModelAttribute(value = "memberInfo") MemberInfoVo memberInfoVo,Locale locale, Model model) {

		System.out.println(memberInfoVo.getThumbnail().getOriginalFilename());

		//기존 Member 삭제
		memberServiceImpl.deleteMemberAndAuthority(memberInfoVo.getID());
		memberServiceImpl.insertMember(memberInfoVo);
		//권한 등록
		memberServiceImpl.insertAuthorityForMember(memberInfoVo);

		return "ok";
	}

	
	@RequestMapping(value = "updateMemberFormJSON")
	public @ResponseBody HashMap<String,String> updateMemberFormJSON(@RequestParam String id, Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		return memberServiceImpl.selectMember(id);
	}
	
	
}
