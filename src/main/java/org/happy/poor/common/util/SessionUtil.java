package org.happy.poor.common.util;

import java.util.Enumeration;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

public class SessionUtil {
	
	public static Object getSession(String sessionName) {
		ServletRequestAttributes attr = (ServletRequestAttributes) RequestContextHolder.currentRequestAttributes();
		HttpSession session = attr.getRequest().getSession();	
		return session.getAttribute(sessionName);
	}
	
	
	public static String getIdBySeesion() {
		/*ServletRequestAttributes attr = (ServletRequestAttributes) RequestContextHolder.currentRequestAttributes();
		HttpSession session = attr.getRequest().getSession();
		MemberInfoVo memberInfo = (MemberInfoVo)session.getAttribute("memberInfo");	
		
		return memberInfo.getID();*/
		return null;
	}
	
	
	public static HashMap<String,String>  getInvalidSession(HttpServletRequest req ){
		  HttpSession session = req.getSession(true);
		  Enumeration sessionNames = session.getAttributeNames();
		  int index = 0;
		   while(sessionNames.hasMoreElements()) { 
			    String name = (String)sessionNames.nextElement();
			   
			    if(name.equals("account")){
			    	System.out.println("#session name : "+name);
			    	return (HashMap)session.getAttribute(name );
			    }else{
			    	return null;
			    }
		   }
		return null;

	}
	
}
