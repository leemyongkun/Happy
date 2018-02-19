package org.happy.poor.common.security;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.happy.poor.members.model.IMemberInfo;
import org.happy.poor.members.model.MemberInfoVo;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.SavedRequestAwareAuthenticationSuccessHandler;
import org.springframework.stereotype.Service;

@Service
public class SecurityAuthenticationSuccessHandler extends SavedRequestAwareAuthenticationSuccessHandler {//

	@Override
	public void onAuthenticationSuccess(
			HttpServletRequest request, 
			HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {
			
			HttpSession session = request.getSession();
			
			Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		
			
			if (auth.getPrincipal() != null && auth.getPrincipal() instanceof MemberInfoVo) {
				IMemberInfo user = (MemberInfoVo) auth.getPrincipal();
				session.setAttribute("memberInfo", user);
			}
			response.sendRedirect(request.getContextPath()+getDefaultTargetUrl());
			
			//response.isCommitted();
			//super.onAuthenticationSuccess(request, response, authentication);
	
	}

}
