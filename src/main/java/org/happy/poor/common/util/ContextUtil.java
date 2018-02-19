package org.happy.poor.common.util;

import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

public class ContextUtil {
	
	public static String getContextPath() {
		return ((ServletRequestAttributes) RequestContextHolder.currentRequestAttributes()).getRequest()
				.getContextPath();
	}
}
